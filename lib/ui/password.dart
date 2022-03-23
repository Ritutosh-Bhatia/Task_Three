import 'package:flutter/material.dart';
class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}
class _LoginFormState extends State<LoginForm> {
  bool _isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _isHidden,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        border: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey)),
        alignLabelWithHint: true,
        labelText: "Password",
        hintText: 'aaaaaaaa',
        prefixIcon: const Icon(Icons.lock_rounded),
        suffix: InkWell(
          onTap: _togglePasswordView,
          child: Icon(
            _isHidden
                ? Icons.visibility
                : Icons.visibility_off,
          ),
        ),
      ),
    );
  }
  void _togglePasswordView() {
    setState(() {
      _isHidden = !_isHidden;
    });
  }
}