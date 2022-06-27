import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:kids_learning_app/authscreens/login_screen.dart';
import 'package:kids_learning_app/screens/home_screen.dart';
import 'package:kids_learning_app/widgets/buttons.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool _isobscure = true;
  FirebaseAuth _auth = FirebaseAuth.instance;
  DatabaseReference userRef = FirebaseDatabase.instance.ref().child("user");

  final _formKey = GlobalKey<FormState>();
  bool showSpinner = false;

  TextEditingController emailC = TextEditingController();
  TextEditingController userNameC = TextEditingController();
  TextEditingController passwordC = TextEditingController();

  String email = "", nameUser = "", password = "";

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: showSpinner,
      child: SafeArea(
        child: Scaffold(
          body: Stack(
            fit: StackFit.expand,
            children: [
              Image(
                  fit: BoxFit.fill,
                  image: AssetImage("images/background_image.webp")),
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 120, bottom: 160, left: 20, right: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white.withOpacity(0.9)),
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 5, left: 15, right: 15),
                            child: TextFormField(
                              controller: userNameC,
                              onChanged: (value) {
                                nameUser = value;
                              },
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return "Please enter at least 4 characters";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.person),
                                  labelText: "User name",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 30, bottom: 5, left: 15, right: 15),
                            child: TextFormField(
                              controller: emailC,
                              onChanged: (value) {
                                email = value;
                              },
                              validator: (value) {
                                if (!emailC.text.contains("@") ||
                                    value!.isEmpty) {
                                  return "Please enter a valid email address";
                                }
                                return null;
                              },
                              keyboardType: TextInputType.emailAddress,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.email),
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
                                        : Icons.visibility_off),
                                  ),
                                  prefixIcon: Icon(Icons.lock),
                                  labelText: "Password",
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10))),
                            ),
                          ),

                          SizedBox(
                            height: 25,
                          ),

                          InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                "Already have an account",
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          SizedBox(
                            height: 25,
                          ),
                          CustomButton(
                              title: "SignUp",
                              onPress: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    showSpinner = true;
                                  });
                                  try {
                                    final user = await _auth
                                        .createUserWithEmailAndPassword(
                                        email: email.toString().trim(),
                                        password: password.toString().trim());
                                    await userRef
                                        .child(_auth.currentUser!.uid)
                                        .set({
                                      "name": userNameC.text,
                                      "email": emailC.text.trim(),
                                      "password": passwordC.text,
                                    });
                                    // FirebaseFirestore.instance
                                    //     .collection("User")
                                    //     .doc(user.user!.uid)
                                    //     .set({
                                    //   "username": nameUser,
                                    //   "email": email,
                                    //   "password": passwordC.text,
                                    // });
                                    if (user != null) {
                                      toastMessage("User Succesfully Created");
                                      // userRef.child(_auth.currentUser!.uid).set({
                                      //   "name": userNameC.text,
                                      //   "email": emailC.text.trim(),
                                      //   "password": passwordC.text,
                                      // });
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                          const HomeScreen(),
                                        ),
                                      );
                                      setState(() {
                                        showSpinner = false;
                                      });
                                    }
                                  }
                                  catch (e) {
                                    toastMessage(e.toString());
                                    setState(() {
                                      showSpinner = false;
                                    });
                                  }
                                }


                              })
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
