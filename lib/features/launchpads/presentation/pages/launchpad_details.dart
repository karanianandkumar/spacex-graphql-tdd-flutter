import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/injection/injection.dart';
import '../bloc/vehicals/vehicals_bloc.dart';
import '../bloc/vehicals/vehicals_state.dart';
import '../widgets/vehical_item.dart';

class LaunchPadDetails extends StatefulWidget {
  final String launchpadID;
  final String launchpadName;
  const LaunchPadDetails(
      {@required this.launchpadID, @required this.launchpadName});

  @override
  _LaunchPadDetailsState createState() => _LaunchPadDetailsState();
}

class _LaunchPadDetailsState extends State<LaunchPadDetails> {
  VehicalsBloc _bloc;
  @override
  void initState() {
    super.initState();
    _bloc = getIt<VehicalsBloc>();
    _bloc.fetchVehicals(widget.launchpadID);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.launchpadName),
      ),
      body: Center(
        child: BlocBuilder<VehicalsBloc, VehicalsState>(
          bloc: _bloc, // provide the local bloc instance
          builder: (context, state) {
            if (state is VehicalsLoadingFailed) {
              return Center(
                child: Text('Failed to fetch Vehicals'),
              );
            } else if (state is NoVehicals) {
              return Center(
                child: Text('No Vehicals launched from this Launchpad'),
              );
            } else if (state is VehicalsSuccess) {
              return ListView.builder(
                  itemBuilder: (BuildContext context, int index) =>
                      VehicalWidget(vehical: state.vehicals[index]),
                  itemCount: state.vehicals.length);
            } else {
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(),
                    SizedBox(
                      height: 16,
                    ),
                    Text("Loading Vehicals Information..")
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
