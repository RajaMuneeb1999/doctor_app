import 'package:flutter/material.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});

  @override
  State<Verification> createState() => _LoginState();
}

class _LoginState extends State<Verification> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              SizedBox(
                child: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.asset(
                        'assets/Background_Complete.png',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/Device.png',
                        ),
                      ),
                      Positioned(
                        top: 25,
                        child: Image.asset(
                          'assets/Capture 1.png',
                        ),
                      ),
                      Positioned(
                        left: 14,
                        top: 23,
                        child: Image.asset(
                          'assets/Character.png',
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 0,
                        child: Image.asset(
                          'assets/Plant.png',
                        ),
                      ),
                      Positioned(
                        // left: 15,
                        bottom: 45,
                        child: Image.asset(
                          'assets/Group 154.png',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.08,
              ),
              const Text(
                "Phone Number Verification",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 22,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.03,
              ),
              const Text(
                "Enter the code sent to +923017062613",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (int i = 0; i < 6; i++) buildOtpDigitField(i),
                ],
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.05,
              ),
              const Text(
                "Didn’t receive the code? 27 s",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

String enteredOtp = '2';

Widget buildOtpTextField() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      for (int i = 0; i < 6; i++) buildOtpDigitField(i),
    ],
  );
}

Widget buildOtpDigitField(int index) {
  return SizedBox(
    width: 30,
    child: TextField(
      keyboardType: TextInputType.number,
      textAlign: TextAlign.center,
      maxLength: 1,
      onChanged: (value) {
        if (value.length == 1) {
          enteredOtp += value;
        }
      },
      style: const TextStyle(fontSize: 18),
      decoration: const InputDecoration(
        counterText: '',
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0XFFC10228))),
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Color(0XFFC10228))),
      ),
    ),
  );
}
