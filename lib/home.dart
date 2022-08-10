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
                                  'Welcome, ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                  child: Text(
                                    'JISU!',
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
                        height: 265,
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
                              Color.fromRGBO(73, 77, 234, 1.0),
                              Color.fromRGBO(58, 208, 192, 1.0),
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
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "Today's Recommend",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white
                                    )
                                  )
                                ],
                              )
                            ),
                            Expanded(
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                                child: ListView(
                                  padding: EdgeInsets.zero,
                                  primary: false,
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 140,
                                        height: 190,
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
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(
                                                  'https://resizing.flixster.com/5IJ0ez1JUJvg_1jshfxawRj3i-o=/180x258/v2/https://resizing.flixster.com/1-wvTp-iuqaDikrorqZBaYQdFvo=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzkzYTk5ZTVjLWJmYjYtNGYxYS1hMzQzLTI0NTAyNGNhMDVhYy5qcGc=',
                                                  width: 140,
                                                  height: 140,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                    child: Text(
                                                        'WEST SIDE STORY',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold
                                                        )
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                          child: Text(
                                                              'Disney',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.deepOrangeAccent
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                size: 12,
                                                              )
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  '4.8',
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 140,
                                        height: 190,
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
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(
                                                  'https://resizing.flixster.com/M7gpkkiPbqN16wAU07WxMl-DNEo=/180x258/v2/https://resizing.flixster.com/9MUxWQfhY5QCNDpeaFq5up8z9Ug=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzQ0MGFlNTQ5LTRkMzAtNDNhMi1hZDZlLTVmMzA5YTAyNzcyNC5qcGc=',
                                                  width: 140,
                                                  height: 140,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                    child: Text(
                                                        'PERSUASION',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold
                                                        )
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                          child: Text(
                                                              'Netflix',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.deepOrangeAccent
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                size: 12,
                                                              )
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  '4.8',
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                      child: Container(
                                        width: 140,
                                        height: 190,
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
                                              ClipRRect(
                                                borderRadius: BorderRadius.circular(10),
                                                child: Image.network(
                                                  'https://resizing.flixster.com/ha1tQmzVp2tUMeRoGuapifrojpw=/180x258/v2/https://resizing.flixster.com/ydPRPZqSxAkNVAyzRUv0HmWt2iA=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2JkYWVlN2U5LTM1MWMtNGViZC1hMzNiLThkYTk3NzRhZDIzNC5qcGc=',
                                                  width: 140,
                                                  height: 140,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                    child: Text(
                                                        'DARLINGS',
                                                        style: TextStyle(
                                                            fontSize: 14,
                                                            fontWeight: FontWeight.bold
                                                        )
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                          child: Text(
                                                              'Netflix',
                                                              style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.deepOrangeAccent
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Icon(
                                                                Icons.star_rounded,
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                size: 12,
                                                              )
                                                          ),
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  '4.3',
                                                                  style: TextStyle(
                                                                      color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500
                                                                  )
                                                              )
                                                          )
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100,
                          height: 300,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(3, 0, 0, 0),
                                        child: Text(
                                          '#romance ',
                                          style: TextStyle(
                                            fontSize: 18,
                                            color: Color.fromRGBO(78, 67, 187, 1.0),
                                            fontWeight: FontWeight.w600
                                          )
                                        )
                                      ),
                                      Expanded(
                                          child: Text(
                                              ' review collection',
                                              style: TextStyle(
                                                fontSize: 17,
                                              )
                                          )
                                      ),
                                      Icon(
                                        Icons.replay,
                                        color: Colors.black38,
                                        size: 24,
                                      ),
                                    ]
                                  )
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Container(
                                            width: 140,
                                            height: 220,
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
                                                              'ren',
                                                              style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight: FontWeight.w500,
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 7',
                                                                    style: TextStyle(
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            ),

                                                          ]
                                                      )
                                                    ],
                                                  ),
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.asset(
                                                      'assets/movie_amel.jpeg',
                                                      width: 140,
                                                      height: 140,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Text(
                                                            'Amelie',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.bold
                                                            )
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  'Watcha',
                                                                  style: TextStyle(
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Colors.deepOrangeAccent
                                                                  )
                                                              )
                                                          ),
                                                          Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                  child: Icon(
                                                                    Icons.star_rounded,
                                                                    color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                    size: 12,
                                                                  )
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Container(
                                            width: 140,
                                            height: 220,
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
                                                              'mark',
                                                              style: TextStyle(
                                                                fontSize: 13,
                                                                fontWeight: FontWeight.w500,
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                              child: Text(
                                                                  '♥︎ 11',
                                                                style: TextStyle(
                                                                  fontSize: 13,
                                                                  fontWeight: FontWeight.w500,
                                                                  color: Colors.redAccent
                                                                )
                                                              )
                                                          ),

                                                        ]
                                                      )
                                                    ],
                                                  ),
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.asset(
                                                      'assets/movie_flipped.jpeg',
                                                      width: 140,
                                                      height: 140,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Text(
                                                            'Flipped',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.bold
                                                            )
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  'Netflix',
                                                                  style: TextStyle(
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Colors.deepOrangeAccent
                                                                  )
                                                              )
                                                          ),
                                                          Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                  child: Icon(
                                                                    Icons.star_rounded,
                                                                    color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                    size: 12,
                                                                  )
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                          child: Container(
                                            width: 140,
                                            height: 220,
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
                                                                fontSize: 13,
                                                                fontWeight: FontWeight.w500,
                                                              )
                                                          )
                                                      ),
                                                      Row(
                                                          mainAxisSize: MainAxisSize.max,
                                                          children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 3, 0),
                                                                child: Text(
                                                                    '♥︎ 6',
                                                                    style: TextStyle(
                                                                        fontSize: 13,
                                                                        fontWeight: FontWeight.w500,
                                                                        color: Colors.redAccent
                                                                    )
                                                                )
                                                            ),

                                                          ]
                                                      )
                                                    ],
                                                  ),
                                                  ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.asset(
                                                      'assets/movie_loveletter.jpeg',
                                                      width: 140,
                                                      height: 140,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                                                        child: Text(
                                                            'Love Letter',
                                                            style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight: FontWeight.bold
                                                            )
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize: MainAxisSize.max,
                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                              child: Text(
                                                                  'Watcha',
                                                                  style: TextStyle(
                                                                      fontSize: 13,
                                                                      fontWeight: FontWeight.w500,
                                                                      color: Colors.deepOrangeAccent
                                                                  )
                                                              )
                                                          ),
                                                          Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            mainAxisAlignment: MainAxisAlignment.end,
                                                            children: [
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                  child: Icon(
                                                                    Icons.star_rounded,
                                                                    color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                    size: 12,
                                                                  )
                                                              ),
                                                              Padding(
                                                                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                )
                              ],
                            )
                          )
                        )
                      )
                    ],
                  )
                )
              ],
            )
        ),
      ),
    );
  }
}

