
class AppRoutes {

  ///First Navigation routes define here

  static const String home1 = '/user/home';
  static const String details =  'details';
  static String get homeDetailsPath => '$home1/$details';


  static const String profile = '/user/profile';
  static const String edit = 'edit';
  static String get profileEditPath => '$profile/$edit';



  static const String settings = '/user/settings';
  static const String privacy = 'privacy';
  static String get settingPrivacyPath => '$settings/$privacy';


  ///Second Navigation routes define here

  static const String donorHome = '/donor/home';
  static const String donorDetails =  'details';
  static String get donorDetailPath => '$donorHome/$donorDetails';

  static const String donorProfile =  '/donor/profile';
  static const String donorEdit = 'edit';
  static String get donorProfileEditPath => '$donorProfile/$donorEdit';

  static const String donorSetting = '/donor/settings';
  static const String donorPrivacy =  'privacy';
  static String get donorSettingPrivacy => '$donorProfile/$donorEdit';



  /// Global Screen Navigation routes
  static const String newScreen = '/new';

  // 👇 Global parameterized route path
  static const String parameterScreenPath = '/param/:value/:active';
  // 👇 Helper to generate full route dynamically
  static String parameterScreen(String value, bool isActive) =>
      '/param/$value/${isActive.toString()}';



}
