import 'package:flutter/cupertino.dart';



abstract class ListItem{
  //context = history
   Widget buildTitle(BuildContext context);
   Widget buildSubTitle(BuildContext context);
}

class HeadingItem  implements ListItem{
  String heading;  //partition of the box

  HeadingItem(this.heading);

  @override
  Widget buildSubTitle(BuildContext context) {
   return Text(heading, style: TextStyle(fontSize: 20.0),);
  }

  @override
  Widget buildTitle(BuildContext context) => const SizedBox.shrink();

}

class MessageItem implements ListItem{
  final String sender;
  final String body;

  MessageItem(this.sender,this.body);


  @override
  Widget buildSubTitle(BuildContext context) => Text(sender);

  @override
  Widget buildTitle(BuildContext context) => Text(body);
}