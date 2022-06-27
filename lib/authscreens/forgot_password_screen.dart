import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning_app/widgets/buttons.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  bool showSpinner = false;
  TextEditingController emailController = TextEditingController();
  String email = "";

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
                      top: 150, bottom: 160, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.9)),
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 50, bottom: 5, left: 15, right: 15),
                            child: TextFormField(
                              controller: emailController,
                              onChanged: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if(!emailController.text.contains("@") || value!.isEmpty )  {
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
                     const SizedBox(
                            height: 25,
                          ),
                          CustomButton(
                              title: "Recover Password",
                              onPress: () async {
                                if (_formKey.currentState!.validate()) {}

                                setState(() {
                                  showSpinner = true;
                                });

                                try {
                                  _auth
                                      .sendPasswordResetEmail(
                                      email: emailController.text.toString())
                                      .then((value) {
                                    setState(() {
                                      showSpinner = false;
                                    });
                                    toastMessage(
                                        "Please check your email,Link has been sent to your via email");
                                  }).onError((error, stackTrace) {
                                    toastMessage(error.toString());
                                    setState(() {
                                      showSpinner = false;
                                    });
                                  });
                                } catch (e) {
                                  toastMessage(e.toString());
                                  setState(() {
                                    showSpinner = false;
                                  });
                                }
                              }),
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
        msg: message.toString(),
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.SNACKBAR,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 16.0);
  }
}



