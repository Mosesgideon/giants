import 'package:flutter/material.dart';
import 'package:giants/ui/widgets/auth_widget/inputfield.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class SendOffer extends StatefulWidget {
  const SendOffer({super.key});

  @override
  State<SendOffer> createState() => _SendOfferState();
}

class _SendOfferState extends State<SendOffer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:   Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              child:  Row(
                children: [
                   InkWell(
                     onTap: (){
                       Navigator.pop(context);
                     }
                       ,
                       child: const Icon(Iconsax.arrow_left)),
                  const SizedBox(width: 80,),
                  const Text(
                    'Invite employee',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ) ,
                ],
              ),
            ),
            const SizedBox(height: 50,),
            const Center(
              child: Column(
                children: [
                  Text("Send an Invitation to an employee, they",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                  SizedBox(height: 10,),
                  Text(" will receive it in their email.",
                      style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            const Text("Email",
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500)),
            const SizedBox(height: 5,),
            const OutlinedFormField(
              hint: 'Email',
            ),
            const SizedBox(height: 30,),
            CustomButton(padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Send Invitation'),
                onPressed: (){})
          ],
        ),
      ),
    );
  }
}
