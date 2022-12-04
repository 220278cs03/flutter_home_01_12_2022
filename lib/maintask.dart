import 'package:flutter/material.dart';

import 'Payment.dart';

class MainTask extends StatelessWidget {
  const MainTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(),
      body:  Center(
        child: ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return Payment();
                  });
            },
            child: const Text("Button")),
      ),
    ));
  }
}
