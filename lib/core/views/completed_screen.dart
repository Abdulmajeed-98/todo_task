import 'package:flutter/material.dart';
import 'package:todo_task/core/viewmodels/todo_vm.dart';

class CompletedScreen extends StatelessWidget {
  CompletedScreen({super.key});
  TodoVM tvm = TodoVM();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(future: tvm.getTodos(), builder: (ctx,snapshot){
      if(snapshot.connectionState == ConnectionState.waiting){
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ListView.builder(
        itemCount: snapshot.data!.length,
        itemBuilder: (ctx,index){
          var todo = snapshot.data;
          return snapshot.data![index].isCompleted!? Card(
            margin: EdgeInsets.symmetric(horizontal: 10,vertical: 2.5),
            child: ListTile(
              title: Text('${todo![index].userId}'),
              subtitle: Text(todo[index].todo!),
              trailing: Icon(Icons.done),
            ),
          ):SizedBox();
        });
    });
  }
}