// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

enum Gender { male, female }
final List<String> countries = [
    'India 🇮🇳',
    'USA 🇺🇸',
    'Japan 🇯🇵',
    'Germany 🇩🇪',
  ];
class InputWidget extends StatefulWidget {
  const InputWidget({super.key});
  @override
  State<InputWidget> createState() => _InputWidgetState(); //  Class name fix
}

class _InputWidgetState extends State<InputWidget> {
  //  State class ka naam sahi
  final nameController = TextEditingController();
  bool checked = false;
  Gender selectedGender = Gender.male;
   String? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Input widgets'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center, //  Center vertically
          children: [
            //  TextField with controller
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Enter My VERSION'),
            ),
            ElevatedButton(
              onPressed: () {
                debugPrint(nameController.text); //  debugPrint use kiya
              },
              child: Text('OK'),
            ),

            Row(
              children: [
                Checkbox(
                  value: checked,
                  onChanged: (value) {
                    setState(() {
                      checked = value!; //  Null safety — ?? use kiya
                    });
                  },
                ),
                const Text('Flutter'),
              ],
            ),
            //  RadioListTile — no deprecation, clean UI
            RadioListTile<Gender>(
              title: const Text('Male'),
              value: Gender.male,
              groupValue: selectedGender,
              onChanged: (Gender? value) {
                if (value != null) {
                  setState(() {
                    selectedGender = value;
                  });
                }
              },
            ),
            RadioListTile<Gender>(
              title: const Text('Female'),
              value: Gender.female,
              groupValue: selectedGender,
              onChanged: (Gender? value) {
                if (value != null) {
                  setState(() {
                    selectedGender = value;
                  });
                }
              },
            ),
            
            //  Selected value ek baar dikhana — radio ke bahar
            Text(
              'Selected: ${selectedGender.name.toUpperCase()}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            DropdownButtonFormField<String>(
              hint: Text('Select a country'),
              value: selectedCountry,
              items: countries.map((String country)=> DropdownMenuItem<String>(
                    value: country,
                    child: Text(country),
                  )
                ).toList(),
              onChanged: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
              },
            ), 
            Text(
              'You selected: $selectedCountry',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
