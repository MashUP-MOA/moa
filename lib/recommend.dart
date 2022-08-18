import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'loading.dart';


class RecommendWidget extends StatefulWidget {
  const RecommendWidget({Key? key}) : super(key: key);

  @override _RecommendState createState() => _RecommendState();
}

class _RecommendState extends State<RecommendWidget> {
  List results = [];

  Future getData() async {
    http.Response res = await http.get(Uri.parse('http://10.0.2.2:5000'));
    if (mounted){
      setState(() {
        results = jsonDecode(res.body);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
      body: results.length == 0
        ? LoadingWidget()
        :
        SafeArea(
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
                                          child: Image.asset('assets/disney.png'),
                                        ),
                                        Expanded(
                                          child: Padding(
                                              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 0, 0),
                                              child: Text(
                                                  'Disney +',
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
                                                          '#animation',
                                                          style: TextStyle(
                                                              fontSize: 14,
                                                              fontWeight: FontWeight.w600,
                                                              color: Color.fromRGBO(78, 67, 187, 1.0)
                                                          )
                                                      ),
                                                    ),
                                                    Text(
                                                        '#drama',
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                                child: IconButton(
                                  icon: const Icon(Icons.refresh),
                                  onPressed: () {
                                    getData();
                                  },
                                  color: Colors.white,
                                )
                              ),
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
                                          child: Image.network(
                                            results[0]['image'],
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
                                                results[0]['title'],
                                                style: TextStyle(
                                                  fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[0]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[1]['image'],
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
                                                  results[1]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[1]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[2]['image'],
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
                                                  results[2]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[2]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[3]['image'],
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
                                                  results[3]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[3]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[4]['image'],
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
                                                  results[4]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[4]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[5]['image'],
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
                                                  results[5]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[5]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[6]['image'],
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
                                                  results[6]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[6]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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
                                            results[7]['image'],
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
                                                  results[7]['title'],
                                                  style: TextStyle(
                                                      fontSize: 9,
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
                                                            fontSize: 10,
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
                                                          size: 10,
                                                        )
                                                    ),
                                                    Padding(
                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                        child: Text(
                                                            results[7]['mean'].toString(),
                                                            style: TextStyle(
                                                                color: Color.fromRGBO(78, 67, 187, 1.0),
                                                                fontSize: 10,
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

