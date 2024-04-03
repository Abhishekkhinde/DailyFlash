import 'package:flutter/material.dart';

class Task5 extends StatefulWidget {
  const Task5({super.key});
  @override
  State createState() => _Task5State();
}

class _Task5State extends State {
  TextEditingController Namecontroller = TextEditingController();
  TextEditingController PhoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: TextField(
                controller: Namecontroller,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                    hintText: "Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(
                  left: 10, right: 10, top: 20, bottom: 20),
              child: TextField(
                controller: PhoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: "Phone Number",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(300, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                setState(() {});
              },
              child: const Text("Submit"),
            ),
            Text("Name = ${Namecontroller.text} "),
            Text("Phone Number = ${PhoneNumberController.text} "),
          ],
        ),
      ),
    );
  }
}
