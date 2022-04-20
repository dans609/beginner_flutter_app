import 'package:flutter/material.dart';
import 'package:submission_bmafp/commons/constant.dart';
import 'package:submission_bmafp/commons/styles.dart';
import 'package:submission_bmafp/commons/utils.dart';
import 'package:submission_bmafp/commons/widget.dart';
import 'package:submission_bmafp/controllers/main_controller.dart';
import 'package:submission_bmafp/models/Film.dart';
import 'package:submission_bmafp/views/detail_screen.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  final listFilm = Controller.getAllFilm();
  final roboto = AppTheme.robotoFont;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _inputController = TextEditingController();
  String? _criteria;
  bool _goodRating = false;

  List<Film>? listFilm;
  Color? primaryColor;
  TextStyle? cardTitleStyle;
  TextStyle? cardDateStyle;
  TextStyle? cardDescStyle;

  void findCriteria() {
    setState(() {
      _criteria = _inputController.text;
      bool? isEmpty = _criteria?.isEmpty;

      /**
       * If input is active it should reset the previous filter that used by user.
       * In case, user tap a button for search film that have a good rating. */
      _goodRating = false;

      isEmpty == null || isEmpty
        ? listFilm = widget.listFilm
        : listFilm = widget.listFilm.where((data) {
            List<String> scopeData = [];
            scopeData.addAll([data.title, data.type]);
            scopeData.addAll(data.genres?.toList() ?? []);
            scopeData.addAll(data.keywords?.toList() ?? []);

            return Utils.listMatcher(scopeData, _criteria);
        }).toList();
    });
  }

  void searchGoodRating() => setState(() {
    _goodRating = !_goodRating;
    double int80 = sub(Integer.score85, Integer.int5);

    listFilm = _goodRating
      ? (listFilm ?? widget.listFilm).where((film) => film.userScore >= int80).toList()
      : widget.listFilm;

    /**
     * Example: If user search the 'mcu' keyword on INPUT, the system at least will give '3' films
     * that meet the criteria, if user click the RATING BUTTON, then it just only 2 films on the list
     * and the RATING BUTTON will displaying text 'CLEAR', if user clicking the button again
     * the search criteria on the input -> 'mcu' will disappeared.
     */
    if (!_goodRating) _inputController.clear();
  });
  
  void navigateToDetail(Film film) => Navigator.push(context,
    MaterialPageRoute(builder: (context) => DetailScreen(
      film: film,
      colorPrimary: primaryColor ?? Colors.black,
      colorSecondary: AppTheme.lightBlue,
      colorSecondaryDark: AppTheme.mediumBlue,
    )),
  );

  @override
  void initState() {
    super.initState();
    _inputController.addListener(findCriteria);
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      primaryColor = Theme.of(context).primaryColor;
      cardTitleStyle = style(
        family: widget.roboto,
        fColor: primaryColor,
        fWeight: FontWeight.bold,
        fSize: add(Integer.dim15, Integer.high),
      );
      cardDateStyle = style(
        family: widget.roboto,
        fColor: Colors.grey,
        fHeight: div(Integer.int13, Integer.decRadix),
        fSize: sub(Integer.dim15, Integer.high),
      );
      cardDescStyle = style(
        family: widget.roboto,
        fColor: primaryColor,
        fHeight: div(Integer.int13, Integer.decRadix),
        fWeight: FontWeight.w500,
        fSize: dubl(Integer.headingSize),
      );
    });

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: Integer.bitRadix,
            child: CustomAppBar(
              image: ImageConfig(
                'images/logo.svg',
                rotateAngle: dubl(Integer.decRadix),
                isSvg: true,
              ),
              backgroundColor: primaryColor,
              useDecorationLayer: true,
              layers: [
                Layer(
                  opacity: div(Integer.int7, Integer.decRadix),
                  color: primaryColor,
                  mode: BlendMode.multiply
                ),
              ],
              contentPad: dubl(Integer.dim20),
              child: GenerateMainComp(
                spacing: dubl(Integer.decRadix),
                startupMessage: StartupMessage(
                  getStartedStyle: style(decor: TextDecoration.underline),
                  welcomeTextStyle: style(fWeight: FontWeight.bold, fSize: add(Integer.dim15, Integer.shortRuntime)),
                  normalTextStyle: style(),
                  appNameTextStyle: style(
                      fWeight: FontWeight.bold,
                      fColor: AppTheme.lightSpring
                  ),
                ),
                textField: SearchBox(
                  textFieldStyle: TextStyle(color: primaryColor, fontSize: dubl(Integer.paragraphSize)),
                  boxColor: Colors.grey.shade300,
                  borderRadius: dubl(Integer.int5),
                  marginRight: dubl(Integer.decRadix),
                  controller: _inputController,
                  textFieldDecoration: InputDecoration(
                    hintText: Strings.hintText,
                    hintStyle: TextStyle(color: Colors.grey.shade600, fontSize: dubl(Integer.paragraphSize)),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: dubl(Integer.dim15),
                      vertical: dubl(Integer.dim20),
                    ),
                  ),
                ),
                ratingButton: RatingButton(
                  height: sub(Integer.dim50, Integer.int5),
                  borderRadius: dubl(Integer.int5),
                  onTap: () => searchGoodRating(),
                  solid: _goodRating ? Colors.grey.shade50 : null,
                  gradient: _goodRating ? null : const LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      AppTheme.redCerise,
                      AppTheme.lightSpring,
                    ],
                  ),
                  shadowLen: Integer.high,
                  shadowSwatch: _goodRating ? null : {
                    AppTheme.redCerise.withOpacity(div(Integer.int6, Integer.decRadix)):
                      [dubl(Integer.nybble), dubl(Integer.high)],
                  },
                  child: Text(
                    _goodRating ? 'Clear' : 'R. 80+',
                    softWrap: false,
                    maxLines: Integer.high,
                    style: style(
                      fWeight: FontWeight.w900,
                      fSize: add(Integer.dim15, Integer.high),
                      fColor: _goodRating ? primaryColor : Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: Integer.shortRuntime,
            child: ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.all(dubl(Integer.dim15)),
              itemCount: listFilm?.length ?? widget.listFilm.length,
              separatorBuilder:(context, index) => SizedBox(height: dubl(Integer.dim15)),
              itemBuilder: (context, index) {
                final Film film = listFilm?.elementAt(index) ?? widget.listFilm[index];

                return InkWell(
                  borderRadius: BorderRadius.circular(dubl(Integer.decRadix)),
                  onTap: () => navigateToDetail(film),
                  child: Card(
                    child: IntrinsicHeight(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Expanded(
                            child: Hero(
                              tag: '${Constant.posterHeroAnim}-${film.posterAsset}',
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  image: DecorationImage(
                                    image: AssetImage(film.posterAsset),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: Integer.bitRadix,
                            child: Padding(
                              padding: EdgeInsets.all(dubl(Integer.dim15)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(film.title, style: cardTitleStyle),
                                  Text(film.dateRelease, style: cardDateStyle),
                                  SizedBox(height: dubl(Integer.dim20)),
                                  Hero(
                                    tag: '${Constant.overviewHeroAnim}-${film.posterAsset}',
                                    child: Text(
                                      film.overview,
                                      style: cardDescStyle,
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: Integer.bitRadix,
                                    ),
                                  ),
                                  SizedBox(height: dubl(Integer.int5)),
                                  Wrap(
                                    crossAxisAlignment: WrapCrossAlignment.center,
                                    spacing: dubl(Integer.decRadix),
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          color: primaryColor,
                                          borderRadius: BorderRadius.circular(dubl(Integer.nybble)),
                                        ),
                                        padding: EdgeInsets.all(dubl(Integer.int6)),
                                        child: Text(film.type.capitalize(), style: style()),
                                      ),
                                      Text(
                                        film.duration,
                                        style: style(
                                          fColor: AppTheme.redCerise,
                                          fWeight: FontWeight.bold
                                        ),
                                      ),
                                    ]
                                  ),
                                ],
                              ),
                            )
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _inputController.dispose();
    super.dispose();
  }
}

double dubl(int value) => Utils.dubl(value);
double sub(int a, int b) => Utils.sub(a, b);
double add(int a, int b) => Utils.addition(a, b);
double div(int a, int b) => Utils.div(a, b);
double multiply(int a, int b) => Utils.multiply(a, b);

TextStyle style({
  FontWeight fWeight = FontWeight.normal,
  double fSize = 12,
  double fHeight = 1,
  Color? fColor = Colors.white,
  TextDecoration? decor,
  String? family,
}) => TextStyle(
  fontSize: fSize,
  fontWeight: fWeight,
  height: fHeight,
  color: fColor,
  decoration: decor,
  fontFamily: family,
);