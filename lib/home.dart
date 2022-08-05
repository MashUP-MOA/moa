import 'package:flutter/material.dart';

class HomeWidget extends StatelessWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'M O A',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(75, 57, 239, 1),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 20, 16, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(2, 2, 2, 2),
                              child: Container(
                                width: 60,
                                height: 60,
                                clipBehavior: Clip.antiAlias,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Image.asset(
                                  'assets/profile.png',
                                ),
                              ),
                            ),
                          ),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              children: const [
                                Text(
                                  '환영합니다, ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                  child: Text(
                                    '김지수님!',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color.fromRGBO(75, 57, 239, 1),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.92,
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                color: Color(0x4B1A1F24),
                                offset: Offset(0, 2),
                              )
                            ],
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(255, 46, 135, 1.0),
                                Color.fromRGBO(95, 85, 255, 1.0),
                              ],
                              stops: [0, 1],
                              begin: AlignmentDirectional(0.94, -1),
                              end: AlignmentDirectional(-0.94, 1),
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          '구독 내역',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )
                                      ],
                                    )
                                ),
                                Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(20, 10, 20, 20),
                                    child: Container(
                                      width: 350,
                                      height: 160,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                    child: Container(
                                                      width: 45,
                                                      height: 45,
                                                      clipBehavior: Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset('assets/netflix.png'),
                                                    )
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                const Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                  child: Text(
                                                                    '넷플릭스',
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 14,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize: MainAxisSize.max,
                                                                  children: const [
                                                                    Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                        child: Text(
                                                                          '결제일',
                                                                          style: TextStyle(
                                                                            fontSize: 14,
                                                                          ),
                                                                        )
                                                                    ),
                                                                    Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                                                        child: Text(
                                                                            '08.16',
                                                                            style: TextStyle(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                            )
                                                                        )
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                    child: Text(
                                                                      '베이식',
                                                                      style: TextStyle(
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.normal,
                                                                      ),
                                                                    )
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                                                    child: Text(
                                                                        '₩9,500',
                                                                        style: TextStyle(
                                                                            fontSize: 13,
                                                                            fontWeight: FontWeight.w700,
                                                                            color: Color.fromRGBO(78, 67, 187, 1.0)
                                                                        )
                                                                    )
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                    )
                                                )
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                                                    child: Container(
                                                      width: 45,
                                                      height: 45,
                                                      clipBehavior: Clip.antiAlias,
                                                      decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                      ),
                                                      child: Image.asset('assets/disney.png'),
                                                    )
                                                ),
                                                Expanded(
                                                    child: Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.max,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              crossAxisAlignment: CrossAxisAlignment.center,
                                                              children: [
                                                                const Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                  child: Text(
                                                                    '디즈니플러스',
                                                                    style: TextStyle(
                                                                      fontWeight: FontWeight.w700,
                                                                      fontSize: 14,
                                                                    ),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  mainAxisSize: MainAxisSize.max,
                                                                  children: const [
                                                                    Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                        child: Text(
                                                                          '결제일',
                                                                          style: TextStyle(
                                                                            fontSize: 14,
                                                                          ),
                                                                        )
                                                                    ),
                                                                    Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                                                        child: Text(
                                                                            '08.22',
                                                                            style: TextStyle(
                                                                              fontSize: 14,
                                                                              fontWeight: FontWeight.w600,
                                                                            )
                                                                        )
                                                                    )
                                                                  ],
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisSize: MainAxisSize.max,
                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                    child: Text(
                                                                      '4인 이용권',
                                                                      style: TextStyle(
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.normal,
                                                                      ),
                                                                    )
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                                                    child: Text(
                                                                        '₩2,475',
                                                                        style: TextStyle(
                                                                            fontSize: 13,
                                                                            fontWeight: FontWeight.w700,
                                                                            color: Color.fromRGBO(78, 67, 187, 1.0)
                                                                        )
                                                                    )
                                                                )
                                                              ],
                                                            )
                                                          ],
                                                        )
                                                    )
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Text(
                                          '이번 달 구독료',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 13,
                                              fontWeight: FontWeight.w600
                                          )
                                      )
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 20),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                          '11,975원',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 19,
                                          )
                                      )
                                    ],
                                  ),
                                )
                              ]
                          ),
                        )
                      ],
                    )
                ),
                const Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(15, 20, 0, 0),
                    child: Text(
                        '이런 플랫폼은 어때요?',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        )
                    )
                ),
                Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Container(
                      width: 350,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(242, 244, 248, 1.0),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                          child: Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 2),
                                  )
                                ]
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                      width: 45,
                                      height: 45,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.asset('assets/tving.png')
                                  ),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                        child: Text(
                                            '티빙',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold
                                            )
                                        ),

                                      )
                                  ),
                                  Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            '키워드',
                                            style: TextStyle(
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.end,
                                            children: const [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                child: Text(
                                                    '#한국예능',
                                                    style: TextStyle(
                                                        fontSize: 14,
                                                        fontWeight: FontWeight.w600,
                                                        color: Color.fromRGBO(78, 67, 187, 1.0)
                                                    )
                                                ),
                                              ),
                                              Text(
                                                  '#오리지널콘텐츠',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w600,
                                                      color: Color.fromRGBO(78, 67, 187, 1.0)
                                                  )
                                              )
                                            ],
                                          )
                                        ],
                                      )
                                  )
                                ],
                              ),
                            ),
                          )
                      ),
                    )
                )
              ],
            )
        ),
      ),
    );
  }
}

