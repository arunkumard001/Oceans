import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:oceans/app/modules/home/views/home_view.dart';
import 'package:oceans/app/wigets/wigets1.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    final _phoneController = TextEditingController();
    final _usernameController = TextEditingController();

    var email;
    var password;
    var phonename;
    var username;
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Image.asset(
                  "assets/LOGIN.png",
                  //width: 1000,
                  //height: Get.height * 2 / 4,
                  fit: BoxFit.contain,
                ),
                Column(
                  children: [
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(5)),
                        child: Form(
                          key: formKey,
                          child: Column(
                            children: [
                              Titletext(context, "Sign Up"),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    customTextfeild(
                                        "User name",
                                        false,
                                        TextInputAction.next,
                                        _usernameController,
                                        () {},
                                        username),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    customTextfeild(
                                        "Phone Number",
                                        false,
                                        TextInputAction.next,
                                        _phoneController,
                                        () {},
                                        phonename),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    customTextfeild(
                                        "Email",
                                        false,
                                        TextInputAction.next,
                                        _emailController,
                                        () {},
                                        email),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    customTextfeild(
                                        "Password",
                                        true,
                                        TextInputAction.done,
                                        _passwordController,
                                        () {},
                                        password),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    custombuttonlogin(
                                        context, "Sign Up", () {}),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    redirectwidget(
                                        "Don't have account?", 'LOG IN', () {
                                      Get.to(HomeView());
                                    })
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
