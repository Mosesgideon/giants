import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giants/ui/screens/auth/finish_signup.dart';
import 'package:giants/ui/screens/auth/signup_screen.dart';
import 'package:giants/ui/screens/dashboard/dashboard.dart';
import 'package:giants/ui/screens/homescreen/home_screen.dart';
import 'package:giants/ui/widgets/auth_widget/inputfield.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 40,
                ),
                 Center(
                  child: Column(
                    children: [
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w600),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text("Welcome Back! Please Sign In to Your Account",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.5))),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Email",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                const OutlinedFormField(
                  hint: 'Email',
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text("Password",
                    style:
                        TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
                const SizedBox(
                  height: 5,
                ),
                const OutlinedFormField(
                  hint: 'Password',
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(

                  children: [
                    const Spacer(),
                    const Text('Want to creat an organization? '),
                    InkWell(
                      child: const Text(
                        'create',
                        style: TextStyle(
                          color: Color(0xFF150D57),
                          fontWeight: FontWeight.w500
                        ),
                      ),
                      onTap: () => Navigator.of(context).push(
                          CupertinoPageRoute(
                              builder: (index) => const SignUpScreen())),
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                CustomButton(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: const Text('Sign In'),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          CupertinoPageRoute(
                              builder: (index) => const DashBoardScreen()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
