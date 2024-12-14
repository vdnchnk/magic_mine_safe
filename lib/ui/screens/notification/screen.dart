import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: Icon(Icons.notifications_active),
          title: Text('Поруч з вами знайдено небезпечний обʼєкт'),
          tileColor: Theme.of(context).colorScheme.errorContainer,
          trailing: Text('18:40'),
        ),
        ListTile(
          leading: Icon(Icons.check),
          title: Text('Ваша заявка №323422233 опрацьована, дякуємо за співпрацю'),
          trailing: Text('16:55'),
        ),
        ListTile(
          leading: Icon(Icons.timer),
          title: Text('Ваша заявка №323422233 прийнята, очікуйте опрацювання'),
          trailing: Text('16:40'),
        ),
      ],
    );
  }
}
