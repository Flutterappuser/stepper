import 'package:flutter/material.dart';

class Hompage extends StatefulWidget {


  @override
  _HompageState createState() => _HompageState();
}

class _HompageState extends State<Hompage> {
  int _currentStep = 0 ;
  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        appBar:  AppBar(title: const Text("Test")),
        body: Center(
          child: Stepper(steps: const [
            Step(title: Text('Step 1'),
            content: Text('Information for step 1')),
            Step(title: Text('Step 2'),
                content: Text('Information for step 2')),
            Step(title: Text('Step 3'),
                content: Text('Information for step 3')),
          ],
          onStepTapped: (int newindex) {
            setState(() {
              _currentStep = newindex ;
            });
          },

            currentStep: _currentStep,

            onStepContinue: (){
            if (_currentStep != 2){
              setState(() {
                _currentStep +=1;
              });
            }
            },

            onStepCancel: (){
              if (_currentStep != 0){
                setState(() {
                  _currentStep -=1;
                });
              }
            },

          ),
        ),



    );
  }
}
