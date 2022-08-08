import 'package:flutter/material.dart';

class RecommendWidget extends StatelessWidget {
  const RecommendWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SMART RECOMMEND',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Color.fromRGBO(75, 57, 239, 1),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                  child: Container(
                    width: 350,
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
                          padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 10),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                child: Text(
                                  'It is recommended based on your review and viewing records.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 11
                                  )
                                ),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'OTT recommend',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700,
                                )
                              )
                            ],
                          )
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15, 15, 15, 15),
                              child: Container(
                                width: 350,
                                height: 70,
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
                                        child: Image.asset('assets/netflix.png'),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                          child: Text(
                                            'Netflix',
                                            style: TextStyle(
                                                fontSize: 17,
                                                fontWeight: FontWeight.bold
                                            )
                                          )
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            const Text(
                                              'Keyword',
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
                                                      '#movie',
                                                      style: TextStyle(
                                                          fontSize: 14,
                                                          fontWeight: FontWeight.w600,
                                                          color: Color.fromRGBO(78, 67, 187, 1.0)
                                                      )
                                                  ),
                                                ),
                                                Text(
                                                  '#original',
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
                                  )
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 15),
                              child: Container(
                                width: 350,
                                height: 70,
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
                                          child: Image.asset('assets/wavve.png'),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                  'Wavve',
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      fontWeight: FontWeight.bold
                                                  )
                                              )
                                          ),
                                        ),
                                        Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                const Text(
                                                  'Keyword',
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
                                                          '#drama',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w600,
                                                              color: Color.fromRGBO(78, 67, 187, 1.0)
                                                          )
                                                      ),
                                                    ),
                                                    Text(
                                                        '#entertainment',
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
                                    )
                                ),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: Text(
                                  'Contents Recommend',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                  )
                                ),
                              )
                            ],
                          )
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                          child: Wrap(
                            spacing: 0,
                            runSpacing: 0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
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
                                          child: Image.asset(
                                            'assets/movie_crazyrich.jpeg',
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
                                                'Crazy Rich Asians',
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
                                                            '3.9',
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
                                          child: Image.asset(
                                            'assets/movie_fromtoday.jpeg',
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
                                                  'From Today',
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
                                                        'Wavve',
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
                                                            '4.1',
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
                                          child: Image.asset(
                                            'assets/movie_kiss.jpeg',
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
                                                  'A Playful Kiss',
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
                                                        'Wavve',
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
                                                            '3.7',
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
                                          child: Image.asset(
                                            'assets/movie_bridgerton.jpeg',
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
                                                  'Bridgerton',
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
                                          child: Image.asset(
                                            'assets/movie_ladybird.jpeg',
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
                                                  'Lady Bird',
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
                                          child: Image.asset(
                                            'assets/movie_augustrush.jpg',
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
                                                  'August Rush',
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
                                                        'Neflix',
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
                                          child: Image.asset(
                                            'assets/drama_sanae.jpeg',
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
                                                  'An In-house Meeting',
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
                                                        'Wavve',
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
                                                            '3.8',
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
                                          child: Image.asset(
                                            'assets/drama_brams.jpeg',
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
                                                  'Do you like Brahms?',
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
                                                        'Wavve',
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
                                                            '4.1',
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
                          )
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          )
        ),
      )
    );
  }
}

