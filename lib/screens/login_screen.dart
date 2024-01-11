import 'package:flutter/material.dart';

class _LoginScreenState extends StatefulWidget {
  const _LoginScreenState({super.key});

  @override
  State<_LoginScreenState> createState() => __LoginScreenStateState();
}

class __LoginScreenStateState extends State<_LoginScreenState> {
  TextEditingController _emailcontroler = TextEditingController();
  TextEditingController _passswordcontroler = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
  }

  void dispose() {
    _emailcontroler.dispose();
    _passswordcontroler.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            TextFormField(
                controller: _emailcontroler,
                validator: (value) =>
                    value!.isEmpty ? 'please enter valid email' : null),
          ],
        ),
      ),
    );
  }
}
