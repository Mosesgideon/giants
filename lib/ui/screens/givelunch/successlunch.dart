import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giants/ui/screens/dashboard/dashboard.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';

class LunchGiftSuccessScreen extends StatefulWidget {
  const LunchGiftSuccessScreen({super.key});

  @override
  State<LunchGiftSuccessScreen> createState() => _LunchGiftSuccessScreenState();
}

class _LunchGiftSuccessScreenState extends State<LunchGiftSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            SvgPicture.asset(
              'assets/images/img_yay.svg',
              width: 300,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("You've just made Lucy's day!",style: TextStyle(fontSize: 16),),
                SizedBox(width:4,),
                SvgPicture.asset("assets/images/img_emoji_smiling_face.svg",width: 20,height: 20,)
              ],
            ),
            Spacer(),
            CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Return Home'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(
                      builder: (index) => const DashBoardScreen()));
                })
          ],
        ),
      ),
    );
  }
}
