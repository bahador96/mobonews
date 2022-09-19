import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

int isSelected = 0;

List<String> lsttitle = ['همه', 'ورزش', 'جهان', ' تکنولوژی', ' علم و دانش'];
List<String> lstT = ['دیجیاتو', 'زومیت', 'ورزش 3'];
List<String> lstP = [
  'images/news_agency04.png',
  'images/news_agency02.png',
  'images/news_agency03.png',
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundWhite,
        elevation: 0,
        centerTitle: true,
        title: Image.asset('images/logo.png'),
        leading: Expanded(
          child: Padding(
            padding: EdgeInsets.only(right: 3, left: 3),
            child: Row(
              children: [
                // SizedBox(width: 3),
                Image.asset(
                  'images/search_normal.png',
                  fit: BoxFit.cover,
                ),
                // SizedBox(width: 3),
                Image.asset(
                  'images/filter_edit.png',
                ),
              ],
            ),
          ),
        ),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            _topPageview(),
            SizedBox(
              height: 20,
            ),
            _lstcategory(),
            SizedBox(
              height: 10,
            ),
            _titleKhabar('خبر گذاری'),
            SizedBox(
              height: 10,
            ),
            _lstCompany(),
            SizedBox(
              height: 10,
            ),
            _titleKhabar('پیشنهاد سردبیر'),
            SizedBox(
              height: 10,
            ),
            _lstpishnahadi(),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget _topPageview() {
    return Container(
      width: double.infinity,
      height: 180,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(4),
            child: SizedBox(
              height: 180,
              width: 380,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset('images/Banner${index + 1}.png'),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _lstcategory() {
    return Container(
      height: 50,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: lsttitle.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                isSelected = index;
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              width: 75,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: isSelected == index ? borderPinkDark : borderGrey,
              ),
              padding: EdgeInsets.all(4),
              child: Center(
                child: Text(
                  lsttitle[index],
                  style: TextStyle(
                    fontWeight:
                        isSelected == index ? FontWeight.w700 : FontWeight.w500,
                    fontSize: 14,
                    color: isSelected == index
                        ? Colors.pink.shade600
                        : Colors.grey.shade800,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _titleKhabar(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'مشاهده بیشتر',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: buttonRed,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _lstCompany() {
    return Container(
      width: double.infinity,
      height: 160,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: lstP.length,
        itemBuilder: (context, index) {
          return Container(
            width: 135,
            margin: EdgeInsets.only(left: 20),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(lstP[index]),
                ),
                SizedBox(height: 15),
                Text(
                  lstT[index],
                  style: TextStyle(
                    fontSize: 14,
                    color: textblack,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 12),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: borderPinkDark,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'دنبال کردن',
                    style: TextStyle(
                      color: buttonRed,
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _lstpishnahadi() {
    return Container(
      height: 160,
      width: double.infinity,
      child: ListView.builder(
        itemCount: 2,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(left: 20, bottom: 55),
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('images/pishnahadi.png'),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Color(0xffFF033E).withOpacity(.5),
                    ),
                    child: Center(
                      child: Text(
                        'علمی پزشکی',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
