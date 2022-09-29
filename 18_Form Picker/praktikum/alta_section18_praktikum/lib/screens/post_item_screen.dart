import 'dart:io';

import 'package:alta_section18_praktikum/screens/post_screen.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:image_picker/image_picker.dart';

import '../models/post_model.dart';

class PostItemScreen extends StatefulWidget {
  const PostItemScreen({Key? key, required this.onCreate}) : super(key: key);
  final Function(PostModel) onCreate;

  @override
  State<PostItemScreen> createState() => _PostItemScreenState();
}

class _PostItemScreenState extends State<PostItemScreen> {
  // form key
  final formKey = GlobalKey<FormState>();

  // caption variable
  final _postCaptController = TextEditingController();
  String _postCapt = '';

  @override
  void initState() {
    super.initState();
    _postCaptController.addListener(() {
      setState(() {
        _postCapt = _postCaptController.text;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _postCaptController.dispose();
  }

  // date picker variable
  DateTime _dueDate = DateTime.now();
  final currentDate = DateTime.now();

  // color picker variable
  Color _currentColor = Colors.white;

  // image picker variable
  File? image;

  Future getImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? imagePicked =
        await picker.pickImage(source: ImageSource.gallery);
    image = File(imagePicked!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text("Create Post", style: TextStyle(fontSize: 20)),
        backgroundColor: darkpink,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            border: Border.all(style: BorderStyle.none),
          ),
          child: Form(
              key: formKey,
              child: Column(
                children: [
                  buildImagePicker(),
                  buildDatePicker(context),
                  const SizedBox(
                    height: 19,
                  ),
                  buildColorPicker(context),
                  const SizedBox(
                    height: 19,
                  ),
                  buildCaptionField(),
                  const SizedBox(
                    height: 19,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: darkpink,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          final postItem = PostModel(
                            caption: _postCaptController.text,
                            date: _dueDate,
                            color: _currentColor,
                            image: image,
                          );
                          widget.onCreate(postItem);
                        }
                      },
                      child: const Text("SAVE")),
                ],
              )),
        ),
      ),
    );
  }

  Widget buildDatePicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Publish At",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () async {
                final selectDate = await showDatePicker(
                    context: context,
                    initialDate: currentDate,
                    firstDate: DateTime(currentDate.year - 30),
                    lastDate: DateTime(currentDate.year + 10));
                setState(() {
                  if (selectDate != null) {
                    _dueDate = selectDate;
                  }
                });
              },
              child: const Text("Select"),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.all(0),
          padding: const EdgeInsets.all(10),
          width: double.infinity,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5)),
          child: Text(
            DateFormat("dd/MM/yyyy").format(_dueDate),
            style: const TextStyle(fontSize: 14),
          ),
        )
      ],
    );
  }

  Widget buildColorPicker(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Color Theme",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 100,
          width: double.infinity,
          color: _currentColor,
        ),
        const SizedBox(
          height: 6,
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white)),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text(
                          "Pick a color",
                          style: TextStyle(fontSize: 20),
                        ),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: _currentColor,
                            onColorChanged: (color) {
                              setState(() {
                                _currentColor = color;
                              });
                            },
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text(
                              "Save",
                              style: TextStyle(fontSize: 16),
                            ),
                          )
                        ],
                      );
                    });
              },
              child: const Text(
                "Pick a color",
                style: TextStyle(color: Colors.black, fontSize: 14),
              )),
        )
      ],
    );
  }

  Widget buildImagePicker() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Cover",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  textStyle: const TextStyle(fontSize: 14)),
              onPressed: () async {
                await getImage();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Images added")),
                );
              },
              child: const Text(
                "Choose a file",
                style: TextStyle(color: Colors.black),
              )),
        ),
      ],
    );
  }

  Widget buildCaptionField() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Caption",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(height: 10),
        SizedBox(
          child: TextFormField(
            maxLines: 5,
            validator: (String? value) =>
                value == '' ? "Please enter a caption" : null,
            controller: _postCaptController,
            decoration: const InputDecoration(
                hintText: "Enter a caption",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    borderSide: BorderSide(color: Colors.grey)),
                contentPadding: EdgeInsets.all(10),
                isDense: true),
          ),
        ),
      ],
    );
  }
}
