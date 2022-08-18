import 'dart:async';
import 'package:flutter/material.dart';
import 'recommend.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        )
    );
  }
}

