import 'package:flutter/material.dart';

class AppDialogs {

  static void showLoadingDialog(BuildContext context) {
    // Implementation for showing a loading dialog
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              CircularProgressIndicator(),
            ],
          ),
        );
      },
      barrierColor: Colors.black26,
    );
  }
}