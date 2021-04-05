import 'package:flutter/material.dart';

import '../widgets/app_bar.dart';
import '../widgets/launcher_pads_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SpaceX Launchpads"),
        centerTitle: true,
      ),
      body: LaunchPadsList(),
    );
  }
}
