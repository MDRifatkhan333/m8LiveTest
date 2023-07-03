import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Contact> contacts = [
    const Contact(
      name: "Rifat",
      email: "rakibulhasanrifat2031@gmail.com",
      phone: "01700000000",
    ),
    const Contact(
      name: "Rakibul Hasan Rifat",
      email: "rakibulhasanrifat2031@gmail.com",
      phone: "01700000000",
    ),
    const Contact(
      name: "Hasan ",
      email: "rakibulhasanrifat2031@gmail.com",
      phone: "01700000000",
    ),
    const Contact(
      name: "Rifat Hasan",
      email: "rakibulhasanrifat2031@gmail.com",
      phone: "01700000000",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Contact List')),
        ),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      const BoxDecoration(border: Border(bottom: BorderSide())),
                  child: ListTile(
                    title: Text(contacts[index].name),
                    onTap: () {
                      _showContactDetails(context, contacts[index]);
                    },
                  ),
                ),
              );
            }));
  }
}

class Contact {
  final String name;
  final String email;
  final String phone;

  const Contact({
    required this.name,
    required this.email,
    required this.phone,
  });
}

void _showContactDetails(BuildContext context, Contact contact) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Contact Details',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            Text('Email: ${contact.name}'),
            const SizedBox(height: 8),
            Text('Email: ${contact.email}'),
            const SizedBox(height: 8),
            Text('Phone Number: ${contact.phone}'),
          ],
        ),
      );
    },
  );
}
