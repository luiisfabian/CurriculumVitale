import 'package:curriculum_vitale/ui/about/about_page.dart';
import 'package:curriculum_vitale/ui/briefcase/briefcase_page.dart';
import 'package:curriculum_vitale/ui/contact/contact_page.dart';
import 'package:curriculum_vitale/ui/home_page.dart';
import 'package:curriculum_vitale/ui/privacy/privacy_page.dart';
import 'package:curriculum_vitale/ui/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dev. Luis Fabian',
      theme: ThemeData(
          primaryColor: const Color(0xFF3498db), // Verde Menta
          scaffoldBackgroundColor:
              const Color(0xFFecf0f1), // Color de fondo general
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.black87), // Texto principal
            bodyMedium: TextStyle(
                color: Color(0xFF2c3e50)), // Texto secundario (Gris Oscuro)
          ),
          buttonTheme: const ButtonThemeData(
            buttonColor: Color(0xFFF39C12), // Amarillo para botones
            textTheme: ButtonTextTheme.primary,
          ),
          useMaterial3: true,
          fontFamily: 'Courier New',
          colorScheme: ColorScheme.fromSwatch()
              .copyWith(secondary: const Color(0xFF2ecc71))
              .copyWith(background: Colors.white)),
      routes: {
        '/': (context) => const HomePage(),
        '/aboutPage': (context) => const AboutPage(),
        '/briefcasePage': (context) => const BriefcasePage(),
        '/contactPage': (context) => const ContactPage(),
        '/profilePage': (context) => const ProfilePage(),
        '/privacyPage': (context) => const PrivacyPage(),
        '/homePage': (context) => const HomePage(),
      },
      initialRoute: '/',
    );
  }
}
