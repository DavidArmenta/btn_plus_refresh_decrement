import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int clickCounter = 0;
  String clicks = "clicks";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mi Contador TecNM"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                clickCounter=0;
              });
            },
          icon: const Icon(Icons.refresh_sharp),
        )],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$clickCounter",
              style: const TextStyle(fontSize: 150, fontWeight: FontWeight.w200),
            ),
            Text(
              clicks,
              style: const TextStyle(fontSize: 50),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children:[ 
          FloatingActionButton
        (
          onPressed: () {
            setState(() {
              clickCounter=0;
            });
          },
          child: const Icon(Icons.refresh_sharp),
        ),
        FloatingActionButton
        (
          onPressed: () {
            setState(() {
              if (clickCounter==1 || clickCounter ==-1)  {
                clicks = 'click';
                
              }else{
                clicks = 'clicks';
                
              }
              clickCounter++;
            });
          },
          child: const Icon(Icons.plus_one),
        ),
        FloatingActionButton
        (
          onPressed: () {
            setState(() {
              if (clickCounter==1 || clickCounter ==-1) {
                clicks = 'click';
                
              }else{
                clicks = 'clicks';
                
              }
              if (clickCounter<1) {
                clickCounter=0;
                
              }else{
                clickCounter--;}
              
            });
          },
          child: const Icon(Icons.exposure_minus_1_sharp),
        )],
      ),
    );
  }

  Widget btnPlusOne({required void Function() onPressed, required Icon icono}) 
  => FloatingActionButton(  onPressed: onPressed,
                            child: icono);
}