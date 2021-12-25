// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:beamer/beamer.dart';

class NotFoundPage extends StatelessWidget {

  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.beamingHistory.reversed.toList()[1].state;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Page Not Found',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              child: Text(
                'Back to ${state.routeInformation.location}',
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              onPressed: () {
                context.beamBack();
              },
            )
          ],
        ),
      ),
    );
  }
}
