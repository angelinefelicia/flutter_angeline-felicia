import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class EmptyContactScreen extends StatelessWidget {
  const EmptyContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Image(
            image: AssetImage("assets/1.png"),
            height: 250,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Belum ada Contact",
            style: TextStyle(fontSize: 30),
          ),
        ],
      ),
    );
  }
}
