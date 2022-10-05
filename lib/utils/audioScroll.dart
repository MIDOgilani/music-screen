import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'myThemes.dart';

class AudioScroll extends StatelessWidget {
  String title;
  AudioScroll({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20),
      // width: myThemes.returnWidth(context),
      // height: myThemes.returnHeight(context),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 10.0,
            top: 18,
          ),
          child: headingTitle(title, FontWeight.w500, 40),
        ),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.center,
          child: CarouselSlider.builder(
            itemCount: 10,
            itemBuilder: ((context, index, realIndex) => GestureDetector(
                  onTap: () =>
                      audioBottomSheet(context, image: 'images/lecture.png'),
                  child: Container(
                    height: 100, //myThemes.returnHeight(context) * 0.7,
                    width: 225, //myThemes.returnWidth(context) * 0.39,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 217, 217, 217),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                )),
            options: CarouselOptions(
              viewportFraction: 0.6,
              enlargeCenterPage: true,
            ),
          ),
        ),
        const SizedBox(
          height: 18,
        )
      ]),
    );
  }
}

Future<Widget?> audioBottomSheet(
  BuildContext context, {
  Key? key,
  required String image,
}) async {
  final panelHeight = myThemes.returnHeight(context) * 0.8;
  final panelWidth = myThemes.returnWidth(context);
  return await showModalBottomSheet<Widget>(
      backgroundColor: myThemes.darkFontTheme,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
      context: context,
      enableDrag: true,
      barrierColor: Color.fromARGB(108, 0, 0, 0),
      builder: ((context) => Container(
          height: panelHeight,
          width: panelWidth,
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: panelHeight * 0.48,
                floating: true,
                flexibleSpace: FlexibleSpaceBar(
                  expandedTitleScale: 1,
                  titlePadding: const EdgeInsets.only(
                    top: 150,
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Sabeel Ud dumu',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: myThemes.lightFontTheme),
                        ),
                      ),
                      Container(
                          width: 200,
                          height: 200,
                          // padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.skip_previous,
                                    color: myThemes.lightFontTheme,
                                    size: 40,
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(right: 38),
                                child: IconButton(
                                    onPressed: () {
                                    
                                    },
                                    icon: Icon(
                                      Icons.play_circle,
                                      color: myThemes.lightFontTheme,
                                      size: 80,
                                    )),
                              ),
                              IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.skip_next,
                                    color: myThemes.lightFontTheme,
                                    size: 40,
                                  )),
                            ],
                          )),
                    ],
                  ),
                  background: DecoratedBox(
                    position: DecorationPosition.foreground,
                    decoration: BoxDecoration(
                      gradient:
                          RadialGradient(radius: 1, center: Alignment.topCenter,
                              //  focal: Alignment.centerLeft,

                              colors: [
                            myThemes.transparent,
                            myThemes.darkFontTheme,
                          ]),
                    ),
                    child: Image.asset(
                      'images/lecture.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                  child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                  style: TextStyle(
                    color: myThemes.lightFontTheme,
                    fontSize: 12,
                    fontFamily: GoogleFonts.gideonRoman().fontFamily,
                    overflow: TextOverflow.fade,
                  ),
                ),
              ))
            ],
          ))));
}
