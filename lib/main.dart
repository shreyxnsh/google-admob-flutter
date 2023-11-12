import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  MobileAds.instance.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AdMob Implementation',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorSchemeSeed: Colors.blueAccent ,
        textTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 24)
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(fontSize: 32),
            minimumSize: const Size(250,56),
          )
        )

      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BannerAd? _banner;
  InterstitialAd? _interstitial;
  RewardedAd? _rewardedAd;

  @override
  void initState() {
    super.initState();

    // method to create a banner ad
    // method to create a interstitial ad
    // method to create a rewarded ad
  }
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admob'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(height: 30,),
            const Spacer(),
            const SizedBox(height: 30,),
            const Spacer(),
            
          ],
        ),
      ),
      bottomNavigationBar: _banner == null
      ? Container() 
      : Container(
        margin: const EdgeInsets.only(bottom: 12),
        height: 52,
        child: AdWidget(ad: _banner!),
      )
    );
  }
}
