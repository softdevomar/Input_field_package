import 'package:flutter/material.dart';
import 'package:input_field/input_field.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Text Field'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custom_Text_Field(
                controller: controller,
                hintText: "Hint Text",
                borderSide: true,
                borderRadius:2,
              ),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custom_Text_Field(
                controller: controller1,
                hintText: "This is a readonly field",
                borderSide: true,
                borderRadius:2,
                readOnly: true,
                onTapSuffixIcon: () {
                print("Tap to SuffixIcon");
                },
                suffixIconData: Icons.search,
              ),
            ),
            SizedBox(height: 2,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Custom_Text_Field(
                controller: controller2,
                // labelText: 'Label Text',
                hintText: 'Hint Text',
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onFieldSubmit: (value) {
                  print('Submitted: $value');
                },
                onChanged: (value) {
                  print('Changed: $value');
                },
                onTap: () {
                  print('Tapped');
                },
                onTapSuffixIcon: () {
                  print('Tapped suffix icon');
                },
                onTapPrefixIcon: () {
                  print('Tapped prefix icon');
                },
                 suffixIconData: Icons.search,
                 prefixIconData: Icons.person,
                 focusNode: FocusNode(),
                 backgroundColor: Colors.grey[200],
                 hintTextColor: Colors.grey,
                cursorColor: Colors.blue,
                 textColor: Colors.black,
                 prefixIconColor: Colors.red,
                 sufixIconColor: Colors.blue,
                 inputType: TextInputType.emailAddress,
                 obscureText: false,
                 borderRadius: 10,
                 borderWidth: 1,
                 borderColor: Colors.grey,
                 borderSide: true,
                 errorText: 'Error message',
                 inputFormatters: [],
                 maxLines: 1,
                 textAlign: TextAlign.center,
                 maxLength: 20,
              ),

            ),
          ],
        ),
      ),
    );
  }
}

