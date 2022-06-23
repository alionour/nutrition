import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_row_column.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:url_launcher/url_launcher.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final mulishStyle = GoogleFonts.mulish();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isDesktop
            ? ResponsiveRowColumnType.ROW
            : ResponsiveRowColumnType.COLUMN,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const ResponsiveRowColumnItem(
            child: SizedBox(
              width: 25,
              height: 10,
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.8,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Flexible(
                    flex: 3,
                    child: _Card(
                      text: '15 Low-Sugar Fruits High in Polyphenols',
                      color: Color(0xFFEC110D),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: _Card(
                      color: Color(0xFF283342),
                      text: '15 Best Low Carb Fruits',
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  Flexible(
                    flex: 3,
                    child: _Calender(),
                  ),
                ],
              ),
            ),
          ),
          const ResponsiveRowColumnItem(
            child: SizedBox(
              width: 25,
              height: 10,
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 3,
            child: Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(15),
              child: ResponsiveRowColumn(
                layout: ResponsiveRowColumnType.COLUMN,
                columnMainAxisAlignment: MainAxisAlignment.start,
                columnCrossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ResponsiveRowColumnItem(
                    columnFlex: 3,
                    child: AutoSizeText(
                      '''20 Types of Berries and Their Health Benefits''',
                      style: GoogleFonts.yesevaOne().copyWith(
                          fontSize: 60, color: const Color(0xFF283342)),
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    columnFlex: 1,
                    child: Row(
                      children: [
                        AutoSizeText('Blackberies',
                            style: mulishStyle.copyWith(fontSize: 16)),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 30,
                            child: Divider(
                              thickness: 2,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    child: SizedBox(
                      height: 10,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    columnFlex: 12,
                    child: ResponsiveRowColumn(
                      layout: ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                          ? ResponsiveRowColumnType.ROW
                          : ResponsiveRowColumnType.COLUMN,
                      rowMainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ResponsiveRowColumnItem(
                          rowFlex: 3,
                          columnFlex: 3,
                          child: AutoSizeText(
                              '''As with all berries, blackberries also contain  various health-protective polyphenols.Blackberries show a significant protective effect against LBL-oxidation, a promiment cardiovascular risk factor, in human intervention studies (6).Studies also show that wild blackberries are 3 to 5 time higher in polyphenols, so get outside and pick your own. ''',
                              textAlign: TextAlign.start,
                              style: mulishStyle.copyWith(fontSize: 18)),
                        ),
                        ResponsiveRowColumnItem(
                          rowFlex: 1,
                          child: Image.asset('assets/images/primary.png'),
                        ),
                      ],
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    child: SizedBox(
                      height: 30,
                    ),
                  ),
                  ResponsiveRowColumnItem(
                    columnFlex: 10,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: SizedBox(
                        // height: MediaQuery.of(context).size.height * 0.3,
                        // width: MediaQuery.of(context).size.width * 0.4,
                        child: ResponsiveRowColumn(
                          layout:
                              ResponsiveWrapper.of(context).isLargerThan(MOBILE)
                                  ? ResponsiveRowColumnType.ROW
                                  : ResponsiveRowColumnType.COLUMN,
                          children: [
                            ResponsiveRowColumnItem(
                              rowFlex: 3,
                              columnFlex: 8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Flexible(
                                          child: AutoSizeText(
                                            'Calories: 62',
                                            style: mulishStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Flexible(
                                          child: AutoSizeText(
                                            'Carbohydrate: 15',
                                            style: mulishStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Flexible(
                                    child: SizedBox(
                                      height: 20,
                                    ),
                                  ),
                                  Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Flexible(
                                          child: AutoSizeText(
                                            'Fat: 2',
                                            style: mulishStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        Flexible(
                                          child: AutoSizeText(
                                            'Protein: 1',
                                            style: mulishStyle.copyWith(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const ResponsiveRowColumnItem(
                              child: SizedBox(
                                width: 20,
                              ),
                            ),
                            ResponsiveRowColumnItem(
                              rowFlex: 1,
                              child: Image.asset('assets/images/secondary.png'),
                            ),
                            ResponsiveRowColumnItem(
                              rowFlex: 2,
                              columnFlex: 1,
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width * .4,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const ResponsiveRowColumnItem(
                    columnFlex: 2,
                    child: _ShareRow(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  final Color color;
  final String text;
  const _Card({Key? key, required this.color, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.3,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            child: SizedBox(
              width: 20,
            ),
          ),
          Flexible(
            flex: 3,
            child: AutoSizeText(
              text,
              style: const TextStyle(fontSize: 22, color: Colors.white),
            ),
          ),
          const Flexible(
            child: SizedBox(
              width: 20,
            ),
          ),
          Flexible(
              flex: 1,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.transparent,
                  border: Border.all(color: Colors.white, width: 2),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                  ),
                ),
              )),
        ],
      ),
    );
  }
}

class _Calender extends StatefulWidget {
  const _Calender({Key? key}) : super(key: key);

  @override
  State<_Calender> createState() => __CalenderState();
}

class __CalenderState extends State<_Calender> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Flexible(
            flex: 1,
            child: Icon(
              Icons.arrow_back_ios,
              size: 40,
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: AutoSizeText(
                '03',
                style: GoogleFonts.yesevaOne().copyWith(fontSize: 90),
              ),
            ),
          ),
          const Flexible(
            flex: 1,
            child: Icon(
              Icons.arrow_forward_ios,
              size: 40,
            ),
          ),
        ],
      ),
    );
  }
}

class _ShareRow extends StatelessWidget {
  const _ShareRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Flexible(flex: 1, child: AutoSizeText('Share')),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 1,
              child: GestureDetector(
                  onTap: _facebook,
                  child: SvgPicture.asset('assets/icons/facebook.svg'))),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 1,
              child: GestureDetector(
                  onTap: _twitter,
                  child: SvgPicture.asset('assets/icons/twitter.svg'))),
        ],
      ),
    );
  }
}

/// launches the linkedin profile
/// checks if _url can be launched
/// if it can, it launches it
void _twitter() async {
  String url = "https://www.twitter.com/";
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}

/// launches the linkedin profile
/// checks if _url can be launched
/// if it can, it launches it
void _facebook() async {
  String url = "https://www.facebbok.com/";
  final uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    launchUrl(uri);
  }
}
