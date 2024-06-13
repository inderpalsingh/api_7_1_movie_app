import 'package:flutter/material.dart';

Widget topProfile() {
  return const Center(
    child: ListTile(
      leading: CircleAvatar(child: Icon(Icons.person_2)),
      title: Text('Hi, Andy'),
      subtitle: Text('only streaming movie lovers'),
      trailing: Icon(Icons.notifications_none_rounded),
    ),
  );
}
