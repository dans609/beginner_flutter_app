import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:submission_bmafp/commons/utils.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    this.backgroundColor,
    this.image,
    this.useDecorationLayer = false,
    this.contentPad = 0,
    this.child,
    this.layers,
    this.leftButton,
    this.systemUiStyle,
  }) : super(key: key);

  final Color? backgroundColor;
  final ImageConfig? image;
  final bool useDecorationLayer;
  final List<Layer>? layers;
  final double contentPad;
  final Widget? child;
  final Widget? leftButton;
  final SystemUiOverlayStyle? systemUiStyle;

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints.expand(),
    color: backgroundColor,
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        image ?? const SizedBox.shrink(),
        useDecorationLayer
          ? Stack(children: layers ?? [])
          : const SizedBox.shrink(),
        Container(padding: EdgeInsets.all(contentPad), child: child),
        leftButton ?? const SizedBox.shrink(),
      ],
    ),
  );
}

class Layer extends StatelessWidget {
  const Layer({
    Key? key,
    this.gradient,
    this.color,
    this.opacity = 1,
    this.mode,
  }) : super(key: key);

  final Gradient? gradient;
  final Color? color;
  final BlendMode? mode;
  final double opacity;

  @override
  Widget build(BuildContext context) => Container(
    constraints: const BoxConstraints.expand(),
    decoration: BoxDecoration(
      gradient: gradient,
      color: color?.withOpacity(opacity),
      backgroundBlendMode: mode,
    ),
  );
}

class GenerateDetailComp extends StatelessWidget {
  const GenerateDetailComp({
    Key? key,
    this.poster,
    this.componentSpacing = 0,
    this.dateRelease,
    this.title,
    this.certificate,
    this.duration,
    this.userScore,
    this.genreHeader,
    this.genres,
    this.notAvailable,
    this.itemSpacing = 0,
    this.genreBoxHeight = 20,
    this.authorBoxHeight = 25,
    this.boxPad = 0,
    this.boxRad = 0,
    this.authors,
    this.roles,
    this.noRolesStyle,
    this.fabShadow = 0,
    this.fabBlur = 0,
    this.fabPad = 0,
    this.fabSize = 0,
    this.fabIcon,
    this.fabOnTap,
    this.circleSize = 0,
    this.circleSpacing = 0,
    this.decorationColor,
  }) : super(key: key);

  final ImageConfig? poster;
  final Text? dateRelease;
  final Text? title;
  final Text? certificate;
  final Text? duration;
  final Text? userScore;
  final Text? genreHeader;
  final Text? notAvailable;
  final double componentSpacing;
  final double itemSpacing;
  final double genreBoxHeight;
  final double authorBoxHeight;
  final double boxPad;
  final double boxRad;
  final List<Text>? genres;
  final List<Text>? authors;
  final List<List<Text>>? roles;
  final Text? noRolesStyle;
  final double fabShadow;
  final double fabBlur;
  final double fabPad;
  final double fabSize;
  final IconData? fabIcon;
  final GestureTapCallback? fabOnTap;
  final double circleSize;
  final double circleSpacing;
  final Color? decorationColor;
  
  shrinkIfNull(widget) => widget ?? const SizedBox.shrink();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: shrinkIfNull(poster)),
        SizedBox(width: componentSpacing),
        Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    shrinkIfNull(dateRelease),
                    shrinkIfNull(title),
                    Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: circleSpacing,
                      children: [
                        borderedBox(certificate),
                        circleShape(),
                        borderedBox(duration),
                        circleShape(),
                        borderedBox(userScore),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    shrinkIfNull(genreHeader),
                    genres == null ? const SizedBox.shrink() : SizedBox(
                      height: genreBoxHeight,
                      child: ListView.separated(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return FittedBox(
                            fit: BoxFit.fill,
                            child: borderedBox(genres?.elementAt(index)),
                          );
                        },
                        separatorBuilder: (context, index) => SizedBox(width: itemSpacing),
                        itemCount: genres?.length ?? 0,
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 3,
                      child: authors == null ? const SizedBox.shrink() : SizedBox(
                        height: authorBoxHeight,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            return FittedBox(
                              fit: BoxFit.fill,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  shrinkIfNull(authors?.elementAt(index)),
                                  roles == null
                                    ? noRolesStyle ?? const Text('null')
                                    : RowSpacer(
                                      spacing: 2,
                                      children: shrinkIfNull(roles?.elementAt(index))
                                  ),
                                ],
                              ),
                            );
                          },
                          separatorBuilder: (context, index) => SizedBox(width: itemSpacing),
                          itemCount: authors?.length ?? 0,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          physics: const ClampingScrollPhysics(),
                        ),
                      ),
                    ),
                    Flexible(
                        flex: 1,
                        child: Align(
                          alignment: AlignmentDirectional.centerEnd,
                          child: InkWell(
                            onTap: fabOnTap,
                            child: Container(
                              padding: EdgeInsets.all(fabPad),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(fabShadow),
                                    blurRadius: fabBlur,
                                  ),
                                ],
                              ),
                              child: Icon(
                                fabIcon ?? Icons.broken_image_outlined,
                                size: fabSize,
                                color: Colors.red,
                              ),
                            ),
                          ),
                        )
                    ),
                  ],
                ),
              ],
            )
        ),
      ],
    );
  }

  borderedBox(Text? text) {
    return Container(
      padding: EdgeInsets.all(boxPad),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(boxRad),
        border: Border.all(width: 1.5, color: decorationColor ?? Colors.black),
      ),
      child: text ?? notAvailable,
    );
  }

  circleShape() => Container(
    width: circleSize,
    height: circleSize,
    decoration: BoxDecoration(
      color: decorationColor ?? Colors.black,
      shape: BoxShape.circle,
    ),
  );
}

class GenerateMainComp extends StatelessWidget {
  const GenerateMainComp({
    Key? key,
    this.startupMessage,
    this.textField,
    this.ratingButton,
    this.spacing,
  }) : super(key: key);

  final StartupMessage? startupMessage;
  final SearchBox? textField;
  final RatingButton? ratingButton;
  final double? spacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        startupMessage ?? const SizedBox.shrink(),
        SizedBox(height: spacing),
        Row(
          children: [
            Expanded(flex: 3, child: textField ?? const SizedBox.shrink()),
            Flexible(flex: 1, child: ratingButton ?? const SizedBox.shrink()),
          ],
        ),
      ],
    );
  }
}

class StartupMessage extends StatelessWidget {
  const StartupMessage({
    Key? key,
    required this.welcomeTextStyle,
    required this.normalTextStyle,
    required this.appNameTextStyle,
    required this.getStartedStyle,
  }) : super(key: key);

  final TextStyle welcomeTextStyle;
  final TextStyle normalTextStyle;
  final TextStyle appNameTextStyle;
  final TextStyle getStartedStyle;

  @override
  Widget build(BuildContext context) => RichText(
    text: TextSpan(
      text: 'Welcome.\n',
      style: welcomeTextStyle,
      children: [
        TextSpan(text: 'Most popular ', style: normalTextStyle),
        TextSpan(text: 'American Film ', style: appNameTextStyle),
        TextSpan(text: 'to discover. ', style: normalTextStyle),
        TextSpan(text: 'Let\'s explore.', style: getStartedStyle),
      ],
    ),
  );
}

class ImageConfig extends StatelessWidget {
  const ImageConfig(this.imageAssetPath, {
    Key? key,
    this.rotateAngle = 0,
    this.isSvg = false,
    this.expandBackground = false,
    this.fixedSize,
    this.imgFit,
    this.imgColor,
    this.imgBlendMode,
    this.shadows,
    this.radius = 0,
    this.tag = "null",
  }) : super(key: key);

  final String imageAssetPath;
  final double rotateAngle;
  final bool isSvg;
  final bool expandBackground;
  final BoxFit? imgFit;
  final Size? fixedSize;
  final Color? imgColor;
  final BlendMode? imgBlendMode;
  final List<BoxShadow>? shadows;
  final double radius;
  final Object tag;

  @override
  Widget build(BuildContext context) {
    return expandBackground
      ? Container(constraints: const BoxConstraints.expand(), child: main())
      : main();
  }

  main() => Container(
    height: fixedSize?.height,
    width: fixedSize?.width,
    decoration: BoxDecoration(boxShadow: shadows),
    child: Transform.rotate(
      angle: Utils.degreesToRad(rotateAngle),
      child: isSvg
        ? SvgPicture.asset(imageAssetPath, fit: imgFit ?? BoxFit.contain)
        : ClipRRect(
        borderRadius: BorderRadius.circular(radius),
        child: Hero(
          tag: tag,
          child: Image.asset(
            imageAssetPath,
            fit: imgFit,
            color: imgColor,
            colorBlendMode: imgBlendMode,
          ),
        ),
      ),
    ),
  );
}

class SearchBox extends StatelessWidget {
  const SearchBox({
    Key? key,
    this.textFieldStyle,
    this.textFieldDecoration,
    this.borderRadius = 0,
    this.marginRight = 0,
    this.boxColor,
    this.controller,
  }) : super(key: key);

  final TextStyle? textFieldStyle;
  final InputDecoration? textFieldDecoration;
  final TextEditingController? controller;
  final Color? boxColor;
  final double marginRight;
  final double borderRadius;

  @override
  Widget build(BuildContext context) => Container(
      margin: EdgeInsets.only(right: marginRight),
      decoration: BoxDecoration(
        color: boxColor ?? Colors.grey.shade50,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: TextField(
        style: textFieldStyle,
        decoration: textFieldDecoration,
        controller: controller,
      )
  );
}

class RatingButton extends StatelessWidget {
  const RatingButton({
    Key? key,
    this.solid,
    this.gradient,
    this.height,
    this.borderRadius = 0,
    this.shadowLen = 0,
    this.shadowSwatch,
    this.child,
    this.onTap,
  }) : super(key: key);

  final Color? solid;
  final Gradient? gradient;
  final double? height;
  final double borderRadius;
  final int shadowLen;
  final Widget? child;
  final Map<Color, List<double>>? shadowSwatch;
  final GestureTapCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final valList = shadowSwatch?.values.toList();
    final isValNull = valList == null;

    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: solid,
          gradient: gradient,
          boxShadow: List.generate(shadowLen, (index) => BoxShadow(
            offset: Offset.fromDirection(1,0),
            color: (shadowSwatch?.keys.toList())?.elementAt(index) ?? Colors.transparent,
            blurRadius: isValNull || valList.isEmpty
              ? 0
              : valList[index][0],
            spreadRadius: isValNull || valList.isEmpty || valList[index].length < 2
              ? 0
              : valList[index][1],
          )),
        ),
        child: child,
      ),
    );
  }
}

class RowSpacer extends StatelessWidget {
  const RowSpacer({
    Key? key,
    required this.children,
    this.spacing = 0,
  }) : super(key: key);

  final List<Widget> children;
  final double spacing;

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: children.map((c) => Container(
      padding: EdgeInsets.only(right: spacing),
      child: c,
    )).toList(),
  );
}

class TextSimpler extends StatelessWidget implements Text {
  const TextSimpler(this.text, {
    Key? key,
    this.size,
    this.isBold = false,
    this.weight,
    this.color,
    this.colorHex,
    this.family,
    this.maxLines,
    this.setEllipsis = false,
    this.tof,
    this.wrap,
    this.height,
  }) : super(key: key);

  final String text;
  final bool isBold;
  final FontWeight? weight;
  final double? size;
  final int? colorHex;
  final Color? color;
  final String? family;
  final bool setEllipsis;
  final TextOverflow? tof;
  final bool? wrap;
  final double? height;

  @override
  final int? maxLines;

  @override
  String get data => text;

  @override
  bool? get softWrap => wrap;

  @override
  TextOverflow? get overflow => setEllipsis ? TextOverflow.ellipsis : tof;

  @override
  TextStyle? get style => (
      size == null
          && family == null
          && weight == null
          && color == null
          && colorHex == null
          && family == null
          && isBold == false
          && height == null
  ) ? null : TextStyle(
    fontSize: size,
    fontWeight: isBold
        ? FontWeight.bold
        : weight ?? FontWeight.normal,
    color: color ?? Color(colorHex ?? 0xFF000000),
    fontFamily: family,
    height: height,
  );

  @override
  Locale? get locale => null;

  @override
  String? get semanticsLabel => null;

  @override
  StrutStyle? get strutStyle => null;

  @override
  TextAlign? get textAlign => null;

  @override
  TextDirection? get textDirection => null;

  @override
  TextHeightBehavior? get textHeightBehavior => null;

  @override
  double? get textScaleFactor => null;

  @override
  InlineSpan? get textSpan => null;

  @override
  TextWidthBasis? get textWidthBasis => null;

  @override
  Widget build(BuildContext context) {
    return Text(data,
      softWrap: softWrap,
      maxLines: maxLines,
      overflow: overflow,
      style: style,
    );
  }
}
