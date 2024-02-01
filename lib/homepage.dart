import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgmt_example/main_controller.dart';
import 'package:state_mgmt_example/newpage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
    print("The value of _counter is: $_counter");
  }

  final MainController mainController= Get.put(MainController());

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            // Text(
            //   "${mainController.counter}",
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            Text(
              "$_counter",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NewPage()),
              );
            }, child: const Text("Next"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: (){
        //   setState(() {
        //     mainController.incrementCounter();
        //   });
        // },
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}