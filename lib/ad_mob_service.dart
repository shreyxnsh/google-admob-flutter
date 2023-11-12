import 'dart:io';

class AdMobService{

  static String? get bannerAdUnitId{
    if(Platform.isAndroid){
      return 'ca-app-pub-5467268422077186/8307207768';
    }else if(Platform.isIOS){
      return 'ca-app-pub-5467268422077186/9233276625';
    }

    return null;
  }

  
  static String? get interstitialAdUnitId{
    if(Platform.isAndroid){
      return 'ca-app-pub-5467268422077186/1949720966';
    }else if(Platform.isIOS){
      return 'ca-app-pub-5467268422077186/7920194955';
    }

    return null;
  }

  
  static String? get rewardedAdUnitId{
    if(Platform.isAndroid){
      return 'ca-app-pub-5467268422077186/4691434378';
    }else if(Platform.isIOS){
      return 'ca-app-pub-5467268422077186/7976035272';
    }

    return null;
  }
}