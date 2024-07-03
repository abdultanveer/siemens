import 'package:flutter/material.dart';

import 'demo_diff_list_items.dart';

final items = List<ListItem>.generate(
    1000,
    (item) => item % 6 == 0
        ? HeadingItem('heading $item')
        : MessageItem('sender $item', 'body $item'));

void main() => runApp(DiffListApp());

class DiffListApp extends StatelessWidget {
  const DiffListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo diff list items'),
        ),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              final myItem = items[index];
              return ListTile(
                title: myItem.buildTitle(context),
                subtitle: myItem.buildSubTitle(context),
              );
            }),
      ),
    );
  }
}
