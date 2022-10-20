import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '[ANGEL] Weekly Task 2',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

Color lightBrown = const Color.fromARGB(255, 189, 151, 137);
Color brown = Colors.brown;
Color white = Colors.white;

class _MyHomePageState extends State<MyHomePage> {
  final formKey = GlobalKey<FormState>();

  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  String name = '';
  String email = '';
  String message = '';

  @override
  void dispose() {
    super.dispose();
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBrown,
      appBar: AppBar(
        title: const Text("Bake Bear"),
        backgroundColor: brown,
        elevation: 0,
        centerTitle: true,
      ),
      drawer: drawerItem(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Welcome Section
            welcomeSection(),

            // Contact Us Section
            contactusSection(),
            Container(
              margin: const EdgeInsets.all(20),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    // Form Username
                    TextFormField(
                      validator: (String? value) =>
                          value == '' ? "This field is required!" : null,
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Form Email
                    TextFormField(
                      validator: (val) => val!.isEmpty || !val.contains("@")
                          ? "Enter a valid email!"
                          : null,
                      controller: _emailController,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Form Message
                    TextFormField(
                      maxLines: 8,
                      validator: (String? value) =>
                          value == '' ? "This field is required!" : null,
                      controller: _messageController,
                      decoration: const InputDecoration(
                        labelText: 'Message',
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: Icon(
                          Icons.message,
                          color: Colors.white,
                        ),
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Submit Button
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: white),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          setState(() {
                            name = _nameController.text;
                            email = _emailController.text;
                            message = _messageController.text;
                          });
                        }
                      },
                      child: const Text(
                        "SUBMIT",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    // Result Card
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Result :",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(name),
                          const SizedBox(height: 2),
                          Text(email),
                          const SizedBox(height: 2),
                          Text(message),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // About Us Section
            aboutusSection(),
          ],
        ),
      ),
    );
  }

  Widget welcomeSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(color: white),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 18),
            child: Image.asset(
              "assets/images/bear1.png",
              width: 122,
              height: 190,
            ),
          ),
          Column(
            children: const [
              Text(
                "WELCOME",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 80, 56, 48)),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 3),
              ),
              Text("This is Bake Bear."),
              Text("We provide a lot of recipes for baking."),
              Text(
                '"Follow our recipes, enjoy to bake"',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget contactusSection() {
    return Container(
      margin: const EdgeInsets.only(top: 400),
      decoration: BoxDecoration(color: white),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.only(left: 10),
            child: Image.asset(
              "assets/images/bear1.png",
              width: 122,
              height: 190,
            ),
          ),
          Column(
            children: const [
              Text(
                "CONTACT US",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 80, 56, 48)),
              ),
              Text(
                "",
                style: TextStyle(fontSize: 3),
              ),
              Text("Hello Customers,"),
              Text("Please fill the form below to get connect"),
              Text("with us and get our newest recipes."),
            ],
          ),
        ],
      ),
    );
  }

  Widget drawerItem() {
    return Drawer(
      backgroundColor: white,
      child: ListView(
        children: [
          // Drawer Banner
          Container(
            width: MediaQuery.of(context).size.width,
            height: 200,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/bear_drawer.jpg"),
                fit: BoxFit.fill,
                opacity: 400,
              ),
              color: Color.fromARGB(255, 56, 40, 33),
            ),
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.only(left: 10),
              child: const Text(
                "BAKE \n    BEAR",
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.white,
                ),
              ),
            ),
          ),

          // Drawer Button
          buttonDrawerItem("Contact Us"),
          buttonDrawerItem("About Us"),
          buttonDrawerItem("Login"),
        ],
      ),
    );
  }

  Widget buttonDrawerItem(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          onPrimary: white,
          primary: brown,
        ),
        child: Text(text),
      ),
    );
  }

  Widget aboutusSection() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 50),
      height: 300,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bear_au2.jpg"),
          fit: BoxFit.fill,
          opacity: 350,
        ),
        color: Colors.white,
      ),
      alignment: Alignment.topCenter,
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            const Text(
              "ABOUT US",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 80, 56, 48),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                listItemCard("icon1.png", "RECIPES",
                    "Look and Try our baking recipes from all around the world. We only provide best baking recipes. Don't afraid to fail at baking with our recipes."),
                listItemCard("icon2.png", "CHALLENGE",
                    "Feel confident with your own recipe? Join our baking recipe challenge and win to get your chance to publish your own recipes at Bake Bear."),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget listItemCard(String image, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 200,
      width: 180,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListView(
        children: [
          Image.asset(
            "assets/images/$image",
            height: 65,
          ),
          const SizedBox(height: 8),
          Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 146, 86, 66),
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
