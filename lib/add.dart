import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo/models/task.dart';

class Add extends StatelessWidget {
  TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var task = Provider.of<TaskModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('TODO'),
      ),
      body: Center(child:
        Padding(
          padding: EdgeInsets.all(30),
          child:
            Column(children: <Widget>[
              Expanded(child: Container()),
              TextField(
                controller: _controller,
              ),
              SizedBox(height: 50,),
              RaisedButton(
                  child: Text('ADD'),
                  onPressed: () {
                    task.add(_controller.text);
                    Navigator.of(context).pop(true);
                  }
              ),
              Expanded(child: Container()),
            ])
        ),
      ),
    );
  }
}