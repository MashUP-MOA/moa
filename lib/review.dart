import 'package:flutter/material.dart';
import 'home.dart';

class ReviewWidget extends StatefulWidget {
  const ReviewWidget({Key? key}) : super(key: key);

  @override
  _ReviewWidgetState createState() => _ReviewWidgetState();
}

class _ReviewWidgetState extends State<ReviewWidget> with TickerProviderStateMixin {
  late TabController _tabController;
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,  //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'REVIEW',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromRGBO(75, 57, 239, 1),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
              child: Icon(
                Icons.create,
                color: Colors.white,
                size: 24
              )
            )
          ],
        ),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: 81,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(75, 57, 239, 1),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Color(0x27000000),
                        offset: Offset(0, 3),
                      )
                    ]
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(16, 12, 16, 10),
                        child: TextFormField(
                          controller: textController,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Search products...',
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black38,
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0x00000000),
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(
                              Icons.search_rounded,
                              color: Colors.black38
                            ),
                          ),
                          style: TextStyle(
                            color: Colors.black
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(8, 4, 8, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: MediaQuery.of(context).size.height * 1,
                          decoration: BoxDecoration(
                            color: Colors.white,
                          ),
                          child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                              children: [
                                TabBar(
                                  controller: _tabController,
                                  labelColor: Colors.black,
                                  unselectedLabelColor: Colors.black45,
                                  indicatorColor: Color.fromRGBO(75, 57, 239, 1),
                                  labelStyle: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  tabs: [
                                    Tab(
                                      text: 'All',
                                    ),
                                    Tab(
                                        text: 'Following'
                                    )
                                  ],
                                ),
                                Expanded(
                                  child: TabBarView(
                                    controller: _tabController,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                                        child: Wrap(
                                          spacing: 8,
                                          runSpacing: 8,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                          VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(builder: (context) => const HomeWidget()),
                                                );
                                              },
                                              child: Container(
                                                width: MediaQuery.of(context).size.width * 0.45,
                                                height: 270,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      blurRadius: 4,
                                                      color: Color(0x230E151B),
                                                      offset: Offset(0, 2),
                                                    )
                                                  ],
                                                  borderRadius: BorderRadius.circular(12),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                  child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                            child: Text(
                                                              'chan',
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.w500,
                                                              ),
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                  child: Text(
                                                                      '♥︎ 6',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.w500,
                                                                          color: Colors.redAccent
                                                                      )
                                                                  )
                                                              )
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                      ClipRRect(
                                                          borderRadius: BorderRadius.circular(10),
                                                          child: Image.asset(
                                                            'assets/movie_loveletter.jpeg',
                                                            width: 160,
                                                            height: 160,
                                                            fit: BoxFit.cover,
                                                          )
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                              child: Text(
                                                                'Love Letter',
                                                                style: TextStyle(
                                                                    fontSize: 15,
                                                                    fontWeight: FontWeight.bold
                                                                ),
                                                              )
                                                          ),
                                                          Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                                child: Icon(
                                                                  Icons.star_rounded,
                                                                  color: Color.fromRGBO(75, 57, 239, 1),
                                                                  size: 24,
                                                                ),
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                  child: Text(
                                                                      '4.0',
                                                                      style: TextStyle(
                                                                          color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                          fontSize: 13,
                                                                          fontWeight: FontWeight.w500
                                                                      )
                                                                  )
                                                              )
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Wrap(
                                                        spacing: 0,
                                                        runSpacing: 0,
                                                        alignment: WrapAlignment.start,
                                                        crossAxisAlignment: WrapCrossAlignment.start,
                                                        direction: Axis.horizontal,
                                                        runAlignment:
                                                        WrapAlignment.start,
                                                        verticalDirection:
                                                        VerticalDirection.down,
                                                        clipBehavior: Clip.none,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                              child: Text(
                                                                  '#romance',
                                                                  style: TextStyle(
                                                                      color: Colors.black45,
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                              child: Text(
                                                                  '#japan',
                                                                  style: TextStyle(
                                                                      color: Colors.black45,
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                              child: Text(
                                                                  '#winter',
                                                                  style: TextStyle(
                                                                      color: Colors.black45,
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'hyun',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 11',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_sing2.jpeg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Sing 2',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '5.0',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#animation',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#music',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'ssu',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 7',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_dune.jpg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Dune',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '4.5',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#timothy',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#sf',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#fiction',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'yoon',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 5',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_thor.jpeg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Thor:Ragnarok',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '3.5',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#marvel',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#diney',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#action',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 44),
                                        child: Wrap(
                                          spacing: 8,
                                          runSpacing: 8,
                                          alignment: WrapAlignment.center,
                                          crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                          direction: Axis.horizontal,
                                          runAlignment: WrapAlignment.start,
                                          verticalDirection:
                                          VerticalDirection.down,
                                          clipBehavior: Clip.none,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'min',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 3',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_littlewomen.jpeg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Little Women',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '4.0',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#romance',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#family',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'hyun',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 11',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_sing2.jpeg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Sing 2',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '5.0',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#animation',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#music',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'lee',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 4',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_yourname.jpeg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Your Name',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '3.0',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#animation',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#japan',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#timewarp',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: MediaQuery.of(context).size.width * 0.45,
                                              height: 270,
                                              decoration: BoxDecoration(
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    blurRadius: 4,
                                                    color: Color(0x230E151B),
                                                    offset: Offset(0, 2),
                                                  )
                                                ],
                                                borderRadius: BorderRadius.circular(12),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 5),
                                                          child: Text(
                                                            'hoo',
                                                            style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w500,
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 2',
                                                                    style: TextStyle(
                                                                        fontSize: 14,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    ClipRRect(
                                                        borderRadius: BorderRadius.circular(10),
                                                        child: Image.asset(
                                                          'assets/movie_kissingbooth.jpg',
                                                          width: 160,
                                                          height: 160,
                                                          fit: BoxFit.cover,
                                                        )
                                                    ),
                                                    Row(
                                                      mainAxisSize: MainAxisSize.max,
                                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 12, 0, 0),
                                                            child: Text(
                                                              'Kissing Booth',
                                                              style: TextStyle(
                                                                  fontSize: 15,
                                                                  fontWeight: FontWeight.bold
                                                              ),
                                                            )
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(75, 57, 239, 1),
                                                                size: 24,
                                                              ),
                                                            ),
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 5, 0),
                                                                child: Text(
                                                                    '2.5',
                                                                    style: TextStyle(
                                                                        color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500
                                                                    )
                                                                )
                                                            )
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Wrap(
                                                      spacing: 0,
                                                      runSpacing: 0,
                                                      alignment: WrapAlignment.start,
                                                      crossAxisAlignment: WrapCrossAlignment.start,
                                                      direction: Axis.horizontal,
                                                      runAlignment:
                                                      WrapAlignment.start,
                                                      verticalDirection:
                                                      VerticalDirection.down,
                                                      clipBehavior: Clip.none,
                                                      children: [
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#romance',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#japan',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                        Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                            child: Text(
                                                                '#winter',
                                                                style: TextStyle(
                                                                    color: Colors.black45,
                                                                    fontSize: 13,
                                                                    fontWeight: FontWeight.w500
                                                                )
                                                            )
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}
