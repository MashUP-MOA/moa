import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class RatingWidget extends StatefulWidget {
  const RatingWidget({Key? key}) : super(key: key);

  @override _RatingState createState() => _RatingState();
}

class _RatingState extends State<RatingWidget> {
  double? ratingBarValue1;
  double? ratingBarValue2;
  double? ratingBarValue3;
  double? ratingBarValue4;
  double? ratingBarValue5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'MOVIE RATING',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.8,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: 310,
                            height: 110,
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
                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/movie_ladybird.jpeg',
                                      width: 80,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                                          child: Text(
                                            'Lady Bird',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) => setState(() =>
                                              ratingBarValue1 = newValue),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star_rounded,
                                              color: Color.fromRGBO(75, 57, 239, 1),
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: ratingBarValue1 ??= 0,
                                            unratedColor: Color(0xFF9E9E9E),
                                            itemCount: 5,
                                            itemSize: 40,
                                            glowColor: Color.fromRGBO(75, 57, 239, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: 310,
                            height: 110,
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
                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/movie_johnwick.jpeg',
                                      width: 80,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                                          child: Text(
                                            'John Wick',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) => setState(() =>
                                            ratingBarValue2 = newValue),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star_rounded,
                                              color: Color.fromRGBO(75, 57, 239, 1),
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: ratingBarValue2 ??= 0,
                                            unratedColor: Color(0xFF9E9E9E),
                                            itemCount: 5,
                                            itemSize: 40,
                                            glowColor: Color.fromRGBO(75, 57, 239, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: 310,
                            height: 110,
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
                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/movie_hansan.jpeg',
                                      width: 80,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                                          child: Text(
                                            'Han San',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) => setState(() =>
                                            ratingBarValue3 = newValue),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star_rounded,
                                              color: Color.fromRGBO(75, 57, 239, 1),
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: ratingBarValue3 ??= 0,
                                            unratedColor: Color(0xFF9E9E9E),
                                            itemCount: 5,
                                            itemSize: 40,
                                            glowColor: Color.fromRGBO(75, 57, 239, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: 310,
                            height: 110,
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
                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/movie_notebook.jpg',
                                      width: 80,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                                          child: Text(
                                            'Notebook',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) => setState(() =>
                                            ratingBarValue4 = newValue),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star_rounded,
                                              color: Color.fromRGBO(75, 57, 239, 1),
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: ratingBarValue4 ??= 0,
                                            unratedColor: Color(0xFF9E9E9E),
                                            itemCount: 5,
                                            itemSize: 40,
                                            glowColor: Color.fromRGBO(75, 57, 239, 1),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Container(
                            width: 310,
                            height: 110,
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
                              padding: EdgeInsetsDirectional.fromSTEB(8, 8, 8, 8),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.asset(
                                      'assets/movie_abouttime.jpeg',
                                      width: 80,
                                      height: 105,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Expanded(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 15, 0, 0),
                                          child: Text(
                                            'About Time',
                                            style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:  EdgeInsetsDirectional.fromSTEB(5, 5, 0, 0),
                                          child: RatingBar.builder(
                                            onRatingUpdate: (newValue) => setState(() =>
                                            ratingBarValue5 = newValue),
                                            itemBuilder: (context, index) => Icon(
                                              Icons.star_rounded,
                                              color: Color.fromRGBO(75, 57, 239, 1),
                                            ),
                                            direction: Axis.horizontal,
                                            initialRating: ratingBarValue5 ??= 0,
                                            unratedColor: Color(0xFF9E9E9E),
                                            itemCount: 5,
                                            itemSize: 40,
                                            glowColor: Color.fromRGBO(75, 57, 239, 1),
                                          ),
                                        )
                                      ],
                                    ),
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
    );
  }
}

