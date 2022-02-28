import 'package:bowling_app/style/k_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constant/asset_path.dart';
import '../../style/k_text_style.dart';

class ClubViewScreen extends StatefulWidget {
  const ClubViewScreen({Key? key}) : super(key: key);

  @override
  _ClubViewScreenState createState() => _ClubViewScreenState();
}

class _ClubViewScreenState extends State<ClubViewScreen> {
  List itemList = [
    {
       "id" : 1,
      "day": "Today",
      "date": " 25 Oct 2021",
      "day1": "Monday",
      "title": "30th Match, Super 12 Group. Abu Dhabi",
      "image1": "assets/images/group1.png",
      "img4": "assets/images/ring.png",
      "img2": "assets/images/bn.png",
      "sub": "Bangladesh",
      "img3": "assets/images/en.png",
      "subtitle": "England",
      "subtype": "8:00 PM",
      "titletype": "England Won By 8 Wikets",
    },
    { 
      "id": 2,
      "day": "Monday",
      "date": " 25 Oct 2021",
      "title": "30th Match, Super 12 Group. Abu Dhabi",
      "image1": "assets/images/group1.png",
      "img4": "assets/images/ring.png",
      "img2": "assets/images/bn.png",
      "sub": "Bangladesh",
      "img3": "assets/images/en.png",
      "subtitle": "England",
      "titletype": "England Won By 8 Wikets",
    },
    {
       "id": 3,
      "day": "Monday",
      "date": " 25 Oct 2021",
      "title": "30th Match, Super 12 Group. Abu Dhabi",
      "image1": "assets/images/group1.png",
      "img4": "assets/images/ring.png",
      "img2": "assets/images/bn.png",
      "sub": "Bangladesh",
      "img3": "assets/images/en.png",
      "subtitle": "England",
      "titletype": "England Won By 8 Wikets",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kcolor.background,
      appBar: AppBar(
        backgroundColor: kcolor.appbar,
        title: Row(
          children: [
            Container(
                margin: const EdgeInsets.only(left: 5),
                height: 32,
                width: 32,
                decoration: BoxDecoration(
                  color: kcolor.background,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Image.asset(
                    AssetPath.backicon,
                    height: 12,
                    width: 15,
                  ),
                )),
            const SizedBox(
              width: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tournaments',
                  style: KTextStyle.headline1,
                ),
                SizedBox(
                  width: 123,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 5),
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: kcolor.background,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Container(
                      padding: const EdgeInsets.only(left: 5, right: 5),
                      child: Image.asset(
                        AssetPath.settings,
                        height: 12,
                        width: 15,
                      ),
                    )),
              ],
            ),
          ],
        ),
      ),
      body: DefaultTabController(
        length: 5,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              expandedHeight: 250.0,
              floating: false,
              elevation: 0.0,
              backgroundColor: kcolor.background,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 247,
                          width: 414,
                          decoration: BoxDecoration(
                              color: kcolor.background,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      kcolor.appbar.withOpacity(0.2),
                                      BlendMode.dstATop),
                                  image:
                                      const AssetImage(AssetPath.background))),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                              left: 16, right: 16, top: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 82,
                                width: 82,
                                child: Image.asset(AssetPath.group),
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "ICC Mens T20 World Cup 2021",
                                style: KTextStyle.headline2,
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "26 Oct, 2021 to 26 Oct, 2021 . 1 views",
                                style: KTextStyle.subline,
                              ),
                              SizedBox(
                                height: 24,
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 8),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 10),
                                            child: Image.asset(
                                              AssetPath.plus,
                                              height: 25,
                                              width: 20,
                                            )),
                                        Text(
                                          "Follow",
                                          style: KTextStyle.follow,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 46,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 16),
                                            child: Image.asset(
                                              AssetPath.bar,
                                              height: 25,
                                              width: 20,
                                            )),
                                        Text(
                                          "Insights",
                                          style: KTextStyle.follow,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 38,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          margin: EdgeInsets.only(top: 25),
                                          child: Text(
                                            "Request",
                                            style: KTextStyle.follow,
                                          ),
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 38,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: EdgeInsets.only(left: 16),
                                            child: Image.asset(
                                              AssetPath.share,
                                              height: 25,
                                              width: 20,
                                            )),
                                        Text(
                                          "Share",
                                          style: KTextStyle.follow,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            SliverAppBar(
              pinned: true,
              primary: false,
              elevation: 8.0,
              backgroundColor: kcolor.background,
              title: const TabBar(
                  labelStyle: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      fontFamily: 'poppins',
                      ),
                  labelColor: Colors.white,
                  isScrollable: true,
                  indicatorColor: Colors.yellow,
                  unselectedLabelColor: Color(0xffB9B9BB),
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: [
                    Tab(text: 'Matches'),
                    Tab(text: 'Teams'),
                    Tab(text: 'Sponsors'),
                    Tab(text: 'Points Table'),
                    Tab(text: 'About'),
                  ]),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: 800,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: itemList.length,
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                          
                        ),
                    itemBuilder: (BuildContext context, index) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(     
                            margin: EdgeInsets.only(top: 20),                      
                            height: 43,
                            width: 414,
                            color: kcolor.appbar,
                            child:Container(
                              margin: EdgeInsets.only(left: 16,top: 8),
                              child: RichText(
                                    text: TextSpan(
                                        text: "${itemList[index]["day"]}",
                                        style: KTextStyle.headline4,
                                        children: [
                                      TextSpan(
                                        text: "${itemList[index]["date"]}",
                                        style: KTextStyle.headline5,
                                      )
                                    ])),
                            ), 
                          ),
                          Container(
                           margin: EdgeInsets.only(left: 16,top: 16,right: 16),
                            child: Flexible(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${itemList[index]["title"]}",style: KTextStyle.headline5,),
                                  Container(
                                    child: itemList[index]["id"] == 1
                                    ?Image.asset(
                                      "${itemList[index]["image1"]}",height: 30,width: 30,)
                                      :Container(
                                  padding: EdgeInsets.all(8.0),
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    color: kcolor.yellow.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                  child: Image.asset(
                                    "${itemList[index]["img4"]}",
                                    height: 2,
                                    width: 2,
                                  ),
                                )),
                                  
                                ],
                              ),
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 16,top: 16,),
                            child: Row(
                                      children: [
                                        Image.asset("${itemList[index]["img2"]}",height: 24,width: 32,),
                                        SizedBox(width: 8,),
                                        Text("${itemList[index]["sub"]}",style: KTextStyle.bntext,)
                                      ],
                                    ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 16,top: 16,),
                            child: Row(
                                      children: [
                                        Image.asset("${itemList[index]["img3"]}",height: 24,width: 32,),
                                        SizedBox(width: 8,),
                                        Text("${itemList[index]["subtitle"]}",style: KTextStyle.bntext,)
                                      ],
                                    ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 16,left: 16),
                            child: itemList[index]["id"] == 1
                            ? Text("${itemList[index]["subtype"]}",style: KTextStyle.viewtext,)
                            :Text("${itemList[index]["titletype"]}",style: KTextStyle.headline6,),
                          )
                        ],
                      );
                    },
                  )),
            )
          ],
        ),
      ),
    );
  }
}
