import 'package:flutter/material.dart';
import 'package:get/get_utils/src/extensions/context_extensions.dart';

Container Titletext(BuildContext context, String titleText) {
  return Container(
      height: 40,
      width: context.width,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.circular(6),
      ),
      child: Center(
          child: Text(
        titleText,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 15,
        ),
      )));
}

Container custombuttonlogin(BuildContext context, String login, tap) {
  return Container(
    height: 40,
    width: context.width,
    decoration: BoxDecoration(
      color: Colors.amber,
      borderRadius: BorderRadius.circular(6),
    ),
    child: TextButton(
      onPressed: tap,
      child: Text(
        login,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 15,
        ),
      ),
    ),
  );
}

Row redirectwidget(String textvalue, String Buttonname, tap) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(textvalue),
      TextButton(
        onPressed: tap,
        child: Text(Buttonname),
      ),
    ],
  );
}

TextFormField customTextfeild(String hint, bool hide, LTextInputAction,
    TextEditingController key1, _valid, value) {
  return TextFormField(
    validator: _valid,
    controller: key1,
    onSaved: (element) => value <= element,
    obscureText: hide,
    textInputAction: LTextInputAction,
    decoration: InputDecoration(
      fillColor: Colors.brown,
      border: OutlineInputBorder(),
      hintText: hint,
    ),
  );
}
