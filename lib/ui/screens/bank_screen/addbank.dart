import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giants/ui/screens/withdraw_lunch/withdraw_lunch.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class AddBankAccount extends StatefulWidget {
  const AddBankAccount({super.key});

  @override
  State<AddBankAccount> createState() => _AddBankAccountState();
}

class _AddBankAccountState extends State<AddBankAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left, color: Color(0xFF150D57)),
            onPressed: () => Navigator.pop(context)),
        centerTitle: true,
        elevation: 0,
        title: const Text(
          'Add your bank account',
          style: TextStyle(color: Color(0xFF150D57)),
        ),
      ),
      body: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Securely link your bank account',
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                   ),
              ),
              const SizedBox(
                height: 20,
              ),
              AddBankItems(
                image: Image.asset(
                  'assets/images/globe-europe-africa.png',
                  width: 20,
                ),
                text: 'Select Country',
              ),
              AddBankItems(
                image: SvgPicture.asset(
                  'assets/images/img_upload.svg',
                  width: 15,
                  height: 10,
                ),
                text: 'Select a Bank',
              ),
              AddBankItems(
                image: SvgPicture.asset(
                  'assets/images/img_heroiconsoutlinebanknotes.svg',
                  width: 15,
                  height: 10,
                ),
                text: 'Account Number',
              ),
              const SizedBox(
                height: 50,
              ),
              CustomButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: const Text('Add'), onPressed: () {
                    Navigator.push(context, CupertinoPageRoute(builder: (index)=>WithdrawLunch()));

              })
            ],
          )),
    );
  }
}

class AddBankItems extends StatefulWidget {
  final Widget image;
  final String text;

  const AddBankItems({super.key, required this.image, required this.text});

  @override
  State<AddBankItems> createState() => _AddBankItemsState();
}

class _AddBankItemsState extends State<AddBankItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.only(left: 10, right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), border: Border.all()),
        height: 50,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: widget.image),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  widget.text,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const Icon(Icons.keyboard_arrow_down_outlined)
          ],
        ),
      ),
    );
  }
}
