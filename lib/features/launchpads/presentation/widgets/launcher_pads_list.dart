import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pagination_view/widgets/bottom_loader.dart';

import '../bloc/launchpads/launchpads_bloc.dart';
import '../bloc/launchpads/launchpads_state.dart';
import 'launchpad_item.dart';

class LaunchPadsList extends StatefulWidget {
  const LaunchPadsList({Key key}) : super(key: key);

  @override
  _LaunchPadsListState createState() => _LaunchPadsListState();
}

class _LaunchPadsListState extends State<LaunchPadsList> {
  LaunchpadsBloc _bloc;
  final _scrollController = ScrollController();
  final _scrollThreshold = 100.0;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<LaunchpadsBloc>(context);
    _scrollController.addListener(_onScroll);
    _bloc.fetchLaunchPads();
  }

  void _onScroll() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _bloc.fetchLaunchPads();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchpadsBloc, LaunchpadsState>(
        builder: (context, state) {
      if (state is LaunchpadsFailure) {
        return Center(
          child: Text('Failed to fetch Launchpads'),
        );
      } else if (state is NoLaunchpads) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.error,
                color: Colors.red,
              ),
              Text("No Launchpads Available")
            ],
          ),
        );
      } else if (state is LauchpadsSuccess) {
        if (state.launchPads.isEmpty) {
          return Center(
            child: Text('No Launchpads available'),
          );
        }
        return ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return index >= state.launchPads.length
                ? BottomLoader()
                : LaunchPadWidget(launchPad: state.launchPads[index]);
          },
          itemCount: state.hasReachedToEnd
              ? state.launchPads.length
              : state.launchPads.length + 1,
          controller: _scrollController,
        );
      } else {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 16,
              ),
              Text("Loading SpaceX LaunchPads..")
            ],
          ),
        );
      }
    });
  }
}
