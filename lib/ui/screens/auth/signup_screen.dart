import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giants/ui/screens/auth/finish_signup.dart';
import 'package:giants/ui/widgets/auth_widget/inputfield.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
             const Center(
               child: Column(
                 children: [
                   Text(
                     'Sign Up',
                     style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                   ),
                   SizedBox(height: 10,),
                   Text("Let's get started! Sign Up with",
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                   Text("your email below",
                       style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                 ],
               ),
             ),
              const SizedBox(height: 20,),
              const Text("First Name",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'First Name',
              ),
              const SizedBox(height: 20,),
              const Text("Last Name",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'Last Name',
              ),
              const SizedBox(height: 20,),
              const Text("Email",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'Email',
              ),
              const SizedBox(height: 20,),
              const Text("Phone Number",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'Phone Number',
              ),
              const SizedBox(height: 20,),
              const Text("Password",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'password',
                suffix: Icon(Iconsax.eye_slash,color: Colors.grey,),
              ),
              const SizedBox(height: 20,),
              const Text("Confirm Password",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
              const SizedBox(height: 5,),
              const OutlinedFormField(
                hint: 'Confirm Password',
                suffix: Icon(Iconsax.eye_slash,color: Colors.grey),
              ),
              const SizedBox(height: 20,),
              CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 20),

                  child: const Text('Continue'), onPressed: (){
                Navigator.pushReplacement(context, CupertinoPageRoute(builder: (index)=>FinishSignUp()));
              })
            ],
          ),
        ),
      ),
    );
  }
}
