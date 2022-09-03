/*
 * Created by Kyle Fuehri
 */

import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class Utils {
  /// A helper method used to return the correct Svg for the weather
  static SvgPicture getWeatherIcon(String url, double width) {
    if (url.contains('113.png')) {
      return SvgPicture.asset('assets/svg/113.svg', width: width);
    } else if (url.contains('116.png')) {
      return SvgPicture.asset('assets/svg/116.svg', width: width);
    } else if (url.contains('119.png')) {
      return SvgPicture.asset('assets/svg/119.svg', width: width);
    } else if (url.contains('122.png')) {
      return SvgPicture.asset('assets/svg/122.svg', width: width);
    } else if (url.contains('143.png')) {
      return SvgPicture.asset('assets/svg/143.svg', width: width);
    } else if (url.contains('176.png')) {
      return SvgPicture.asset('assets/svg/176.svg', width: width);
    } else if (url.contains('179.png')) {
      return SvgPicture.asset('assets/svg/179.svg', width: width);
    } else if (url.contains('182.png')) {
      return SvgPicture.asset('assets/svg/182.svg', width: width);
    } else if (url.contains('185.png')) {
      return SvgPicture.asset('assets/svg/185.svg', width: width);
    } else if (url.contains('200.png')) {
      return SvgPicture.asset('assets/svg/200.svg', width: width);
    } else if (url.contains('227.png')) {
      return SvgPicture.asset('assets/svg/227.svg', width: width);
    } else if (url.contains('230.png')) {
      return SvgPicture.asset('assets/svg/230.svg', width: width);
    } else if (url.contains('248.png')) {
      return SvgPicture.asset('assets/svg/248.svg', width: width);
    } else if (url.contains('260.png')) {
      return SvgPicture.asset('assets/svg/260.svg', width: width);
    } else if (url.contains('263.png')) {
      return SvgPicture.asset('assets/svg/263.svg', width: width);
    } else if (url.contains('266.png')) {
      return SvgPicture.asset('assets/svg/266.svg', width: width);
    } else if (url.contains('281.png')) {
      return SvgPicture.asset('assets/svg/281.svg', width: width);
    } else if (url.contains('284.png')) {
      return SvgPicture.asset('assets/svg/284.svg', width: width);
    } else if (url.contains('293.png')) {
      return SvgPicture.asset('assets/svg/293.svg', width: width);
    } else if (url.contains('296.png')) {
      return SvgPicture.asset('assets/svg/296.svg', width: width);
    } else if (url.contains('299.png')) {
      return SvgPicture.asset('assets/svg/299.svg', width: width);
    } else if (url.contains('302.png')) {
      return SvgPicture.asset('assets/svg/302.svg', width: width);
    } else if (url.contains('305.png')) {
      return SvgPicture.asset('assets/svg/305.svg', width: width);
    } else if (url.contains('308.png')) {
      return SvgPicture.asset('assets/svg/308.svg', width: width);
    } else if (url.contains('311.png')) {
      return SvgPicture.asset('assets/svg/311.svg', width: width);
    } else if (url.contains('314.png')) {
      return SvgPicture.asset('assets/svg/314.svg', width: width);
    } else if (url.contains('317.png')) {
      return SvgPicture.asset('assets/svg/317.svg', width: width);
    } else if (url.contains('320.png')) {
      return SvgPicture.asset('assets/svg/320.svg', width: width);
    } else if (url.contains('323.png')) {
      return SvgPicture.asset('assets/svg/323.svg', width: width);
    } else if (url.contains('326.png')) {
      return SvgPicture.asset('assets/svg/326.svg', width: width);
    } else if (url.contains('329.png')) {
      return SvgPicture.asset('assets/svg/329.svg', width: width);
    } else if (url.contains('332.png')) {
      return SvgPicture.asset('assets/svg/332.svg', width: width);
    } else if (url.contains('335.png')) {
      return SvgPicture.asset('assets/svg/335.svg', width: width);
    } else if (url.contains('338.png')) {
      return SvgPicture.asset('assets/svg/338.svg', width: width);
    } else if (url.contains('350.png')) {
      return SvgPicture.asset('assets/svg/350.svg', width: width);
    } else if (url.contains('353.png')) {
      return SvgPicture.asset('assets/svg/353.svg', width: width);
    } else if (url.contains('356.png')) {
      return SvgPicture.asset('assets/svg/356.svg', width: width);
    } else if (url.contains('359.png')) {
      return SvgPicture.asset('assets/svg/359.svg', width: width);
    } else if (url.contains('362.png')) {
      return SvgPicture.asset('assets/svg/362.svg', width: width);
    } else if (url.contains('365.png')) {
      return SvgPicture.asset('assets/svg/365.svg', width: width);
    } else if (url.contains('368.png')) {
      return SvgPicture.asset('assets/svg/368.svg', width: width);
    } else if (url.contains('371.png')) {
      return SvgPicture.asset('assets/svg/371.svg', width: width);
    } else if (url.contains('374.png')) {
      return SvgPicture.asset('assets/svg/374.svg', width: width);
    } else if (url.contains('377.png')) {
      return SvgPicture.asset('assets/svg/377.svg', width: width);
    } else if (url.contains('386.png')) {
      return SvgPicture.asset('assets/svg/386.svg', width: width);
    } else if (url.contains('389.png')) {
      return SvgPicture.asset('assets/svg/389.svg', width: width);
    } else if (url.contains('392.png')) {
      return SvgPicture.asset('assets/svg/392.svg', width: width);
    } else {
      return SvgPicture.asset('assets/svg/395.svg', width: width);
    }
  }

  /// A helper method used to return a human readable date from a timeStamp
  static String getDateTime(int time) {
    DateTime newTime = DateTime.fromMillisecondsSinceEpoch(time * 1000);
    final weekDay = DateFormat('dd MMMM').format(newTime);
    return weekDay;
  }
}
