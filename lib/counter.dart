import 'package:flutter/material.dart';
import 'dart:async';
// class CounterApp extends StatelessWidget {
//   CounterApp({super.key});

//   int x = 10;

//   @override
//   Widget build(BuildContext context) {
//     print('Full Build');
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Counter Part With Provider')
//       ),
//   body: Column(
//     mainAxisAlignment: MainAxisAlignment.center,
//     crossAxisAlignment: CrossAxisAlignment.center,
//     children: [
//       Container(
//         child: Center(
//           child: Center(
//             child: Text(x.toString(), style: TextStyle(fontSize: 30)),
//           ),
//         ),
//       ),
//     ],
//   ),
//   floatingActionButton: FloatingActionButton(
//     onPressed: () {
//       x++ ;
//       print(x);
//     },
//     child: Icon(Icons.add),
//   ),
// );
//   }
// }
 int counter = 0;
class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
 

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      counter++;
      print(counter);
      setState(() {}); // ← Empty body, sirf rebuild signal!  setState() → UI refresh!
    });
  } // InitState will run first then SCAFFOLD

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(title: Text('Counter App With StateManagement')),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Text(DateTime.now().toString()),
            Center(
              child: Column(
                children: [
                  Center(child: Text(counter.toString(), style: TextStyle(fontSize: 50))),
                ],
              ),
            ),
          ],
      ),
    );
  }
}
