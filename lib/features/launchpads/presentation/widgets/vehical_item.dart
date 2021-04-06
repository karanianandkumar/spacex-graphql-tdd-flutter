import 'package:flutter/material.dart';

import '../../domain/entities/vehical.dart';

class VehicalWidget extends StatelessWidget {
  final Vehical vehical;

  const VehicalWidget({Key key, @required this.vehical}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              vehical.name,
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
                Icon(Icons.location_city, color: Colors.blueGrey.shade400),
                Text(vehical.country),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Text("Succss Rate: ${vehical.successRatePercent} %"),
            SizedBox(
              height: 16,
            ),
            Text(vehical.description),
          ],
        ),
      ),
    );
  }
}
