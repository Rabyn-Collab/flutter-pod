import 'package:flutter/material.dart';


class TodoPage extends StatelessWidget {
   TodoPage({super.key});

  final todoController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: Text('Todo Notifier'),
          ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              TextFormField(
                controller: todoController,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  hintText: 'add some todo',
                  border: OutlineInputBorder(),
                ),
                onFieldSubmitted: (val){
                    if(val.isEmpty){
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          duration: Duration(seconds: 1),
                            content: Text('please provide todo task'))
                    );
                    }else{
                      todoController.clear();
                    }

                },
              ),
            ],
          ),
        )
    );
  }
}
