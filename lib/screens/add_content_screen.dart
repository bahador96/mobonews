import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class AddContentScreen extends StatefulWidget {
  const AddContentScreen({Key? key}) : super(key: key);

  @override
  State<AddContentScreen> createState() => _AddContentScreenState();
}

List<String> lstnames = ['ورزشی', 'لژیونر ها', 'فوتبال اروپا'];

class _AddContentScreenState extends State<AddContentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              toolbarHeight: 75,
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Image.asset('images/next.png'),
                ),
              ],
              // backgroundColor: borderGrey,
              backgroundColor: Colors.grey.shade400,
              leading: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('images/short_Menu_horizontal.png'),
                  SizedBox(
                    width: 15,
                  ),
                  Image.asset('images/frame.png'),
                ],
              ),
              pinned: true,
              elevation: 0,
              expandedHeight: 270,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  width: double.infinity,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(20),
                    ),
                    color: backgroundWhite,
                  ),
                  child: Center(
                    child: Container(
                      height: 5,
                      width: 100,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.circular(16),
                      //   color: borderGrey,
                      // ),
                      child: Image.asset(
                        'images/home_indicator.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'images/news_hot_01.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.only(top: 5),
            ),
            SliverToBoxAdapter(
              child: _topTitle(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 5),
            ),
            SliverToBoxAdapter(
              child: _topKabar(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 5),
            ),
            SliverToBoxAdapter(
              child: _lstCategory(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 5),
            ),
            SliverToBoxAdapter(
              child: _titleKhabar(),
            ),
            SliverPadding(
              padding: EdgeInsets.only(top: 5),
            ),
            SliverToBoxAdapter(
              child: _KhodeKhabar(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _topTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '5 دقیقه قبل',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: textblack,
            ),
          ),
          Container(
            padding: EdgeInsets.all(8),
            width: 137,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: buttonRed,
            ),
            child: Row(
              children: [
                Text(
                  'خبرگزاری آخرین خبر',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(
                //   width: 8,
                // ),
                Spacer(),
                Image.asset(
                  'images/news_agency01.png',
                  // color: borderGrey,
                ),
              ],
            ),
          ),
          Row(
            children: [
              Text(
                'پیشنهاد مونیوز',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: textblack,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Image.asset(
                'images/attack.png',
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _topKabar() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          ' پاسـخ مـنـفی پــورتـو به چـلـسی بـرای جــذب طـارمـی با طعم تهدید !',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _lstCategory() {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        height: 50,
        width: double.infinity,
        child: ListView.builder(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: lstnames.length,
          itemBuilder: (context, index) {
            return Container(
              margin: index == 0
                  ? EdgeInsets.only(right: 24)
                  : EdgeInsets.only(right: 10),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: borderPinkDark,
                borderRadius: BorderRadius.circular(25),
              ),
              child: Center(
                child: Text(
                  lstnames[index],
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: buttonRed,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _titleKhabar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Text(
          'باشگاه چلسی که پیگیر جذب مهدی طارمی مهاجـم ایران بـود، با پاسـخ منفی باشگاه پورتو مواجه شد و این بازیـکن باوجود رویای بازی در لیگ برتر انگلیس فعلا در پرتغال ماندنی است.',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }

  Widget _KhodeKhabar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Expanded(
          child: Row(
            children: [
              Container(
                width: 3,
                height: 20,
                color: buttonRed,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Text(
                  'بحث پیشنهاد باشگاه چلسـی انـگـلیس به پـورتـو بـرای جـذب مـهدی طــارمـی در آخـریــن ســاعــات نــقـل و انـتـقـالـات فــوتـبـال اروپـا یــکـی از سوژه‌های اصلی هواداران دو تیم بود. این خبر در حالی رسانه‌ای شد که گفته می‌شد چلسی برای جذب طارمی مبلغ ۲۵ میلیون یورو را به پورتو پیشنهاد داده است. روزنـامه «ابولا» پرتغال هم روز چهارشنـبـه ایــن خـبر را اعلـام کرد و به دنبال آن بعضی از مطبوعات انگلیس و کشورهای دیگر هم پیشنهادچلسی به طارمی را دنبال کردند.',
                  style: TextStyle(
                      fontSize: 16,
                      color: textblack,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
