@JS('window.Telegram')
library telegram;

import 'dart:ui';
import 'package:js/js.dart';

extension _HexColor on Color {
  /// String is in the format "aabbcc" or "ffaabbcc" with an optional leading "#".
  static Color? fromHex(String? hexString) {
    if (hexString == null) return null;

    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String toHex({bool leadingHashSign = true}) => '${leadingHashSign ? '#' : ''}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}

extension on Color? {
  String? toHex({bool leadingHashSign = true}) => this != null? '${leadingHashSign ? '#' : ''}'
      '${this!.red.toRadixString(16).padLeft(2, '0')}'
      '${this!.green.toRadixString(16).padLeft(2, '0')}'
      '${this!.blue.toRadixString(16).padLeft(2, '0')}' : null;
}

@JS('WebAppUser')
class WebAppUser {
  @JS('id')
  external int get id;

  @JS('is_bot')
  external bool get isBool;

  @JS('first_name')
  external String get firstName;

  @JS('last_name')
  external String get lastName;

  @JS('user_name')
  external String get username;

  @JS('language_code')
  external String get languageCode;

  @JS('is_premium')
  external bool get isPremium;

  @JS('photo_url')
  external String get photoUrl;
}

@JS('WebAppChat')
class WebAppChat {
  @JS('id')
  external int get id;

  @JS('type')
  external String get type;

  @JS('title')
  external String get title;

  @JS('username')
  external String get username;

  @JS('photo_url')
  external String get photoUrl;
}

@JS('WebAppInitData')
class WebAppInitData {
  @JS('query_id')
  external String? get queryId;

  @JS('user')
  external WebAppUser? get user;

  @JS('receiver')
  external WebAppUser? get receiver;

  @JS('chat')
  external WebAppChat? get chat;

  @JS('start_param')
  external String? get startParam;

  @JS('can_send_after')
  external int? get canSendAfter;

  @JS('auth_date')
  external int get authDate;

  @JS('hash')
  external String get hash;
}

@JS('ThemeParams')
@staticInterop
class JSThemeParams {}
extension JSThemeParamsExtension on JSThemeParams {
  @JS('bg_color')
  external String get bgColor;

  @JS('text_color')
  external String get textColor;

  @JS('hint_color')
  external String get hintColor;

  @JS('link_color')
  external String get linkColor;

  @JS('button_color')
  external String get buttonColor;

  @JS('button_text_color')
  external String get buttonTextColor;

  @JS('secondary_bg_color')
  external String? get secondaryBgColor;
}

@JS('BackButton')
class BackButton {
  external bool get isVisible;
  external void Function(void Function())? get onClick;
  external void Function(void Function())? get offClick;
  external void Function()? get show;
  external void Function()? get hide;
}

@JS()
@anonymous
class JSMainButtonOptions {
  @JS('text')
  external String? text;

  @JS('color')
  external String? color;

  @JS('text_color')
  external String? textColor;

  @JS('is_active')
  external bool? isActive;

  @JS('is_visible')
  external bool? isVisible;

  external factory JSMainButtonOptions({String? text, String? color, String? text_color, bool? is_active, bool? is_visible});
}

@JS('MainButton')
class JSMainButton {
  external String get text;

  external String get color;
  external String get textColor;

  external bool isVisible;
  external bool isActive;
  external bool isProgressVisible;
  external void Function(String) get setText;
  external void Function(void Function()) get onClick;
  external void Function(void Function()) get offClick;
  external void Function() get show;
  external void Function() get hide;
  external void Function() get enable;
  external void Function() get disable;
  external void Function(bool?) get showProgress;
  external void Function() get hideProcess;
  external void Function(JSMainButtonOptions) get setParams;
}

@JS('HapticFeedback')
class JSHapticFeedback {
  external void Function(String)? impactOccurred;
  external void Function(String)? notificationOccurred;
  external void Function()? selectionChanged;
}

@JS()
@anonymous
class JSOpenLinkOptions {
  @JS('try_instant_view')
  external bool get tryInstantView;

  external factory JSOpenLinkOptions({bool? try_instant_view});
}

@JS()
@anonymous
class PopupButton {
  external String? get id;
  external String? get type;
  external String? get text;

  external factory PopupButton({String? id, String? type, String? text});
}

@JS()
@anonymous
class PopupParams {
  external String? get title;
  external String get message;
  external List<PopupButton>? buttons;

  external factory PopupParams({required String message, String? title, List<PopupButton>? buttons});
}

@JS('WebApp')
class JSTelegramWebApp {
  external static String get initData;
  external static WebAppInitData get initDataUnsafe;
  external static String get version;
  external static String get platform;
  external static String get colorScheme;
  external static bool get isExpanded;
  external static  double get viewportHeight;
  external static double get viewportStableHeight;

  external static String get headerColor;
  external static String get backgroundColor;

  external static String get isClosingConfirmationEnabled;

  external static JSThemeParams get themeParams;

  @JS('BackButton')
  external static BackButton get backButton;

  @JS('MainButton')
  external static JSMainButton get mainButton;

  @JS('HapticFeedback')
  external static JSHapticFeedback get hapticFeedback;


  external static bool Function(String) get isVersionAtLeast;
  external static void Function(String)? get setHeaderColor;
  external static void Function(String)? get setBackgroundColor;
  external static void Function()? get enableClosingConfirmation;
  external static void Function()? get disableClosingConfirmation;
  external static void Function(String, void Function()) get onEvent;
  external static void Function(String, void Function()) get offEvent;
  external static void Function(String) get sendData;
  external static void Function(String, [JSOpenLinkOptions]) get openLink;
  external static void Function(String) get openTelegramLink;
  external static void Function(String, [void Function()?]) get openInvoice;
  external static void Function(PopupParams, [void Function()?]) showPopup;


  external static void Function() get expand;
}

class MainButtonOptions {
  final String? text;
  final Color? color;
  final Color? textColor;
  final bool? isActive;
  final bool? isVisible;

  const MainButtonOptions({this.text, this.color, this.textColor, this.isActive, this.isVisible});
}

class MainButton {
  final JSMainButton _mainButton;
  const MainButton._(JSMainButton mainButton): _mainButton = mainButton;

  String get text => _mainButton.text;
  Color get color => _HexColor.fromHex(_mainButton.color)!;
  Color get textColor => _HexColor.fromHex(_mainButton.textColor)!;
  bool get isVisible => _mainButton.isVisible;
  bool get isActive => _mainButton.isActive;
  bool get isProgressVisible => _mainButton.isProgressVisible;

  void setText(String text){
    _mainButton.setText(text);
  }

  void onClick(void Function() callback) {
  _mainButton.onClick(allowInterop(callback));
  }

  void offClick(void Function() callback) {
    _mainButton.onClick(allowInterop(callback));
  }

  void show() {
    _mainButton.show();
  }

  void hide() {
    _mainButton.hide();
  }

  void enable() {
    _mainButton.enable();
  }

  void disable() {
    _mainButton.disable();
  }

  void showProgress([bool? leaveActive = true]) {
    _mainButton.showProgress(leaveActive);
  }

  void hideProcess() {
    _mainButton.hideProcess();
  }

  void setParams(MainButtonOptions params) {
    _mainButton.setParams(JSMainButtonOptions(text: params.text, color: params.color.toHex(), text_color: params.textColor.toHex(), is_active: params.isActive, is_visible: params.isVisible));
  }
}

class ThemeParams {
  final JSThemeParams _themeParams;

  const ThemeParams._(JSThemeParams themeParams): _themeParams = themeParams;

  Color get bgColor => _HexColor.fromHex(_themeParams.bgColor)!;
  Color get textColor => _HexColor.fromHex(_themeParams.textColor)!;
  Color get hintColor => _HexColor.fromHex(_themeParams.hintColor)!;
  Color get linkColor => _HexColor.fromHex(_themeParams.linkColor)!;
  Color get buttonColor => _HexColor.fromHex(_themeParams.buttonColor)!;
  Color get buttonTextColor => _HexColor.fromHex(_themeParams.buttonColor)!;
  Color? get secondaryBgColor => _HexColor.fromHex(_themeParams.secondaryBgColor);
}

enum ImpactOccurred {light, medium, heavy, rigid, soft}
enum NotificationOccurred {error, success, warning}

class HapticFeedback {
  final JSHapticFeedback _hapticFeedback;

  const HapticFeedback._(JSHapticFeedback hapticFeedback): _hapticFeedback = hapticFeedback;

  void impactOccurred(ImpactOccurred impactOccurred) {
    if (_hapticFeedback.impactOccurred != null) {
      _hapticFeedback.impactOccurred!(impactOccurred.name);
    }
  }

  void notificationOccurred(NotificationOccurred notificationOccurred) {
    if (_hapticFeedback.notificationOccurred != null) {
      _hapticFeedback.notificationOccurred!(notificationOccurred.name);
    }
  }

  void selectionChanged() {
    if (_hapticFeedback.selectionChanged != null) {
      _hapticFeedback.selectionChanged!();
    }
  }
}

class TelegramWebApp {
  static String get initData => JSTelegramWebApp.initData;
  static WebAppInitData get initDataUnsafe => JSTelegramWebApp.initDataUnsafe;
  static String get version => JSTelegramWebApp.version;
  static String get platform => JSTelegramWebApp.platform;
  static String get colorScheme => JSTelegramWebApp.colorScheme;
  static bool get isExpanded => JSTelegramWebApp.isExpanded;
  static double get viewportHeight => JSTelegramWebApp.viewportHeight;
  static double get viewportStableHeight => JSTelegramWebApp.viewportStableHeight;
  static Color get headerColor => _HexColor.fromHex(JSTelegramWebApp.headerColor)!;
  static Color get backgroundColor => _HexColor.fromHex(JSTelegramWebApp.backgroundColor)!;
  static String get isClosingConfirmationEnabled => JSTelegramWebApp.isClosingConfirmationEnabled;
  static BackButton get backButton => JSTelegramWebApp.backButton;

  static final MainButton mainButton = MainButton._(JSTelegramWebApp.mainButton);
  static final ThemeParams themeParams = ThemeParams._(JSTelegramWebApp.themeParams);
  static final HapticFeedback hapticFeedback = HapticFeedback._(JSTelegramWebApp.hapticFeedback);

  static void Function() get expand => JSTelegramWebApp.expand;
  static void Function()? get enableClosingConfirmation => JSTelegramWebApp.enableClosingConfirmation;
  static void Function()? get disableClosingConfirmation => JSTelegramWebApp.disableClosingConfirmation;
  static void openLink(String url, [tryInstantView = true]) => JSTelegramWebApp.openLink(url, JSOpenLinkOptions(try_instant_view: tryInstantView));
  static void openInvoice(String url, [void Function()? callback]) => JSTelegramWebApp.openInvoice(url, callback);
  static void showPopup(PopupParams params, [void Function()? callback]) => JSTelegramWebApp.showPopup(params, callback);
}

