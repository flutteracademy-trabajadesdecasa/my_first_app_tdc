import 'package:flutter/material.dart';
import 'package:my_first_app_tdc/bicicletas/widgets/horizontal_list.dart';

int valorCounter = 10;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          valorCounter++;
          print(valorCounter);
          setState(() {});
        },
      ),
      body: Column(
        children: [
          const HorizontalList(
            text1: 'mi texto 1',
            text2: 'mi texto 2',
          ),
          const Spacer(),
          Container(
            height: 100,
            width: double.infinity,
            color: Colors.blue,
            child: Center(
              child: Text(
                '$valorCounter',
                style: const TextStyle(
                  fontSize: 40,
                ),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
    );
  }
}
