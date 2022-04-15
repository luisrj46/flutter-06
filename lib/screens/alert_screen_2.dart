import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class AlertScreen2 extends StatelessWidget {
  const AlertScreen2({Key? key}) : super(key: key);

  void displayDialogIOS(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text("Nos Queremos tanto que hasta nos mamamos"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok")),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusDirectional.circular(10)),
            title: const Text("Titulo"),
            content: Column(mainAxisSize: MainAxisSize.min, children: const [
              Text("Nos Queremos tanto que hasta nos mamamos"),
              SizedBox(
                height: 10,
              ),
              FlutterLogo(
                size: 100,
              )
            ]),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Ok")),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancelar")),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
              'Mostrar alerta',
              style: TextStyle(fontSize: 16),
            ),
          ),
          onPressed: () => {
            Platform.isAndroid
                ? displayDialogAndroid(context)
                : displayDialogIOS(context)
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          }),
    );
  }
}
