import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giants/ui/screens/bank_screen/addbank.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

import '../dashboard/dashboard.dart';

class WithdrawLunch extends StatefulWidget {
  const WithdrawLunch({super.key});

  @override
  State<WithdrawLunch> createState() => _WithdrawLunchState();
}

class _WithdrawLunchState extends State<WithdrawLunch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left, color: Color(0xFF150D57)),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
        title: Row(
          children: [
            const Text(
              'Withdraw your lunch',
              style: TextStyle(color: Color(0xFF150D57)),
            ),
            const SizedBox(
              width: 5,
            ),
            SvgPicture.asset(
              'assets/images/img_trash_amber_a200.svg',
              width: 20,
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Withdraw lunch to your\nbank account ",
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/images/img_upload.svg',
                        width: 20,
                        height: 10,
                      ),
                    )),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bank Account',
                      style:
                          TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                    ),
                    Text('FirstBank ****2345')
                  ],
                ),
                const Spacer(),
                const Image(image: AssetImage('assets/images/ICON(1).png',),width: 20),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: ()=>Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (index)=>AddBankAccount())),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SvgPicture.asset(
                          'assets/images/img_heroiconsoutlinebanknotes.svg',
                          width: 20,
                          height: 10,
                        ),
                      )),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Add bank account',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                  const Spacer(),
                  Image.asset(
                    'assets/images/icon.png',
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
                "Free lunch worth of #1,000.00 will be credited to\nyour bank account"),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Withdraw'),
                onPressed: () {
                  Navigator.of(context).pushReplacement(CupertinoPageRoute(builder: (index)=>WithdrawLunchSuccess()));
                })
          ],
        ),
      ),
    );
  }
}

class WithdrawLunchSuccess extends StatefulWidget {
  const WithdrawLunchSuccess({super.key});

  @override
  State<WithdrawLunchSuccess> createState() => _WithdrawLunchSuccessState();
}

class _WithdrawLunchSuccessState extends State<WithdrawLunchSuccess> {
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
                const Text("You withdrew your lunch!",style: TextStyle(fontSize: 16),),
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

