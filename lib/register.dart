import 'package:doctor_app/login.dart';
import 'package:doctor_app/verification.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _LoginState();
}

class _LoginState extends State<Register> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('assets/logo 4.png'),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.06,
              ),
              SizedBox(
                height: 200,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: 90,
                      top: 23,
                      child: Image.asset(
                        'assets/Group 146.png',
                      ),
                    ),
                    Positioned(
                      top: 0,
                      child: Image.asset(
                        'assets/Group 147.png',
                      ),
                    ),
                    Positioned(
                      bottom: 46,
                      left: 26,
                      child: Image.asset(
                        'assets/Group 148.png',
                      ),
                    ),
                    Center(
                      child: Image.asset('assets/Group 149.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Register",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 13,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFormField(
                maxLines: 1,
                cursorColor: Colors.grey.shade500,
                decoration: InputDecoration(
                  labelText: 'Full Name',
                  focusColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFF737373))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF737373))),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.01,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                maxLines: 1,
                cursorColor: Colors.grey.shade500,
                decoration: InputDecoration(
                  labelText: 'Phone',
                  focusColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6),
                      borderSide: const BorderSide(color: Color(0xFF737373))),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF737373))),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  const Text(
                    'I agree with ',
                    style: TextStyle(fontFamily: 'Poppins'),
                  ),
                  const Text(
                    'Term & Conditions',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Color(0xFF014E78),
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xFF014E78),
                      decorationThickness: 1.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.02,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Verification()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFDAF2FF),
                  minimumSize: const Size(double.infinity, 40),
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(3), // Set the border radius
                  ),
                ),
                child: const Text(
                  'Register',
                  style: TextStyle(
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                      color: Color(0xFF014E78)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.04,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Login()),
                    );
                  },
                  child: const Text(
                    "Already a member? Login",
                    style: TextStyle(
                        fontFamily: 'Poppins', fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
