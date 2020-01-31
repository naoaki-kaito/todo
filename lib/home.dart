import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODO'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed("/add");
            },
          ),
        ],
      ),
      body:
        Consumer<TaskModel>(
          builder: (context, task, child) =>
            ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return _Item(taskStr: task.items[index], index: index);
              },
              itemCount: task.items.length
            ),
        )
    );
  }
}

class _Item extends StatelessWidget {
  final String taskStr;
  final int index;

  const _Item({Key key,
    @required this.taskStr,
    @required this.index}
  ): super(key: key);

  @override
  Widget build(BuildContext context) {
    var task = Provider.of<TaskModel>(context);
    return Padding(
      padding: EdgeInsets.all(10),
      child: Card(
        child: ListTile(
          title: Text(this.taskStr),
          dense: true,
          onTap: () {
            task.delete(this.index);
          }
        ),
      )
    );
  }
}