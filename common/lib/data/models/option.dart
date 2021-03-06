/// #### Asset Sound Types
enum Sound {
  Confirmed,
  Connected,
  Critical,
  Deleted,
  Fatal,
  Joined,
  Linked,
  Received,
  Swipe,
  Transmitted,
  Warning,
}

// @ Asset Sound Type Utility
extension Sounds on Sound {
  /// Constant Soundpool Reference
  //static late Soundpool _pool;

  /// Map with Sound Type and ID
  static Map<Sound, int> _soundIds = {};

  /// Initialize Soundpool
  static Future<void> init() async {
    // if (isCompatible) {
    // Init Pool
    // _pool = Soundpool.fromOptions(options: SoundpoolOptions(streamType: StreamType.notification));

    // Add Sounds
    // for (Sound s in Sound.values) {
    //   int soundId = await rootBundle.load(s.path).then((ByteData soundData) {
    //  //   return _pool.load(soundData);
    //   });
    //   _soundIds[s] = soundId;
    // }
    // }
  }

  /// Play this Current Sound
  Future<void> play() async {
    if (_soundIds[this] != null) {
      // await _pool.play(_soundIds[this]!);
      // await _pool.release();
    }
  }

  /// Return File Name of Sound
  String get file => '${this.name.toLowerCase()}.wav';

  /// Return Full Path of File
  String get path => 'assets/sounds/$file';

  /// Return Enum Value as String without Prefix
  String get name => this.toString().substring(this.toString().indexOf('.') + 1);
}
