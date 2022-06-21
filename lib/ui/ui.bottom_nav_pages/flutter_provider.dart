import 'dart:developer';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:e_commerce/business-logic/counter.dart';

class flutterprovider extends StatelessWidget {
  const flutterprovider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _counter = Provider.of<Counter>(context,listen: true);

    return Scaffold(
      body: SafeArea(
          child: Column(
            children: [
              Text(
                _counter.value.toString(),
                style: TextStyle(fontSize: 50),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      onPressed: ()=>_counter.increment(),
                      child: Text("increment"),
                  ),
                  ElevatedButton(
                    onPressed: ()=>_counter.decrement(),
                    child: Text("Decrement"),
                  ),
                ],
              ),
            ],
          ),

      ),
    );
  }
}


