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
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.amberAccent[100],
        borderRadius: BorderRadius.circular(
          20,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(contact.name),
          Text(contact.num),
          IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: const Text("Are you sure?"),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text("No"),
                          ),
                          TextButton(
                            onPressed: onPressed,
                            child: const Text("Yes"),
                          ),
                        ],
                      ));
            },
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
