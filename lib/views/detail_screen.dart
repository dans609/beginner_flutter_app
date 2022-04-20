import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:submission_bmafp/commons/constant.dart';
import 'package:submission_bmafp/commons/widget.dart';
import 'package:submission_bmafp/models/Film.dart';
import '../commons/styles.dart';
import '../commons/utils.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({
    Key? key,
    required this.film,
    required this.colorSecondary,
    required this.colorSecondaryDark,
    required this.colorPrimary,
  }) : super(key: key);

  final Film film;
  final Color colorPrimary;
  final Color colorSecondary;
  final Color colorSecondaryDark;
  final comicFont = AppTheme.comicneueFont;

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool isFavorite = false;
  IconData favoriteIcon = Icons.favorite_border;

  void addToFavorite() => setState(() {
    isFavorite = !isFavorite;
    favoriteIcon = isFavorite
      ? Icons.favorite
      : Icons.favorite_border;
  });

  @override
  Widget build(BuildContext context) {
    final film = widget.film;

    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Flexible(
                  child: SafeArea(
                    child: CustomAppBar(
                      leftButton: Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: CircleAvatar(
                            backgroundColor: widget.colorPrimary,
                            child: IconButton(
                              icon: const Icon(Icons.arrow_back),
                              iconSize: 18,
                              color: Colors.white,
                              tooltip: 'Back to homepage',
                              onPressed: () => Navigator.pop(context),
                            ),
                          ),
                        ),
                      ),
                      image: ImageConfig(
                        film.backdropAsset,
                        expandBackground: true,
                        imgFit: BoxFit.cover,
                        imgColor: Colors.white.withOpacity(0.75),
                        imgBlendMode: BlendMode.hardLight,
                        tag: '${Constant.posterHeroAnim}-${film.posterAsset}',
                      ),
                      contentPad: 20,
                      useDecorationLayer: true,
                      layers: [
                        const Layer(
                          opacity: 0.2,
                          color: AppTheme.lightBlue,
                          mode: BlendMode.multiply,
                        ),
                        Layer(gradient: gradient()),
                      ],
                      child: GenerateDetailComp(
                        dateRelease: detailStyle('(${Utils.getYear(film.dateRelease)})'),
                        title: titleStyle(film.title),
                        notAvailable: detailStyle('N/A'),
                        certificate: film.certificate != null
                          ? detailStyle(film.certificate.toString())
                          : null,
                        duration: detailStyle(film.duration),
                        userScore: detailStyle('${film.userScore.toString()}%'),
                        genreHeader: detailStyle('Genres:'),
                        genreBoxHeight: 25,
                        genres: film.genres?.map((genre) {
                          return detailStyle(genre);
                        }).toList(),
                        itemSpacing: 7,
                        boxPad: 3,
                        boxRad: 5,
                        componentSpacing: 15,
                        decorationColor: widget.colorPrimary,
                        noRolesStyle: const TextSimpler('-', size: 10),
                        fabShadow: 0.3,
                        fabBlur: 4,
                        fabPad: 10,
                        fabSize: 18,
                        fabIcon: favoriteIcon,
                        fabOnTap: () => addToFavorite(),
                        circleSize: 5,
                        circleSpacing: 8,
                        roles: film.authors?.values.toList().map((role) {
                          var index = 0;
                          var roleCount = role.roleNames.length;

                          return role.roleNames.map((roleName) {
                            var authorRole = commaSeparator(
                              roleName,
                              useSeparator: index == roleCount-1 ? false : true
                            );
                            index++;
                            return authorRole;
                          }).toList();
                        }).toList(),
                        authors: film.authors?.keys.toList().map((author) {
                          return detailStyle(author.authorName);
                        }).toList(),
                        authorBoxHeight: 30,
                        poster: ImageConfig(
                          film.posterAsset,
                          imgFit: BoxFit.cover,
                          radius: 10,
                          expandBackground: true,
                          shadows: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.4),
                              blurRadius: 10,
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        film.postersNetwork == null ? const SizedBox.shrink() : SizedBox(
                          height: 100,
                          child: ListView.separated(
                            clipBehavior: Clip.none,
                            itemBuilder: (context, index) {
                              final posterNetwork = film.postersNetwork?.elementAt(index);

                              return DecoratedBox(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 4, spreadRadius: 2),
                                    BoxShadow(color: Colors.black.withOpacity(0.15), blurRadius: 2, spreadRadius: 1),
                                  ],
                                ),
                                child: ClipRRect(
                                  clipBehavior: Clip.hardEdge,
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: posterNetwork!,
                                    placeholder: (context, url) => Container(height: 100, width: 67, color: widget.colorPrimary),
                                    errorWidget: (context, url, error) => const Icon(Icons.error),
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) => const SizedBox(width: 15),
                            itemCount: film.postersNetwork?.length ?? 0,
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                          ),
                        ),
                        Container(
                          margin: film.postersNetwork == null ? null : const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.shade50,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 6),
                              BoxShadow(color: Colors.black.withOpacity(0.10), blurRadius: 4),
                            ]
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                descriptionStyle('Overview:', sz: 14),
                                const SizedBox(height: 5),
                                Hero(
                                  tag: '${Constant.overviewHeroAnim}-${film.posterAsset}',
                                  child: descriptionStyle(film.overview, w900: false, height: 1.3),
                                ),
                              ],
                            ),
                          ),
                        ),
                        film.keywords == null ? const SizedBox.shrink() : Container(
                          padding: const EdgeInsets.all(15),
                          margin: const EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade50,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.25), blurRadius: 6),
                                BoxShadow(color: Colors.black.withOpacity(0.10), blurRadius: 4),
                              ]
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              descriptionStyle('Keywords:', sz: 14),
                              const SizedBox(height: 5),
                              Wrap(
                                runSpacing: 5,
                                spacing: 5,
                                children: film.keywords!.map((keyword) {
                                  return Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(3),
                                      color: Colors.grey.shade300,
                                    ),
                                    padding: const EdgeInsets.all(4),
                                    child: descriptionStyle(keyword, w900: false, color: Colors.grey.shade700)
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Text titleStyle(String text) => TextSimpler(text,
    size: 22,
    family: widget.comicFont,
    color: widget.colorPrimary,
    weight: FontWeight.w900,
  );

  Text detailStyle(String text, {bool w900 = true}) => TextSimpler(text,
    size: 14,
    weight: w900 ? FontWeight.w900 : null,
    family: widget.comicFont,
    color: widget.colorPrimary,
  );

  Text descriptionStyle(String text, {bool w900 = true, double? height, double sz = 12, Color? color}) => TextSimpler(text,
    size: sz,
    weight: w900 ? FontWeight.w900 : null,
    family: widget.comicFont,
    color: color ?? widget.colorPrimary,
    height: height,
  );

  gradient() {
    return LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        widget.colorSecondaryDark.withOpacity(0.8),
        widget.colorSecondary.withOpacity(0.5),
      ],
    );
  }

  Text commaSeparator(String text, {
    bool useSeparator = true,
    double? size,
    String? family,
    Color? color,
  }) {
    final TextStyle style = TextStyle(
      fontSize: size ?? 14,
      fontFamily: family ?? widget.comicFont,
      color: color ?? widget.colorPrimary,
    );

    return Text.rich(
      TextSpan(text: text,
        children: useSeparator ? const [TextSpan(text: ',')] : null,
        style: style,
      ),
    );
  }
}
