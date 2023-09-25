import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:giants/ui/screens/givelunch/lunch_giving_screen.dart';
import 'package:giants/ui/widgets/auth_widget/inputfield.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class GiveLunchScreen extends StatefulWidget {
  const GiveLunchScreen({super.key});

  @override
  State<GiveLunchScreen> createState() => _GiveLunchScreenState();
}

class _GiveLunchScreenState extends State<GiveLunchScreen> {
  final List<String> txt = [
    "Moses Gideon",
    "Kolawole Emmanuel",
    "Gideon Moses",
    "Kolawole Peters",
    "Muller James",
    "Lucy John"
  ];
  String selectedworker = 'Moses Gideon';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left, color: Color(0xFF150D57)),
            onPressed: () => Navigator.pop(context)),
        elevation: 0,
        title: const Text(
          'Give Free Lunch',
          style: TextStyle(color: Color(0xFF150D57)),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            const OutlinedFormField(
              hint: 'search for workers',
              suffix: Icon(Icons.search,color: Colors.grey,),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 6,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  bool isSelected = selectedworker == txt[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedworker = txt[index];
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: SizedBox(
                        child: Column(
                          children: [
                            Row(
                              children: [
                                const CircleAvatar(
                                  radius: 25,
                                  backgroundImage: AssetImage(
                                      'assets/images/img_unsplashxogwpcmgdw.png'),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  txt[index],
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                                Spacer(),
                                InkWell(
                                  onTap: () {},
                                  child: isSelected
                                      ? Image.asset(
                                          'assets/images/ICON(1).png',
                                          width: 15,
                                          height: 20,
                                        )
                                      : Image.asset(
                                          "assets/images/Frame 3227.png",
                                          width: 15,
                                          height: 20,
                                        ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            const Divider(),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
            const Spacer(),
            CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Proceed'),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (index) =>  SelectedLunchScreen()));
                })
          ],
        ),
      ),
    );
  }
}
