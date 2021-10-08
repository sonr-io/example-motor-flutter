enum EnvVars {
  INTERCOM_APP,
  INTERCOM_ANDROID,
  INTERCOM_IOS,
  LOCATION_KEY,
  MIXPANEL_TOKEN,
  NB_KEY,
  NB_SECRET,
  RAPID_KEY,
  TEXTILE_KEY,
  TEXTILE_SECRET,
}

extension EnvVarsUtil on EnvVars {
  /// Key of the EnvVar key
  String get key => this.toString().split('.').last;

  /// Value of the EnvVar
  String get value => String.fromEnvironment(this.key, defaultValue: '');

  /// Returns EnvVar as a Map Entry
  MapEntry<String, String> get mapEntry => MapEntry(this.key, this.value);
}
