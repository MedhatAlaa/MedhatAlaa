import 'package:flutter/material.dart';

import 'data_screen.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var genderController = TextEditingController();
  var materialController = TextEditingController();
  var genderList = [ 'Male', 'Female'];
  var materialStatusList = [ 'married', 'single','engagement','widow'];
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Form Field',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35.0,
                    ),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'email must not be empty';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  TextFormField(
                    controller: nameController,
                    keyboardType: TextInputType.text,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'name must not be empty';
                      }
                    },
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      prefixIcon: Icon(Icons.drive_file_rename_outline),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DropdownButtonFormField<String>(
                    items: genderList.map((e) =>
                        DropdownMenuItem(child: Text(e), value: e,)).toList(),
                    onChanged: (val) {},
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'gender must not be empty';
                      }
                    },
                    decoration: const InputDecoration(
                      label: Text(' Gender',style: TextStyle(
                      ),),
                      prefixIcon: Icon(Icons.transgender),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  DropdownButtonFormField<String>(
                    items: materialStatusList.map((e) =>
                        DropdownMenuItem(child: Text(e), value: e,)).toList(),
                    onChanged: (val) {},
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'materials must not be empty';
                      }
                    },
                    decoration: const InputDecoration(
                      label: Text(' Material status',style: TextStyle(
                      ),),
                      prefixIcon: Icon(Icons.subject),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                      fixedSize: MaterialStateProperty.all(const Size(
                        220.0,
                        40.0,
                      )),
                    ),
                    onPressed: () {
                      if (formKey.currentState!.validate()) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const DataScreen(),
                          ),
                        );
                      }
                    },
                    child: const Text('SUBMIT'),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
