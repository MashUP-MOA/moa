import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class ReviewInfoWidget extends StatefulWidget{
    const ReviewInfoWidget({Key? key}) : super(key:key);

    @override
    _ReviewInfoWidgetState createState() => _ReviewInfoWidgetState();
}

class _ReviewInfoWidgetState extends State<ReviewInfoWidget> {
    final ScaffoldKey = GlobalKey<ScaffoldState>();

    @override 
    Widget build(BuildContext context) {
        return Scaffold(
            key: ScaffoldKey,
            backgroundColor: Color(0xffFFFFFF),//secondaryBackground
            floatingActionButton: FloatingActionButton(
                onPressed:(){
                    print("FloatingActionButton pressed...");
                },
                backgroundColor: Color(0xff4B39EF),//primaryColor
                elevation: 8,
                child: Icon(
                    Icons.create_rounded,
                    color: Colors.white,
                    size: 24,
                ),
            ),
            body: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                    Container(
                        width: MediaQuery.of(context).size.width,
                        height: 300,
                        decoration: BoxDecoration(
                            color: Color(0xffFFFFFF),//secondaryBackground
                        ),
                        child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(16, 30, 16, 0),
                            child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    ElevatedButton(
                                        child: Icon(
                                            Icons.arrow_back_rounded,
                                            color: Colors.black,
                                            size: 24,
                                        ),
                                        onPressed: () {
                                            Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.white
                                        )
                                    ),
                                    Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                            Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                                                child: ClipRRect(
                                                    borderRadius: BorderRadius.circular(10),
                                                    child: Image.asset(
                                                        'assets/movie_loveletter.jpeg',
                                                        width: 160,
                                                        height: 200,
                                                        fit: BoxFit.cover,
                                                    ),
                                                ),
                                            ),
                                            Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.max,
                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                        Text(
                                                            'Love Letter',
                                                            style:
                                                                TextStyle(
                                                                    fontFamily: 'Poppins',
                                                                    fontWeight: FontWeight.bold,
                                                                    fontSize: 24
                                                                ),
                                                        ),
                                                        Row(
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                                Icon(
                                                                    Icons.star_rounded,
                                                                    color: Color(0xff4B39EF),//primaryColor
                                                                    size: 22,
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                                                                    child: Text(
                                                                        '4.0',
                                                                        style: TextStyle(
                                                                            fontFamily: 'Popins',
                                                                            color: Color(0xff4B39EF), //primaryColor
                                                                            fontSize: 18,
                                                                        ),
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                        Wrap(
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
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                                    child: Text(
                                                                        '#japan',
                                                                    ),
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                                    child: Text(
                                                                        '#romance',
                                                                    ),
                                                                ),
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(8, 4, 0, 0),
                                                                    child: Text(
                                                                        '#drama',
                                                                    ),
                                                                ),
                                                            ],
                                                        ),
                                                    ],
                                                ),
                                            ),
                                        ],
                                    ),
                                ],
                            ),
                        ),
                    ),
                    Expanded(
                        child: DefaultTabController(
                            length: 2,
                            initialIndex: 0,
                            child: Column(
                                children: [
                                    TabBar(
                                        isScrollable: true,
                                        labelColor: Color(0xFF4B39EF),
                                        unselectedLabelColor: Color(0xFF95A1AC),
                                        indicatorColor: Color(0xFF4B39EF),
                                        indicatorWeight: 3,
                                        tabs: [
                                            Tab(
                                                text: 'Reviews',
                                            ),
                                            Tab(
                                                text: 'Content Info',
                                            ),
                                        ],
                                    ),
                                    Expanded(
                                        child: TabBarView(
                                            children: [
                                                Container(
                                                    width: 100,
                                                    height: 100,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xffF1F4F8) //primaryBackground
                                                    ),
                                                    child: SingleChildScrollView(
                                                        child: Column(
                                                            mainAxisSize: MainAxisSize.max,
                                                            children: [
                                                                Padding(
                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                                                                    child: Container(
                                                                        width: MediaQuery.of(context).size.width * 0.96,
                                                                        decoration: BoxDecoration(
                                                                            color: Color(0xffFFFFFF), //secondaryBackground
                                                                            boxShadow: [
                                                                                BoxShadow(
                                                                                    blurRadius: 4,
                                                                                    color: Color(0x2E000000),
                                                                                    offset: Offset(0, 2),
                                                                                )
                                                                            ],
                                                                            borderRadius: BorderRadius.circular(8),
                                                                        ),
                                                                        child: Column(
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                                // ClipRRect(
                                                                                //     borderRadius: BorderRadius.only(
                                                                                //         bottomLeft: Radius.circular(0),
                                                                                //         bottomRight: Radius.circular(0),
                                                                                //         topLeft: Radius.circular(8),
                                                                                //         topRight: Radius.circular(8),
                                                                                //     ),
                                                                                //     child: Image.asset('assets/profile.png',
                                                                                //         width: MediaQuery.of(context).size.width,
                                                                                //         height: 200,
                                                                                //         fit: BoxFit.fitWidth
                                                                                //     ),
                                                                                // ),
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
                                                                                    child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                                                        children: [
                                                                                            Container(
                                                                                                width: 50,
                                                                                                height: 50,
                                                                                                clipBehavior: Clip.antiAlias,
                                                                                                decoration: BoxDecoration(
                                                                                                    shape: BoxShape.circle,
                                                                                                ),
                                                                                                child: Image.asset('assets/re_profile.png',),
                                                                                            ),
                                                                                            Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 5, 0),
                                                                                                child: Text(
                                                                                                    'chan',
                                                                                                    style: TextStyle(
                                                                                                        fontSize: 16,
                                                                                                        fontWeight: FontWeight.w600,
                                                                                                    )
                                                                                                ),
                                                                                            ),
                                                                                            Text(
                                                                                                '2h',
                                                                                                style: TextStyle(
                                                                                                    fontWeight: FontWeight.w400,
                                                                                                )
                                                                                                //FlutterFlowTheme.of(context).bodyText2.override(fontWeight: FontWeight.w500,)
                                                                                            ),
                                                                                            Expanded(
                                                                                                child: Row(
                                                                                                    mainAxisSize: MainAxisSize.max,
                                                                                                    mainAxisAlignment: MainAxisAlignment.end,
                                                                                                    children: [
                                                                                                        Icon(
                                                                                                            Icons.star_rounded,
                                                                                                            color: Color(0xff4B39EF), //primaryColor,
                                                                                                            size: 24,
                                                                                                        ),
                                                                                                        Padding(
                                                                                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                                            child: Text(
                                                                                                                '4.0',
                                                                                                                style: TextStyle(
                                                                                                                    fontFamily: 'Poppins',
                                                                                                                    color: Color(0xff4B39EF),//primaryColor,
                                                                                                                    fontSize: 20,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                ),
                                                                                                            ),
                                                                                                        ),
                                                                                                    ],
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
                                                                                    child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        children: [
                                                                                            Expanded(
                                                                                                child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                                                                                                    child: Text('The heart always seems to feel sadder because It arrives late.',
                                                                                                    ),
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                                Divider(
                                                                                    height: 3,
                                                                                    thickness: 1,
                                                                                    color: Color(0xffF1F4F8), //primaryBackground
                                                                                ),
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 4),
                                                                                    child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                            Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                    Padding(
                                                                                                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 16, 0),
                                                                                                        child: Row(
                                                                                                            mainAxisSize: MainAxisSize.max,
                                                                                                            children: [
                                                                                                                Padding(
                                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                                    child: Text(
                                                                                                                    '♥︎ 6',
                                                                                                                    style: TextStyle(
                                                                                                                    fontSize: 14,
                                                                                                                    fontWeight: FontWeight.w500,
                                                                                                                    color: Colors.redAccent
                                                                                                                    ),
                                                                                                                ),
                                                                                                                )
                                                                                                            ],
                                                                                                        ),
                                                                                                    ),
                                                                                                    Row(
                                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                                        children: [
                                                                                                            Icon(
                                                                                                                Icons.mode_comment_outlined,
                                                                                                                color: Colors.grey,
                                                                                                                size: 24,
                                                                                                            ),
                                                                                                            Padding(
                                                                                                                padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                                                                                                                child: Text(
                                                                                                                    '4',
                                                                                                                ),
                                                                                                            ),
                                                                                                        ]
                                                                                                    ),
                                                                                                ],
                                                                                            ),
                                                                                            Row(
                                                                                                mainAxisSize: MainAxisSize.max,
                                                                                                children: [
                                                                                                    Icon(
                                                                                                        Icons.ios_share,
                                                                                                        color: Colors.grey,
                                                                                                        size: 24,
                                                                                                    ),
                                                                                                ],
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                            ],
                                                                        ),
                                                                    ),

                                                                ),
                                                            ],
                                                        ),
                                                    ),
                                                ),
                                                Container(
                                                    width: 100,
                                                    height: 500,
                                                    decoration: BoxDecoration(
                                                        color: Color(0xffF1F4F8)//primaryBackground,
                                                    ),
                                                    child: Column(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                            Padding(
                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 6),
                                                                child: Container(
                                                                    width: MediaQuery.of(context).size.width * 0.96,
                                                                    decoration: BoxDecoration(
                                                                        color: Color(0xffFFFFFF),//secondaryBackground,
                                                                        boxShadow: [
                                                                            BoxShadow(
                                                                                blurRadius: 4,
                                                                                color: Color(0x2E000000),
                                                                                offset: Offset(0, 2),
                                                                            )
                                                                        ],
                                                                        borderRadius: BorderRadius.circular(8),
                                                                    ),
                                                                    child: Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
                                                                        child: Column(
                                                                            mainAxisSize: MainAxisSize.max,
                                                                            children: [
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 4),
                                                                                    child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                        children: [
                                                                                            Text(
                                                                                                'genre',
                                                                                                style: TextStyle(
                                                                                                    fontFamily: 'Popins',
                                                                                                    fontSize: 18,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                ),
                                                                                            ),
                                                                                            Expanded(
                                                                                                child: Padding(
                                                                                                    padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                                                                                    child: Text(
                                                                                                        'romance/drama',
                                                                                                        style: TextStyle(
                                                                                                            fontFamily: 'Poppins',
                                                                                                            fontSize: 18,
                                                                                                            fontWeight: FontWeight.w400,
                                                                                                        ),
                                                                                                    ),
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 4),
                                                                                    child: Row(
                                                                                        mainAxisSize: MainAxisSize.max,
                                                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                                                        children: [
                                                                                            Padding(
                                                                                                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                                child: Icon(
                                                                                                    Icons.video_collection_rounded,
                                                                                                    color: Color(0xff4B39EF),//primaryColor
                                                                                                    size: 24,
                                                                                                ),
                                                                                            ),
                                                                                            Text(
                                                                                                'Trailer',
                                                                                                style: TextStyle(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    fontSize: 16,
                                                                                                ),
                                                                                            ),
                                                                                        ],
                                                                                    ),
                                                                                ),
                                                                                Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 5, 0),
                                                                                    child : YoutubePlayer(
                                                                                        controller: YoutubePlayerController(
                                                                                            initialVideoId: 'P6JAtpSC0EA',
                                                                                            flags: YoutubePlayerFlags(
                                                                                                hideControls: false,
                                                                                                controlsVisibleAtStart: true,
                                                                                                autoPlay: true,
                                                                                                mute: false,
                                                                                            ),
                                                                                        ),
                                                                                    ),

                                                                                ),
                                                                                // YoutubePlayer(
                                                                                //     controller: YoutubePlayerController(
                                                                                //         initialVideoId: 'zn2GwbPG-tc', //Add videoID.
                                                                                //         flags: YoutubePlayerFlags(
                                                                                //             hideControls: false,
                                                                                //             controlsVisibleAtStart: true,
                                                                                //             autoPlay: false,
                                                                                //             mute: false,
                                                                                //         ),
                                                                                //     ),
                                                                                //     showVideoProgressIndicator: true,
                                                                                //     progressIndicatorColor: AppColors.primary,
                                                                                // ),
                                                                                // FlutterFlowYoutubePlayer(
                                                                                //     url: '',
                                                                                //     autoPlay: false,
                                                                                //     looping: true,
                                                                                //     mute: false,
                                                                                //     showControls: true,
                                                                                //     showFullScreen: ture,
                                                                                // ),
                                                                            ],
                                                                        ),
                                                                    ),
                                                                ),
                                                            ),
                                                        ],
                                                    ),
                                                ),
                                            ],
                                        ),
                                    ),
                                ],
                            )
                        )
                    )

                ],
            ),
        );
    }
}