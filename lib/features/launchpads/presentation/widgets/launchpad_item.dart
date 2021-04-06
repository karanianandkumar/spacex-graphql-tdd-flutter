import 'package:flutter/material.dart';

import '../../domain/entities/launchpad.dart';
import '../pages/launchpad_details.dart';

class LaunchPadWidget extends StatelessWidget {
  final LaunchPad launchPad;

  const LaunchPadWidget({Key key, @required this.launchPad}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return LaunchPadDetails(
                  launchpadID: launchPad.id,
                  launchpadName: launchPad.name,
                );
              }),
            ),
        child: Card(
            elevation: 4,
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    launchPad.name,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.location_on, color: Colors.green.shade400),
                      Text(launchPad.location.name),
                    ],
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Attempted Launchs: ${launchPad.attemptedLaunches}"),
                      Text(
                          "Successful Launchs: ${launchPad.successfulLaunches}"),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(launchPad.details),
                ],
              ),
            )));
  }
}
