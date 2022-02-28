import 'package:bowling_app/constant/asset_path.dart';
import 'package:bowling_app/style/k_color.dart';
import 'package:bowling_app/style/k_text_style.dart';
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import '../../model/data_consumption.dart';
import 'data_cart.dart';

class BowlingDoneScreen extends StatefulWidget {
  const BowlingDoneScreen({Key? key}) : super(key: key);

  @override
  _BowlingDoneScreenState createState() => _BowlingDoneScreenState();
}

class _BowlingDoneScreenState extends State<BowlingDoneScreen> {
  List itemList = [
    {
      "sr": "1",
      "date": "28/10/21",
      "innings": "Team B (Rcau25) Vs Team C (Rcau15)",
      "O-M-R-W": "6-0-25-2",
      "Total Ov": "50",
    },
    {
      "sr": "2",
      "date": "28/10/21",
      "innings": "Team B (Rcau25) Vs Team C (Rcau15)",
      "O-M-R-W": "6-0-25-2",
      "Total Ov": "50",
    },
    {
      "sr": "3",
      "date": "28/10/21",
      "innings": "Team B (Rcau25) Vs Team C (Rcau15)",
      "O-M-R-W": "6-0-25-2",
      "Total Ov": "50",
    },
    {
      "sr": "4",
      "date": "28/10/21",
      "innings": "Team B (Rcau25) Vs Team C (Rcau15)",
      "O-M-R-W": "6-0-25-2",
      "Total Ov": "50",
    },
  ];
  List topicList = [
    {
      "digit": "8",
      "type": "Total wickets in last innings",
    },
    {
      "digit": "2",
      "type": "LBW out of 8 wickests",
    },
    {
      "digit": "2",
      "type": "Boundaries given in last 5 innings",
    },
  ];
  List gridList = [
    {
      "digit": "6W",
      "title": "RHB",
      "subtitle": "Last 5 Innings",
    },
    {
      "digit": "2W",
      "title": "LHB",
      "subtitle": "Last 5 Innings",
    },
    {
      "digit": "29",
      "title": "4s",
      "subtitle": "Last 5 Innings",
    },
    {
      "digit": "5",
      "title": "6s",
      "subtitle": "Last 5 Innings",
    },
  ];

  int selectedValue = 0;

  final List<DataConsumption> data = [
    DataConsumption(
      number: '1',
      dataInGb: 10,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ),
    DataConsumption(
      number: '3',
      dataInGb: 10,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ),
    DataConsumption(
      number: '5',
      dataInGb: 8,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ),
    DataConsumption(
      number: '7',
      dataInGb: 6,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ),
    DataConsumption(
      number: '8',
      dataInGb: 2,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ), 
    DataConsumption(
      number: '9',
      dataInGb: 4,
      barColor: charts.ColorUtil.fromDartColor(kcolor.purple),
    ),
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
              Text(
                'Shahenshah Afridi',
                style: KTextStyle.headline1,
              ),
            ],
          ),
        ),
        body: DefaultTabController(
          length: 4,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 164.0,
                //pinned: true,
                floating: false,
                elevation: 0.0,
                backgroundColor: kcolor.background,
                flexibleSpace: FlexibleSpaceBar(
                  background: Column(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 164,
                            width: 414,
                            decoration: BoxDecoration(
                                color: kcolor.background,
                                image: DecorationImage(
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        kcolor.appbar.withOpacity(0.6),
                                        BlendMode.dstATop),
                                    image:
                                        const AssetImage(AssetPath.backimage))),
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                                left: 16, right: 16, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      height: 82,
                                      width: 82,
                                      child: Image.asset(AssetPath.men),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(bottom: 35),
                                      child: TextButton(
                                          onPressed: () {},
                                          child: const Text(
                                            'Follow',
                                          ),
                                          style: ButtonStyle(
                                              side: MaterialStateProperty.all(
                                                  const BorderSide(
                                                      width: 1,
                                                      color: Colors.yellow)),
                                              foregroundColor:
                                                  MaterialStateProperty.all(
                                                      Colors.white),
                                              textStyle:
                                                  MaterialStateProperty.all(
                                                      const TextStyle(
                                                          fontSize: 12)))),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'S Afridi',
                                          style: KTextStyle.headline2,
                                        ),
                                        Text(
                                          'Pakistan',
                                          style: KTextStyle.subline,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 75,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Left Arm Fast',
                                          style: KTextStyle.headline2,
                                        ),
                                        Text(
                                          'Bolwing',
                                          style: KTextStyle.subline,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          'Left Hand',
                                          style: KTextStyle.headline2,
                                        ),
                                        Text(
                                          'Batting',
                                          style: KTextStyle.subline,
                                        )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
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
                    labelStyle:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    labelColor: Colors.white,
                    isScrollable: true,
                    indicatorColor: Colors.yellow,
                    unselectedLabelColor: Color(0xffB9B9BB),
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      Tab(text: 'Batting'),
                      Tab(text: 'Bowling'),
                      Tab(text: 'Compare'),
                      Tab(text: 'Face-off'),
                    ]),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 1570,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        color: kcolor.appbar,
                        height: 43,
                        width: 414,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Text(
                                'Current Form',
                                style: KTextStyle.headline1,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 135),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: kcolor.background,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Image.asset(
                                    AssetPath.vector,
                                    height: 14,
                                    width: 16,
                                  )),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: kcolor.background,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Image.asset(
                                    AssetPath.union,
                                    height: 14,
                                    width: 16,
                                  )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 16),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Sr',
                                style: KTextStyle.subline,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 17),
                              child: Text(
                                'Date',
                                style: KTextStyle.subline,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 44),
                              child: Text(
                                'Innings',
                                style: KTextStyle.subline,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 60),
                              child: Text(
                                'O-M-R-W',
                                style: KTextStyle.subline,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                left: 35,
                              ),
                              child: Text(
                                'Total\nOv ',
                                style: KTextStyle.subline,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Divider(
                        height: 1,
                        thickness: 1,
                        color: kcolor.divider.withOpacity(0.1),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 260,
                        child: ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: itemList.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.only(left: 16, top: 16),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "${itemList[index]["sr"]}",
                                        style: KTextStyle.subline,
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "${itemList[index]["date"]}",
                                          style: KTextStyle.subline,
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          children: [
                                            Container(
                                              margin: const EdgeInsets.only(
                                                  left: 25),
                                              child: Text(
                                                "${itemList[index]["innings"]}",
                                                style: KTextStyle.subline,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 20),
                                        child: Text(
                                          "${itemList[index]["O-M-R-W"]}",
                                          style: KTextStyle.subline,
                                        ),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 20, right: 15),
                                        child: Text(
                                          "${itemList[index]["Total Ov"]}",
                                          style: KTextStyle.subline,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                          separatorBuilder: (context, index) {
                            return Container(
                              margin: const EdgeInsets.only(top: 16),
                              child: Divider(
                                height: 1,
                                thickness: 1,
                                color: kcolor.divider.withOpacity(0.1),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: Container(
                              height: 2,
                              width: 180,
                              color: kcolor.divider.withOpacity(0.1),
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "View All",
                            style: KTextStyle.viewtext,
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Container(
                              height: 2,
                              width: 180,
                              color: kcolor.divider.withOpacity(0.1),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 170,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: topicList.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    left: 15, right: 17, bottom: 16),
                                height: 43,
                                width: 382,
                                color: kcolor.appbar,
                                child: Row(
                                  children: [
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      "${topicList[index]["digit"]}",
                                      style: KTextStyle.digittext,
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    VerticalDivider(
                                      width: 5,
                                      color: kcolor.divider.withOpacity(0.1),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "${topicList[index]["type"]}",
                                      style: KTextStyle.headline3,
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      SizedBox(
                        height: 350,
                        child: GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 2.0,
                                    mainAxisSpacing: 2.0),
                            itemCount: gridList.length,
                            itemBuilder: (BuildContext context, index) {
                              return Container(
                                margin: const EdgeInsets.only(
                                    left: 15, right: 17, bottom: 16, top: 16),
                                color: kcolor.appbar,
                                height: 134,
                                width: 183,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 17, top: 24),
                                      child: Text(
                                        "${gridList[index]["digit"]}",
                                        style: KTextStyle.digttext,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15, right: 17, top: 5),
                                      child: Text(
                                        "${gridList[index]["title"]}",
                                        style: KTextStyle.headline3,
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(
                                          left: 15,
                                          right: 15,
                                          top: 8,
                                          bottom: 24),
                                      child: Text(
                                        "${gridList[index]["subtitle"]}",
                                        style: KTextStyle.subtext,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        color: kcolor.appbar,
                        height: 43,
                        width: 414,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              margin: const EdgeInsets.only(left: 16),
                              child: Text(
                                'Bowling Position',
                                style: KTextStyle.headline1,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 118),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: kcolor.background,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Image.asset(
                                    AssetPath.vector,
                                    height: 14,
                                    width: 16,
                                  )),
                            ),
                            Container(
                              margin: const EdgeInsets.only(left: 8),
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                color: kcolor.background,
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Container(
                                  padding:
                                      const EdgeInsets.only(left: 5, right: 5),
                                  child: Image.asset(
                                    AssetPath.union,
                                    height: 14,
                                    width: 16,
                                  )),
                            )
                          ],
                        ),
                      ),
                      Theme(
                        data: Theme.of(context)
                            .copyWith(unselectedWidgetColor: kcolor.white),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Radio(
                              activeColor: kcolor.yellow,
                              value: 0,
                              groupValue: selectedValue,
                              onChanged: (value) => setState(() {
                                selectedValue = 0;
                              }),
                            ),
                            Text(
                              "All",
                              style: KTextStyle.radiotext,
                            ),
                            Radio(
                              activeColor: kcolor.yellow,
                              value: 1,
                              groupValue: selectedValue,
                              onChanged: (value) => setState(() {
                                selectedValue = 1;
                              }),
                            ),
                            Text(
                              "Slot-wise",
                              style: KTextStyle.radiotext,
                            ),
                          ],
                        ),
                      ),
                      // const SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          // Column(
                          //   crossAxisAlignment: CrossAxisAlignment.start,
                          //   children: [
                          //     Container(
                          //       margin: const EdgeInsets.only(left: 15),
                          //       height: 44,
                          //       width: 1,
                          //       color: Colors.white.withOpacity(0.2),
                          //     ),
                          //     const SizedBox(
                          //       height: 8,
                          //     ),
                          //     Container(
                          //       margin: const EdgeInsets.only(left: 6),
                          //       child: RotatedBox(
                          //         quarterTurns: -1,
                          //         child: Text('Over Count',
                          //             style: TextStyle(
                          //                 fontSize: 12,
                          //                 fontWeight: FontWeight.w400,
                          //                 fontStyle: FontStyle.normal,
                          //                 color:
                          //                     kcolor.white.withOpacity(0.6))),
                          //       ),
                          //     ),
                          //     const SizedBox(
                          //       height: 8,
                          //     ),
                          //     Container(
                          //       margin: const EdgeInsets.only(left: 15),
                          //       height: 44,
                          //       width: 1,
                          //       color: Colors.white.withOpacity(0.2),
                          //     ),
                          //   ],
                          // ),
                          Expanded(
                            child: DataChart(
                              data: data,
                            ),
                            
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
