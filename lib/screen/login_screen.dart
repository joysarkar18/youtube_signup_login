import 'package:flutter/material.dart';
import 'package:glossy/glossy.dart';
import 'package:signup_login/screen/signup_scrren.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.black,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(children: [
          Positioned(
            top: 60,
            left: -60,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.bottomRight,
                      colors: [Colors.purple, Colors.blue]),
                  borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Positioned(
            bottom: 60,
            right: -60,
            child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.pink, borderRadius: BorderRadius.circular(100)),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: GlossyContainer(
              height: MediaQuery.of(context).size.height * 0.75,
              width: MediaQuery.of(context).size.width * 0.9,
              borderRadius: BorderRadius.circular(20),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 30,
                            fontWeight: FontWeight.w600),
                      ),
                      const Text(
                        "Glad you are back!",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 18,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18),
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white54,
                              size: 28,
                            ),
                            hintStyle:
                                TextStyle(color: Colors.white54, fontSize: 17),
                            hintText: "Email",
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.white70))),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(18),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white54,
                              size: 28,
                            ),
                            suffixIcon: IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.white54,
                                )),
                            hintStyle:
                                TextStyle(color: Colors.white54, fontSize: 17),
                            hintText: "Enter your Password",
                            border: const OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                borderSide: BorderSide(color: Colors.white70))),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: const LinearGradient(colors: [
                                Colors.blue,
                                Colors.purple,
                                Colors.purple
                              ])),
                          child: const Center(
                              child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w500),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Forgot passwod?",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Expanded(child: Divider()),
                            Padding(
                              padding: EdgeInsets.all(12.0),
                              child: Text(
                                "or",
                                style: TextStyle(color: Colors.white70),
                              ),
                            ),
                            Expanded(child: Divider())
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have account?",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignupScreen(),
                                    ));
                              },
                              child: Text(
                                "signup",
                                style: TextStyle(color: Colors.blue),
                              ),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Terms & Conditions",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            "Support",
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            "Customer Care",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      )
                    ]),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
