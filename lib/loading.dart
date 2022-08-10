import 'dart:async';
import 'package:flutter/material.dart';
import 'recommend.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<LoadingWidget> {

  @override
  void initState() {
    Timer(Duration(milliseconds: 1000), () {
      Navigator.push(context, MaterialPageRoute(
          builder: (context) => RecommendWidget()
      )
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'SMART RECOMMEND',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromRGBO(75, 57, 239, 1),
        ),
        body: Center(
          child: CircularProgressIndicator(),
        )
    );
  }
}

