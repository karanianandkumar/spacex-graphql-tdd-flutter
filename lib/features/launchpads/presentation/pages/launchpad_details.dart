import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:leanix_task/core/injection/injection.dart';
import 'package:leanix_task/features/launchpads/domain/entities/vehical.dart';
import 'package:leanix_task/features/launchpads/presentation/bloc/vehicals/vehicals_bloc.dart';
import 'package:leanix_task/features/launchpads/presentation/bloc/vehicals/vehicals_state.dart';

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
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}

class VehicalWidget extends StatelessWidget {
  final Vehical vehical;

  const VehicalWidget({Key key, @required this.vehical}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        '${vehical.id}',
        style: TextStyle(fontSize: 10.0),
      ),
      title: Text(vehical.name),
      isThreeLine: true,
      subtitle: Text(vehical.country),
      dense: true,
    );
  }
}
