import 'package:flutter/material.dart';
import 'package:logscreencat/avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Icon(Icons.arrow_back),
          actions: const [Icon(Icons.settings)],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Avatar(),
            // SizedBox(
            //   height: 20,
            // ),
            Form(
              key: formkey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Your Email',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    myform(
                      hinttext: "xxx@gail.com",
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    const Text('Phone Numer',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    myform(hinttext: '+93123135'),
                    SizedBox(
                      height: 20,
                    ),
                    const Text('website',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    myform(hinttext: 'www.gfx.com'),
                    SizedBox(
                      height: 20,
                    ),
                    const Text('password',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    myform(hinttext: 'xxx@gmail.com'),
                    SizedBox(
                      height: 30,
                    ),
                    SizedBox(
                      height: 60,
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          if (formkey.currentState!.validate()) {}
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.orange,
                              fontWeight: FontWeight.bold),
                        ),
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(width: 1.0, color: Colors.orange),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 55,
                    ),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}

TextFormField myform({required String? hinttext}) {
  return TextFormField(
    validator: (value) {
      if (value!.isEmpty) {
        return "This field is requird ";
      }
      return null;
    },
    decoration: InputDecoration(
      border: OutlineInputBorder(),
      hintText: hinttext,
      hintStyle: TextStyle(color: Colors.grey),
    ),
  );
}
