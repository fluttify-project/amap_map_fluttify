import 'package:flutter/material.dart';

//region space
const kSpaceZero = 0.0;
const kSpaceTiny = 1.0;
const kSpaceSmall = 4.0;
const kSpaceNormal = 8.0;
const kSpaceLittleBig = 12.0;
const kSpaceBig = 16.0;
const kSpaceLarge = 24.0;
const kSpaceHuge = 32.0;
const kSpaceGiant = 64.0;

const SPACE_ZERO = SizedBox.shrink();

const SPACE_TINY = SizedBox(width: kSpaceTiny, height: kSpaceTiny);
const SPACE_TINY_HORIZONTAL = SizedBox(width: kSpaceTiny, height: kSpaceZero);
const SPACE_TINY_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceTiny);

const SPACE_SMALL = SizedBox(width: kSpaceSmall, height: kSpaceSmall);
const SPACE_SMALL_HORIZONTAL = SizedBox(width: kSpaceSmall, height: kSpaceZero);
const SPACE_SMALL_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceSmall);

const SPACE_NORMAL = SizedBox(width: kSpaceNormal, height: kSpaceNormal);
const SPACE_NORMAL_HORIZONTAL =
    SizedBox(width: kSpaceNormal, height: kSpaceZero);
const SPACE_NORMAL_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceNormal);

const SPACE_LITTLE_BIG =
    SizedBox(width: kSpaceLittleBig, height: kSpaceLittleBig);
const SPACE_LITTLE_BIG_HORIZONTAL =
    SizedBox(width: kSpaceLittleBig, height: kSpaceZero);
const SPACE_LITTLE_BIG_VERTICAL =
    SizedBox(width: kSpaceZero, height: kSpaceLittleBig);

const SPACE_BIG = SizedBox(width: kSpaceBig, height: kSpaceBig);
const SPACE_BIG_HORIZONTAL = SizedBox(width: kSpaceBig, height: kSpaceZero);
const SPACE_BIG_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceBig);

const SPACE_LARGE = SizedBox(width: kSpaceLarge, height: kSpaceLarge);
const SPACE_LARGE_HORIZONTAL = SizedBox(width: kSpaceLarge, height: kSpaceZero);
const SPACE_LARGE_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceLarge);

const SPACE_HUGE = SizedBox(width: kSpaceHuge, height: kSpaceHuge);
const SPACE_HUGE_HORIZONTAL = SizedBox(width: kSpaceHuge, height: kSpaceZero);
const SPACE_HUGE_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceHuge);

const SPACE_GIANT = SizedBox(width: kSpaceGiant, height: kSpaceGiant);
const SPACE_GIANT_HORIZONTAL = SizedBox(width: kSpaceGiant, height: kSpaceZero);
const SPACE_GIANT_VERTICAL = SizedBox(width: kSpaceZero, height: kSpaceGiant);

const kDividerTiny = Divider(height: kSpaceTiny);
const kDividerSmall = Divider(height: kSpaceSmall);
const kDividerNormal = Divider();
const kDividerLittleBig = Divider(height: kSpaceLittleBig);
const kDividerBig = Divider(height: kSpaceBig);
const kDividerLarge = Divider(height: kSpaceLarge);
const kDividerHuge = Divider(height: kSpaceHuge);
const kDividerGiant = Divider(height: kSpaceGiant);
//endregion

//region text
const kTextNormal = 16.0;
const kTextBig = 18.0;
//endregion

//region elevation
const kElevationZero = 0.0;
const kElevationTiny = 1.0;
const kElevationSmall = 2.0;
const kElevationNormal = 4.0;
const kElevationBig = 8.0;
const kElevationHuge = 16.0;
const kElevationGiant = 32.0;
//endregion
