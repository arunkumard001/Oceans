import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:oceans/app/modules/Login/views/login_view.dart';
import 'package:oceans/app/wigets/wigets1.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // AuthProvider auth = Provider.of<AuthProvider>(context);
    var _username;
    var _password;
    final _emailController = TextEditingController();
    final _passwordController = TextEditingController();
    return Scaffold(
        // backgroundColor: Colors.white24,
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
                SizedBox(height: 10),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white12,
                    ),
                    child: Column(
                      children: [
                        Titletext(context, "LOG IN"),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Form(
                            key: _formkey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                customTextfeild(
                                    "User name",
                                    false,
                                    TextInputAction.next,
                                    _emailController,
                                    () {},
                                    _username),
                                SizedBox(
                                  height: 10,
                                ),
                                customTextfeild(
                                    "password",
                                    true,
                                    TextInputAction.done,
                                    _passwordController,
                                    () {},
                                    _password),
                                SizedBox(
                                  height: 10,
                                ),
                                Text("Forgot your password?"),
                                SizedBox(
                                  height: 30,
                                ),
                                custombuttonlogin(context, "LOGIN", () {}),
                                SizedBox(
                                  height: 30,
                                ),
                                redirectwidget(
                                    "Don't have an account?", 'Sign Up Now',
                                    () {
                                  Get.to(LoginView());
                                }),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Divider(
                                      height: 2,
                                      color: Colors.black,
                                    ),
                                    Divider(
                                      height: 2,
                                      color: Colors.black,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
