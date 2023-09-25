import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:giants/ui/screens/givelunch/give_lunch.dart';
import 'package:giants/ui/screens/withdraw_lunch/withdraw_lunch.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HomeCard(),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Activities',
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                    ),
                    TextButton(onPressed: () {}, child: const Text('See all',style: TextStyle(color: Color(0xFF150D57)),)),
                  ],
                ),
                const LunchWidget(),
                const LunchWidget(),

              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeCard extends StatefulWidget {
  const HomeCard({super.key});

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 10),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color(0xFF150D57),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(color: Colors.white,'assets/images/img_navprofile.svg'),
               Row(
                children: [
                  const Text(
                    'Ally',
                    style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w500),
                  ),
                  SvgPicture.asset('assets/images/img_close.svg',width: 20,)
                ],
              ),
              SvgPicture.asset(
                  color: Colors.white,
                  'assets/images/img_notification_black_900.svg'),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Hi,John',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w500, fontSize: 12),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            child: Card(
              shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Colors.white,
              surfaceTintColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Lunch Balance',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        const Text(
                          '3',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(
                          width: 3,
                        ),
                        Image.asset('assets/images/img_group16.png', width: 20),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 170,
                child: InkWell(
                  onTap: ()=>Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>const GiveLunchScreen())
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Row(
                        children: [
                          const Text(
                            'Give Lunch',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Image.asset('assets/images/img_group16.png', width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 170,
                child: InkWell(
                  onTap: ()=>Navigator.of(context).push(CupertinoPageRoute(builder: (index)=>const WithdrawLunch())),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.white,
                    surfaceTintColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 15),
                      child: Row(
                        children: [
                          const Text(
                            'Withdraw Lunch',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 16),
                          ),
                          const SizedBox(
                            width: 3,
                          ),
                          SvgPicture.asset(
                              'assets/images/img_heroiconsmini_arrowsmallup.svg',
                              width: 20),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class LunchWidget extends StatefulWidget {
  const LunchWidget({super.key});

  @override
  State<LunchWidget> createState() => _LunchWidgetState();
}

class _LunchWidgetState extends State<LunchWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Text(
                    'You got 2 free lunches',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  Image.asset('assets/images/img_group16.png', width: 20),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20,),
                  Text(
                    'from Lucy',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600,color: Color(0xFF150D57)),
                  ),
                  SizedBox(height: 10,),
                  Text(
                    'Today, 02:19 pm',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  )
                ],
              )
            ],
          ),

          const Text(
            'You received a free lunch for\nyour outstanding contribution,\nthank you for your hard work',
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }
}
