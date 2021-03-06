import 'package:sonr_plugin/sonr_plugin.dart';
import 'package:sonr_plugin/src/proto/proto.dart';

/// ### ProfileUtils
/// Dart Extension for `Profile` Protobuf Class
extension ProfileUtil on Profile {
  /// Checks whether [Profile] has necessary fields: [firstName] [lastName] [userName]
  bool get exists => this.hasFirstName() && this.hasLastName() && this.hasSName();

  /// Returns full name as String
  String get fullName => "$firstInitial$_firstnameWithoutInitial $lastInitial$_lastnameWithoutInitial";

  /// Returns Initials of Name
  String get initials {
    if (this.hasFirstName() && this.hasLastName()) {
      return firstInitial + lastInitial;
    } else if (this.hasFirstName()) {
      return this.firstName.substring(0, 2).toUpperCase();
    } else {
      return 'SNR';
    }
  }

  /// Check if Full Name is Long
  bool get isLongFullName => fullNameLength > 8;

  /// Return Length of Characters for full name
  int get fullNameLength => this.fullName.length;

  /// Returns Firstname Initial
  String get firstInitial => this.firstName.substring(0, 1).toUpperCase();

  /// Returns Lastname Initial
  String get lastInitial => this.lastName.substring(0, 1).toUpperCase();

  /// Returns Last Name Initial with a dot
  String get lastInitialDot => "${this.lastName.substring(0, 1).toUpperCase()}.";

  /// Returns Firstname **WITHOUT** `firstInitial`
  String get _firstnameWithoutInitial => this.firstName.substring(1).toLowerCase();

  /// Returns Firstname **WITHOUT** `firstInitial`
  String get _lastnameWithoutInitial => this.lastName.substring(1).toLowerCase();

  /// Returns SName in pretty Format
  String prettySName() {
    if (this.hasSName()) {
      return this.sName + ".snr/";
    } else {
      return "test.snr/";
    }
  }
}
