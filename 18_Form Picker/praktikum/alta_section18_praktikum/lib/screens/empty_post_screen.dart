import 'package:flutter/cupertino.dart';

class EmptyPostScreen extends StatelessWidget {
  const EmptyPostScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage("assets/images/2.png"),
            height: 200,
          ),
          Text(
            "Kosong",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
