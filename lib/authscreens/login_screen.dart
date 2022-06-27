import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning_app/authscreens/forgot_password_screen.dart';
import 'package:kids_learning_app/authscreens/register.dart';
import 'package:kids_learning_app/screens/home_screen.dart';
import 'package:kids_learning_app/widgets/buttons.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isobscure = true;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;

  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  String email = "", password = "";

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              const Image(
                  fit: BoxFit.fill,
                  image: AssetImage("images/background_image.webp")),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 120, bottom: 140, left: 20, right: 20),
                  child: Container(

                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.7),),
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 5, left: 15, right: 15),
                            child: TextFormField(
                              controller: emailC,
                              onChanged: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if(!emailC.text.contains("@") || value!.isEmpty )  {
                                  return "Please enter a valid email address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  prefixIcon: const Icon(Icons.email),
                                  labelText: "Email Address",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 15, bottom: 5, left: 15, right: 15),
                            child: TextFormField(
                              controller: passwordC,
                              onChanged: (value) {
                                password = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty || value.length < 7) {
                                  return 'Password must be at least 7 characters long.';
                                }
                                return null;
                              },
                              obscureText: _isobscure,
                              decoration: InputDecoration(
                                  suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          _isobscure = !_isobscure;
                                        });
                                      },
                                      icon: Icon(_isobscure
                                          ? Icons.visibility
                                          : Icons.visibility_off)),
                                  prefixIcon: const Icon(Icons.lock),
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),

                          const SizedBox(
                            height: 25,
                          ),

                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const RegisterScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Create new account",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10,),
                            child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const ForgotPasswordScreen(),
                                    ),
                                  );
                                },
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 168),
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                )),
                          ),
                          const SizedBox(
                            height: 25,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: CustomButton(
                                title: "Login",
                                onPress: () async {
                                  if (_formKey.currentState!.validate()) {}
                                  setState(() {
                                    showSpinner = true;
                                  });
                                  try {
                                    final user =
                                        await _auth.signInWithEmailAndPassword(
                                            email: email.toString().trim(),
                                            password: password.toString().trim());
                                    if (user != null) {
                                      toastMessage("User Succesfully Created");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const HomeScreen(),
                                        ),
                                      );
                                      setState(() {
                                        showSpinner = false;
                                      });
                                    }
                                  } catch (e) {
                                    toastMessage(e.toString());
                                    setState(() {
                                      showSpinner = false;
                                    });
                                  }
                                }),
                          )
                          // SizedBox(height: 15,),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void toastMessage(message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}
