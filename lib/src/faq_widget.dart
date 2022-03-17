import 'package:flutter/material.dart';
import 'package:list_expandable/list_expandable_widget.dart';

class faqList extends StatefulWidget {
  final List<Map<String, dynamic>> data;
  faqList({Key key, this.title, this.data}) : super(key: key);
  final String title;
  @override
  _faqListState createState() => _faqListState();
}

class _faqListState extends State<faqList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          Column(
            children: widget.data.map((group) {
              int index = widget.data.indexOf(group);
              return ListExpandableWidget(
                isExpanded: index == 0,
                header: _header(group['question']),
                items: [
                  ListTile(
                    title: Text(group['answer']),
                  )
                ],
              );
            }).toList(),
          )
        ],
      ),
    );
  }

  Widget _header(String name) => Text(name,
      style: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ));
}
