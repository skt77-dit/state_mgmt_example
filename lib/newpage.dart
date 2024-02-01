import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_mgmt_example/main_controller.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  int counter =0;
  final MainController mainController= Get.put(MainController());
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New Page"),),
      body: Center(child: Text("The value of counter is: $counter"),),
    );
  }
}
