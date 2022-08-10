import 'package:flutter/material.dart';

class MypageWidget extends StatefulWidget {
  const MypageWidget({Key? key}) : super(key: key);

  @override _MypageState createState() => _MypageState();
}

class _MypageState extends State<MypageWidget> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,  //vsync에 this 형태로 전달해야 애니메이션이 정상 처리됨
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Page',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Color.fromRGBO(75, 57, 239, 1),
          elevation: 0,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.8,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, -2),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0),
                      bottomRight: Radius.circular(0),
                      topLeft: Radius.circular(16),
                      topRight: Radius.circular(16),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(24, 24, 24, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                  width: 76,
                                  height: 76,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset('assets/profile.png')
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                              child: Text(
                                  'JISU',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                            )
                          ],
                        ),
                        Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 5, 16, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                          child: Text(
                                              'followers',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500
                                              )
                                          )
                                      ),
                                      Text(
                                        '15',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500
                                        ),
                                      ),
                                      Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 5, 0),
                                          child: Text(
                                              'following',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500
                                              )
                                          )
                                      ),
                                      Text(
                                        '17',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            )
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 8, 0),
                                child: Text(
                                    '#romance #comedy #movie',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black38
                                    )
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                            child: Container(
                                height: MediaQuery.of(context).size.height * 0.8,
                                decoration: BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
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
                                              text: 'My Reviews',
                                            ),
                                            Tab(
                                                text: 'Subscribes'
                                            )
                                          ],
                                        ),
                                        Expanded(
                                          child: TabBarView(
                                            controller: _tabController,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                                child: GridView(
                                                  padding: EdgeInsets.zero,
                                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 3,
                                                    crossAxisSpacing: 10,
                                                    mainAxisSpacing: 10,
                                                    childAspectRatio: 1,
                                                  ),
                                                  scrollDirection: Axis.vertical,
                                                  children: [
                                                    InkWell(
                                                      onTap: () {
                                                        Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                      },
                                                      child: Hero(
                                                        tag: 'image1',
                                                        transitionOnUserGestures: true,
                                                        child: ClipRRect(
                                                          borderRadius: BorderRadius.circular(12),
                                                          child: Image.asset(
                                                            'assets/mypage_topgun.jpeg',
                                                            width: 100,
                                                            height: 100,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        )
                                                      )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image2',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_totoro.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image3',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_tomboy.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image4',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_sing.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image5',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_pipa.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image6',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_jjanggo.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image5',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_greenbook.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                    InkWell(
                                                        onTap: () {
                                                          Scaffold.of(context).showSnackBar(SnackBar(content: Text('Tap')));
                                                        },
                                                        child: Hero(
                                                            tag: 'image5',
                                                            transitionOnUserGestures: true,
                                                            child: ClipRRect(
                                                              borderRadius: BorderRadius.circular(12),
                                                              child: Image.asset(
                                                                'assets/mypage_alice.jpeg',
                                                                width: 100,
                                                                height: 100,
                                                                fit: BoxFit.cover,
                                                              ),
                                                            )
                                                        )
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 20),
                                                child: Container(
                                                  width: 100,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                    color: Colors.white
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                    child: Column(
                                                      mainAxisSize: MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Container(
                                                              width: 100,
                                                              height: 150,
                                                              decoration: BoxDecoration(
                                                                color: Colors.white,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                    child: Container(
                                                                      width: 60,
                                                                      height: 60,
                                                                      clipBehavior: Clip.antiAlias,
                                                                      decoration: BoxDecoration(
                                                                        shape: BoxShape.circle,
                                                                      ),
                                                                      child: Image.asset('assets/tving.png'),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Tving',
                                                                    style: TextStyle(
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    '12, August',
                                                                    style: TextStyle(
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal
                                                                    )
                                                                  ),
                                                                  Text(
                                                                    '\$ 8.00',
                                                                    style: TextStyle(
                                                                      fontSize: 14,
                                                                      fontWeight: FontWeight.normal
                                                                    )
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 100,
                                                              height: 150,
                                                              decoration: BoxDecoration(
                                                                color: Colors.white,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                    child: Container(
                                                                      width: 60,
                                                                      height: 60,
                                                                      clipBehavior: Clip.antiAlias,
                                                                      decoration: BoxDecoration(
                                                                        shape: BoxShape.circle,
                                                                      ),
                                                                      child: Image.asset('assets/wavve.png'),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Wavve',
                                                                    style: TextStyle(
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                      '20, August',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.normal
                                                                      )
                                                                  ),
                                                                  Text(
                                                                      '\$ 7.50',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.normal
                                                                      )
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 100,
                                                              height: 150,
                                                              decoration: BoxDecoration(
                                                                color: Colors.white,
                                                              ),
                                                              child: Column(
                                                                mainAxisSize: MainAxisSize.max,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                                                    child: Container(
                                                                      width: 60,
                                                                      height: 60,
                                                                      clipBehavior: Clip.antiAlias,
                                                                      decoration: BoxDecoration(
                                                                        shape: BoxShape.circle,
                                                                      ),
                                                                      child: Image.asset('assets/cupang.png'),
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                    'Cupang',
                                                                    style: TextStyle(
                                                                      fontSize: 15,
                                                                      fontWeight: FontWeight.w500,
                                                                    ),
                                                                  ),
                                                                  Text(
                                                                      '25, August',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.normal
                                                                      )
                                                                  ),
                                                                  Text(
                                                                      '\$ 3.50',
                                                                      style: TextStyle(
                                                                          fontSize: 14,
                                                                          fontWeight: FontWeight.normal
                                                                      )
                                                                  )
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          crossAxisAlignment: CrossAxisAlignment.end,
                                                          children: [
                                                            Text(
                                                              'total  ',
                                                              style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight: FontWeight.w500
                                                              )
                                                            ),
                                                            Text(
                                                              '\$ 19.00',
                                                              style: TextStyle(
                                                                fontSize: 22,
                                                                fontWeight: FontWeight.bold,
                                                                color: Color.fromRGBO(78, 67, 187, 1.0)
                                                              )
                                                            )
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 70, 5, 5),
                                                          child: Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            crossAxisAlignment: CrossAxisAlignment.end,
                                                            children: [
                                                              ElevatedButton(
                                                                onPressed: () {},
                                                                child: Text(
                                                                    'EDIT SUBSCRIBE'
                                                                ),
                                                                style: ElevatedButton.styleFrom(
                                                                  primary: Color.fromRGBO(78, 67, 187, 1.0)
                                                                )
                                                              )
                                                            ],
                                                          )
                                                        )
                                                      ],
                                                    )
                                                  ),
                                                )
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                            )
                        )
                      ],
                    ),
                  ),
                )
            )
          ],
        )
    );
  }
}