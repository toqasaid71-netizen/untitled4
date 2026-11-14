import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});
  
  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counter = 0; 
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body: Center(
        child: Container(
          height: 100,
          color: Colors.cyan,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
              onTap: (){
                setState(() {
                  if(counter>0){
                    counter--;
                  }
                });
              },
                child: CircleAvatar(child: Icon(Icons.remove),),
          ),
              Text('$counter',
              style: TextStyle(fontSize: 20),
              ),
              GestureDetector(
                onTap: (){
                  setState(() {
                    counter++;
                  });
                  
                },
                child: CircleAvatar(child: Icon(Icons.add),),
              )
              ],
          ),
        ),
      ),
    );
  }
}
