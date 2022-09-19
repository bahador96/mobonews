import 'package:flutter/material.dart';
import 'package:news/constants.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

TabController? _tabController;

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWhite,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundWhite,
        centerTitle: true,
        title: Image.asset('images/logo.png'),
        leading: Image.asset('images/notification_status.png'),
      ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                  width: double.infinity,
                ),
                Container(
                  height: 43,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.5),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: _getTabBar(),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: _titleKhabar('خبر های داغ'),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      SliverToBoxAdapter(
                        child: _topListKhabar(),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      SliverToBoxAdapter(
                        child: _titleKhabar('خبر هایی که علاقه داری'),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return _lstcontanetunder();
                          },
                        ),
                      ),
                    ],
                  ),
                  CustomScrollView(
                    slivers: [
                      SliverToBoxAdapter(
                        child: _titleKhabar('خبر های داغ'),
                      ),
                      // SliverPadding(
                      //   padding: EdgeInsets.only(top: 5),
                      // ),
                      SliverToBoxAdapter(
                        child: _topListKhabar(),
                      ),
                      // SliverPadding(
                      //   padding: EdgeInsets.only(top: 5),
                      // ),
                      SliverToBoxAdapter(
                        child: _titleKhabar('خبر هایی که علاقه داری'),
                      ),
                      SliverPadding(
                        padding: EdgeInsets.only(top: 5),
                      ),
                      SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) {
                            return _lstcontanetunder();
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getTabBar() {
    return TabBar(
      controller: _tabController,
      labelStyle: TextStyle(
        fontSize: 16,
        fontFamily: 'SB',
        color: textblack,
      ),
      unselectedLabelStyle: TextStyle(
          color: borderGrey,
          fontFamily: 'SB',
          fontSize: 17,
          fontWeight: FontWeight.w700),
      unselectedLabelColor: textblack,
      indicator: BoxDecoration(
        color: textblack,
        // color: Colors.red,
        borderRadius: BorderRadius.circular(21.5),
      ),
      labelColor: borderGrey,
      tabs: [
        Tab(
          text: 'پیشنهادی',
        ),
        Tab(
          text: 'دنبال کنید',
        ),
      ],
    );
  }

  Widget _topListKhabar() {
    return Container(
      height: 300,
      width: double.infinity,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (context, index) {
          return Padding(
            padding: index == 0
                ? EdgeInsets.only(right: 24)
                : EdgeInsets.only(right: 16),
            child: Stack(
              // alignment: Alignment.topRight,
              children: [
                Container(
                  height: 400,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: borderGrey,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(4.0),
                        child: SizedBox(
                          width: double.infinity,
                          height: 160,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Image.asset('images/news_hot_01.png',
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 14),
                        child: Row(
                          children: [
                            Image.asset('images/attack.png'),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'پیشنهاد مونیوز',
                              style: TextStyle(color: textblack, fontSize: 12),
                            ),
                            Spacer(),
                            Text(
                              '5 دقیقه قبل',
                              style: TextStyle(color: textblack, fontSize: 12),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 14),
                        child: Text(
                          'پاسخ منفی پورتو به چلسی برای جذب طارمی با طعم تهدید',
                          style: TextStyle(
                              fontSize: 16,
                              color: textblack,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Expanded(
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/news_agency01.png',
                                  fit: BoxFit.cover,
                                  width: 15,
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'خبرگزاری آخرین خبر',
                                  style: TextStyle(
                                      color: textblack,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w700),
                                ),
                                Spacer(),
                                Image.asset(
                                  'images/short_Menu.png',
                                  color: textblack,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: buttonRed,
                    ),
                    child: Center(
                      child: Text(
                        'ورزشی',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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

  Widget _titleKhabar(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
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
                  fontSize: 14, fontWeight: FontWeight.w700, color: buttonRed),
            ),
          ),
        ],
      ),
    );
  }

  Widget _lstcontanetunder() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Container(
        height: 150,
        width: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: borderGrey,
        ),
        child: Row(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset('images/news_interest.png'),
                ),
                Positioned(
                  right: 15,
                  top: 15,
                  child: Container(
                    width: 58,
                    height: 28,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: buttonRed.withOpacity(0.5),
                    ),
                    child: Center(
                      child: Text(
                        'تکنولوژی',
                        style: TextStyle(
                          fontFamily: 'SB',
                          fontSize: 10,
                          color: borderGrey,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 15),
                  width: 240,
                  child: Text(
                    'سـاعـت هوشـمـنـد گــارمـیـن Venu Sq 2 بـا عمر باتری ۱۱ روزه معرفی شد',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Container(
                  width: 240,
                  child: Text(
                    'گارمین در رویداد IFA ۲۰۲۲ ساعت هوشمند Venu Sq 2 و ردیاب سلامت کودکان موسوم به Black Panther Vivofit Jr 3 را معرفی کرد.',
                    style: TextStyle(
                      fontSize: 12,
                      color: textblack,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text(
                      'خبر گذاری زومیت',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    // Spacer(),
                    Image.asset(
                      'images/short_Menu.png',
                      color: textblack,
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
