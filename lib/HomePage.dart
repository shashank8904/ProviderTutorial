import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/Second.dart';
import 'package:provider_tutorial/list_provider.dart';
import 'package:provider_tutorial/main.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (BuildContext context, numbersProviderModel, child) => Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            numbersProviderModel.add();
          },
          backgroundColor: Colors.blue,
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Container(
          child: Column(
            children: [
              Text(
                numbersProviderModel.numbers.length.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    }),
              ),
              TextButton(onPressed: (){
                numbersProviderModel.sub();
              }, child: Text("Sub")),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const Second()));
                  },
                  child: Text('Second')),
            ],
          ),
        ),
      ),
    );
  }
}
