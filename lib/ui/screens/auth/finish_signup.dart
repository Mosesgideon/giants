import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giants/ui/screens/dashboard/dashboard.dart';
import 'package:giants/ui/widgets/auth_widget/inputfield.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';
class FinishSignUp extends StatefulWidget {
  const FinishSignUp({super.key});

  @override
  State<FinishSignUp> createState() => _FinishSignUpState();
}

class _FinishSignUpState extends State<FinishSignUp> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(padding: const EdgeInsets.all(16),
      child:  Column(
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
                Text("Let's get started! Sign up with ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
                Text("your email below.",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          const Text("Company Name",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          const SizedBox(height: 5,),

          const OutlinedFormField(
            hint: "Company's name",
          ),
          const SizedBox(height: 20,),
          const Text("Lunch Price",
              style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
          const SizedBox(height: 5,),
          const OutlinedFormField(
            hint: '#1000.00',
          ),
           const SizedBox(height: 10,),
           Text("One free Lunch worth #1000.00",style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 14),),
          const SizedBox(height: 20,),
          CustomButton(
              padding: const EdgeInsets.symmetric(vertical: 20 ),
              child: const Text('Finish Sign Up'), onPressed: (){
            Navigator.pushReplacement(context, CupertinoPageRoute(builder: (index)=>DashBoardScreen()));
          })
        ],
      )),
    );
  }
}
