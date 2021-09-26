import 'package:debbah_bank_website/home/Home.dart';
import 'package:flutter/material.dart';

class VerificationCode extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: Builder(
        builder: (context) => Column(
          children: [
            Row(), // Nav Bar
            Container(), // Msg logo
            Text('Verification Code'),
            Text('Please type the verificatuin code sent to +213 610 10 10 19'),
            Container(), // Separated fields.
            ElevatedButton(
              onPressed: () {},
              child: Text('Next'),
            ),
            RichText(
              text: TextSpan(),
            ),
          ],
        ),
      ),
    );
  }
}
