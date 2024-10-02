import 'package:flutter/material.dart';
import 'package:pertemuan4/widget/text_field.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TextEditingController username = TextEditingController();
  // TextEditingController password = TextEditingController();
  TextEditingController nama = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController umur = TextEditingController();
  String? jenisKelamin;
  bool hobi = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // const SizedBox(height: 20),
            // CustomTextField(
            //     Controller: username,
            //     label: "Username",
            //     hint: "Masukkan Username"),
            // const SizedBox(height: 20),
            // CustomTextField(
            //     Controller: password,
            //     label: "Password",
            //     hint: "Masukkan Password"),
            // const SizedBox(height: 20),

            const SizedBox(height: 20),
            CustomTextField(
                Controller: nama, label: "Nama", hint: "Masukkan Nama"),
            const SizedBox(height: 20),
            CustomTextField(
                Controller: email, label: "Email", hint: "Masukkan Email"),
            const SizedBox(height: 20),
            CustomTextField(
                Controller: umur, label: "Umur", hint: "Masukkan Umur"),
            const SizedBox(height: 20),
            const Text('Jenis Kelamin'),
            const SizedBox(height: 5),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Pria"),
              leading: Radio<String>(
                  value: "Pria",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Wanita"),
              leading: Radio<String>(
                  value: "Wanita",
                  groupValue: jenisKelamin,
                  onChanged: (value) {
                    setState(() {
                      jenisKelamin = value;
                    });
                  }),
            ),

            const SizedBox(height: 20),
            const Text('Hobi'),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Belajar"),
              leading: Checkbox(
                  value: hobi,
                  onChanged: (bool? value) {
                    setState(() {
                      if (hobi) {
                        hobiString = "Belajar";
                      }
                      hobi = value ?? false;
                    });
                  }),
            ),
            ListTile(
              contentPadding: const EdgeInsets.only(left: 50),
              title: const Text("Bermain"),
              leading: Checkbox(
                  value: hobi,
                  onChanged: (value) {
                    setState(() {
                      hobi = value ?? false;
                    });
                  }),
            ),
            const SizedBox(height: 5),
            const SizedBox(height: 20),
            SizedBox(
              width: 200,
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      // print(
                      //     "username: ${username.text}\n password: ${password.text}");
                      // username.clear();
                      // password.clear();
                    });
                  },
                  style: ElevatedButton.styleFrom(foregroundColor: Colors.blue),
                  child: const Text(
                    'Submit',
                    style: TextStyle(color: Colors.black),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
