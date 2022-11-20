import 'package:flutter/material.dart';

class UserControl extends StatelessWidget {
  const UserControl({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          Card(
              child: ListTile(
                  title: Text("Nguyễn Thành Trung"),
                  subtitle: Text("B1910013"),
                  leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://i.pinimg.com/474x/79/d3/1e/79d31e406fe3d3d7322b18666184911d.jpg')),
                  trailing: Icon(Icons.logout))),
          Card(
            child: ListTile(
                title: Text("Manage Movies"),
                leading: Icon(Icons.format_list_bulleted),
                trailing: Icon(Icons.chevron_right)),
          ),
          Card(
            child: ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.notifications_active),
                trailing: Icon(Icons.chevron_right)),
          ),
          Card(
            child: ListTile(
                title: Text("Notification"),
                leading: Icon(Icons.notifications_active),
                trailing: Icon(Icons.chevron_right)),
          ),
        ],
      ),
    );
  }
}
