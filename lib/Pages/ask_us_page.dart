import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AskUs extends StatelessWidget {
  const AskUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask US"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(17, 25, 54, 1),
      ),
    );
  }
}

class AskUsPage extends StatefulWidget {
  const AskUsPage({Key? key}) : super(key: key);

  @override
  _AskUsPageState createState() => _AskUsPageState();
}

class _AskUsPageState extends State<AskUsPage> {
  final controllerName = TextEditingController();
  final controllerEmail = TextEditingController();
  final controllerSubject = TextEditingController();
  final controllerMessage = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controllerName.addListener(() =>setState(() {}));
    controllerEmail.addListener(() =>setState(() {}));
    controllerSubject.addListener(() =>setState(() {}));
    controllerMessage.addListener(() =>setState(() {}));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ask Us"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            buildTextField(title: "Name", controller: controllerName),
            const SizedBox(
              height: 8,
            ),
            buildTextField(title: "Email", controller: controllerEmail),
            const SizedBox(
              height: 8,
            ),
            buildTextField(title: "Subject", controller: controllerSubject),
            const SizedBox(
              height: 8,
            ),
            buildTextField(
                title: "Message", controller: controllerMessage, maxLines: 8),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size.fromHeight(50),
                    textStyle: TextStyle(fontSize: 20)),
                child: Text("SEND"),
                onPressed: ()  {
                  print('Sending...');
                sendEmail(
                name: controllerName.text,
                email: controllerEmail.text,
                subject: controllerSubject.text,
                message: controllerMessage.text);
                setState(() {
                  controllerName.clear();
                  controllerEmail.clear();
                  controllerSubject.clear();
                  controllerMessage.clear();
                });

                })
          ],
        ),
      ),
    );
  }

  Widget buildTextField({
    required String title,
    required TextEditingController controller,
    int maxLines = 1,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 8,
        ),
        TextField(

          controller: controller,
          maxLines: maxLines,
          decoration: InputDecoration(
            labelText: title,
            suffixIcon: controller.text.isEmpty
              ? Container(width: 0,)
              : IconButton(
              icon: Icon(Icons.close, color: Color.fromRGBO(169, 54, 42, 1),),
              onPressed: ()=>controller.clear(),
            ),
            border: OutlineInputBorder(),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(169, 54, 42, 1), width: 2)
            ),
          ),
        )
      ],
    );
  }

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final serviceID = 'service_xpm448i';
    final templateID = 'template_dpx3nen';
    final userID = 'sACeLjoZ8ZnP7f3vL';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(url,
        headers: {
          'origin': 'http://localhost',
          'Content-Type': 'application/json'},
        body: json.encode({
          'service_id': serviceID,
          'template_id': templateID,
          'user_id': userID,
          'template_params': {
            'user_name': name,
            'user_email': email,
            'user_subject': subject,
            'user_message': message,
          },
        }));
    print(response.body);
  }
}
