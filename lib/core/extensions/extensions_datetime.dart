import 'package:intl/intl.dart';

extension DateExtensions on DateTime {
  ///Represents a [DateTime] in the format of 7/10/1996 5:08 PM
  String get asFormattedDateTime => DateFormat.yMd().add_jm().format(this);
}
