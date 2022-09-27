import 'package:alta_section17_praktikum/models/contact_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContactItemCard extends StatelessWidget {
  const ContactItemCard(
      {Key? key, required this.contact, required this.onPressed})
      : super(key: key);
  final ContactModel contact;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(0),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          35,
        ),
      ),
      child: ListTile(
        // leading:
        //     CircleAvatar(backgroundImage: AssetImage("assets/images/4.png")),
        title: Text(
          contact.name,
          style: TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          contact.num,
          style: TextStyle(fontSize: 14),
        ),
        trailing: IconButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => AlertDialog(
                      content: const Text("Are you sure?"),
                      actions: [
                        TextButton(
                          onPressed: onPressed,
                          child: const Text("Yes"),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("No"),
                        ),
                      ],
                    ));
          },
          icon: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
