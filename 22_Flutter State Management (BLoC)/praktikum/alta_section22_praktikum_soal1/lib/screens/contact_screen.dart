import 'dart:io';

import 'package:alta_section22_praktikum_soal1/bloc/contact_bloc.dart';
import 'package:alta_section22_praktikum_soal1/screens/contact_item_screen.dart';
import 'package:alta_section22_praktikum_soal1/screens/empty_contact_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  // image picker variable
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
    context.read<ContactBloc>().add(ContactEventPic(image));
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Contact",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
      ),
      body: buildContactScreen(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ContactItemScreen(),
            ),
          );
        },
        backgroundColor: darkpink,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget buildContactScreen() {
    return BlocBuilder<ContactBloc, ContactState>(
      builder: (context, state) {
        if (state.name.isNotEmpty) {
          return Column(
            children: [
              const SizedBox(
                height: 83,
              ),
              Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    35,
                  ),
                ),
                child: ListTile(
                  leading: GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) => buildImagePicker(),
                      );
                    },
                    child: Container(
                      child: state.pic != null
                          ? CircleAvatar(
                              backgroundImage: FileImage(state.pic!),
                            )
                          : const CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/images/5.png"),
                            ),
                    ),
                  ),
                  title: Text(
                    state.name,
                    style: const TextStyle(fontSize: 18),
                  ),
                  subtitle: Text(
                    state.num,
                    style: const TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          );
        } else {
          return const EmptyContactScreen();
        }
      },
    );
  }

  Widget buildImagePicker() {
    return Wrap(
      children: [
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Change photo profile",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        textStyle: const TextStyle(fontSize: 14)),
                    onPressed: () async {
                      await getImage();
                    },
                    child: const Text(
                      "Choose a file",
                      style: TextStyle(color: Colors.black),
                    )),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
