import 'package:alta_weeklytask3_praktikum/main.dart';
import 'package:alta_weeklytask3_praktikum/model/contactus_model.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/appbar.dart';
import 'package:alta_weeklytask3_praktikum/screen/component/drawer.dart';
import 'package:alta_weeklytask3_praktikum/screen/view_model/contactus_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

class DataUserScreen extends StatelessWidget {
  const DataUserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      appBar: appbar(),
      drawer: const DrawerItem(),
      body: Consumer<ContactUsViewModel>(
        builder: (context, ContactUsViewModel data, child) {
          return ListView.builder(
              itemCount: data.contactusModels.length,
              itemBuilder: (context, index) {
                return UserDataCard(data.contactusModels[index]);
              });
        },
      ),
    );
  }
}

class UserDataCard extends StatelessWidget {
  const UserDataCard(this.data, {Key? key}) : super(key: key);
  final ContactusModel data;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.only(
          top: 10,
          left: 10,
          right: 10,
        ),
        padding: const EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          border: Border.all(style: BorderStyle.none),
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Name: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  TextSpan(
                    text: data.name,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(
                    text: 'Email: ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),
                  ),
                  TextSpan(
                    text: data.email,
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              "Message: ",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.brown,
              ),
            ),
            Text(
              data.message,
              style: const TextStyle(
                fontStyle: FontStyle.italic,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
