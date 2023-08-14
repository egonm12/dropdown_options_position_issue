import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  const MyForm({super.key});

  @override
  State<MyForm> createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: key,
      child: SizedBox(
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(hintText: 'Some input'),
            ),
            DropdownButton(
              items: const [
                DropdownMenuItem(value: 1, child: Text('Option 1')),
                DropdownMenuItem(value: 2, child: Text('Option 2')),
                DropdownMenuItem(value: 3, child: Text('Option 3')),
                DropdownMenuItem(value: 4, child: Text('Option 4')),
              ],
              onChanged: (_) {},
              value: 1,
            ),
          ],
        ),
      ),
    );
  }
}
