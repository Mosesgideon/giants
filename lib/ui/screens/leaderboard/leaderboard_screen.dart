import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconsax/iconsax.dart';

class LeaderBoard extends StatefulWidget {
  const LeaderBoard({super.key});

  @override
  State<LeaderBoard> createState() => _LeaderBoardState();
}

class _LeaderBoardState extends State<LeaderBoard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Center(
                  child: Text(
                'Leaderboard',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              )),
              SizedBox(
                height: 20,
              ),
              Text(
                'Top 3 workers',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              LeaderboardItems(),
              LeaderboardItems(),
              LeaderboardItems(),
              SizedBox(
                height: 20,
              ),
              Text(
                'All top workers',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
              ),
              LeaderboardItems(),
              LeaderboardItems(),
              LeaderboardItems(),
              LeaderboardItems(),

            ],
          ),
        ),
      ),
    );
  }
}

class LeaderboardItems extends StatefulWidget {
  const LeaderboardItems({super.key});

  @override
  State<LeaderboardItems> createState() => _LeaderboardItemsState();
}

class _LeaderboardItemsState extends State<LeaderboardItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Container(
        padding: const EdgeInsets.only(left: 10,right: 10),
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
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                          image: AssetImage(
                              'assets/images/img_unsplash9kqbqqyxrk_31x31.png'),
                          fit: BoxFit.cover)),
                ),
                const SizedBox(
                  width: 6,
                ),
                const Text(
                  'Lucy John',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                ),
              ],
            ),
             Row(
              children: [
                SvgPicture.asset('assets/images/img_star1.svg'),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  '4.5',
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600,color: Color(0xFF150D57)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
