import 'package:blockpattern/ui/cubit/homepage_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var tfNumber = TextEditingController();
  var tfNumber2 = TextEditingController();

  int result = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bloc Pattern"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left: 50,right: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              BlocBuilder<CubitHomepage,int>( //Dinleme
                  builder: (context,result){
                return Text(
                  result.toString(),
                  style: const TextStyle(fontSize: 50),
                );
              }),

              TextField(controller: tfNumber, decoration: const InputDecoration(hintText: "number 1"),),
              TextField(controller: tfNumber2, decoration: const InputDecoration(hintText: "number 2"),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    context.read<CubitHomepage>().sumIt(tfNumber.text, tfNumber2.text);
                  }, child: const Text("Sum IT!")),
                  ElevatedButton(onPressed: (){
                    context.read<CubitHomepage>().crossIt(tfNumber.text, tfNumber2.text);
                  }, child: const Text("Cross X IT!")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
