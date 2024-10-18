import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/list_provider.dart';

class Second extends StatefulWidget {
  const Second({
    super.key,
  });

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  @override
  Widget build(BuildContext context) {
    return Consumer<NumbersListProvider>(
      builder: (BuildContext context, numbersProviderModel, Widget? child) =>
          Scaffold(
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
              TextButton(onPressed: (){
                numbersProviderModel.sub();
              }, child: Text("Sub")),
              Text(
                numbersProviderModel.numbers.length.toString(),
                style: TextStyle(fontSize: 30),
              ),
              Container(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: numbersProviderModel.numbers.length,
                    itemBuilder: (context, index) {
                      return Text(
                        numbersProviderModel.numbers[index].toString(),
                        style: TextStyle(fontSize: 30),
                      );
                    }),
              )
            ],

          ),
        ),
      ),
    );
  }
}
