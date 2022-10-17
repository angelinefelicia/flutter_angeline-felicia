import 'package:alta_section27_praktikum/model/contact_model.dart';
import 'package:alta_section27_praktikum/screen/contact/contact_view_model.dart';
import 'package:alta_section27_praktikum/component/drawer_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Color lightpink = const Color.fromARGB(255, 255, 236, 235);
Color pink = const Color.fromARGB(255, 255, 200, 198);
Color darkpink = const Color.fromARGB(255, 255, 171, 168);

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<ContactViewModel>(context, listen: false);
      await viewModel.getAllContacts();
    });
  }

  @override
  Widget build(BuildContext context) {
    ContactViewModel viewModel = Provider.of<ContactViewModel>(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: lightpink,
      appBar: AppBar(
        title: const Text(
          "Contacts",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
        centerTitle: true,
        backgroundColor: darkpink,
        elevation: 0,
      ),
      drawer: const DrawerItem(),
      body: body(viewModel),
    );
  }

  Widget body(ContactViewModel viewModel) {
    final isLoading = viewModel.state == ContactViewState.loading;
    final isError = viewModel.state == ContactViewState.error;

    if (isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    if (isError) {
      return const Center(
        child: Text("No data found!"),
      );
    }

    return listView(viewModel);
  }

  Widget listView(ContactViewModel viewModel) {
    return ListView.builder(
      itemCount: viewModel.contacts.length,
      itemBuilder: (context, index) {
        final contact = viewModel.contacts[index];
        return contactItemCard(contact);
      },
    );
  }

  Widget contactItemCard(Contact contact) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        left: 15,
        right: 15,
      ),
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      child: ListTile(
        title: Text(
          contact.name,
          style: const TextStyle(fontSize: 18),
        ),
        subtitle: Text(
          contact.phone,
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
