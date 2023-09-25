import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:giants/ui/screens/givelunch/successlunch.dart';
import 'package:giants/ui/widgets/general_widget/custom_button.dart';
import 'package:iconsax/iconsax.dart';

class SelectedLunchScreen extends StatefulWidget {
  const SelectedLunchScreen({super.key});

  @override
  State<SelectedLunchScreen> createState() => _SelectedLunchScreenState();
}

class _SelectedLunchScreenState extends State<SelectedLunchScreen> {
  final List<String> txt = [
    "1 free lunch",
    "2 free lunch",
    "3 free lunch",
    "4 free lunch"
  ];
  String selectedCategory = "1 free lunch";

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(Iconsax.arrow_left, color: Color(0xFF150D57)),
            onPressed: () => Navigator.pop(context)),
        title: const Text(
          'Give Lucy free lunch',
          style: TextStyle(color: Color(0xFF150D57)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                children: [
                  Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: Colors.grey, width: 1.5),
                          image: const DecorationImage(
                              image: AssetImage(
                                  'assets/images/img_unsplash9kqbqqyxrk.png')))),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Lucy John",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        color: Color(0xFF150D57)),
                  ),
                  const Text(
                    'HR Administration',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SvgPicture.asset(
                      width: 40, 'assets/images/img_trash_amber_a200.svg')
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Complement",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF150D57)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFF150D57),
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text(
                "You're simply awesome! I am impressed by your outstanding contribution, here's a little token to treat yourself.",
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Select number of lunch",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                  color: Color(0xFF150D57)),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              width: MediaQuery.of(context).size.width,
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                childAspectRatio: (.95 / .45),
                padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                children: List.generate(4, (index) {
                  bool isSelected = selectedCategory == txt[index];
                  return InkWell(
                    onTap: () {
                      setState(() {
                        selectedCategory = txt[index];
                      });
                    },
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color:isSelected?Color(0xFF150D57):Colors.grey)),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/images/img_trash_amber_a200.svg',
                            width: 25,
                          ),
                           Text(
                              txt[index],
                            style: const TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF150D57)),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),
            const Spacer(),
            CustomButton(
                padding: const EdgeInsets.symmetric(vertical: 15),
                child: const Text('Give free lunch'),
                onPressed: () {
                  Navigator.of(context).push(CupertinoPageRoute(
                      builder: (index) => const LunchGiftSuccessScreen()));
                })
          ],
        ),
      ),
    );
  }
}
