import 'package:animate_do/animate_do.dart';
import 'package:curriculum_vitale/widgets/circle.dart';
import 'package:curriculum_vitale/widgets/profile_text_page.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: size.height * 0.1,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.3,
            top: size.height * 0.5,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.6,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 0.9,
            top: size.height * 0.5,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 1.2,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Positioned(
            left: size.height * 1.5,
            top: size.height * 0.5,
            child: Circle(colors: [
              Theme.of(context).primaryColor,
              Theme.of(context).secondaryHeaderColor,
              Theme.of(context).primaryColorLight
            ], radius: size.width * 0.1),
          ),
          Container(
            padding: EdgeInsets.all(40),
            height: size.height,
            width: size.width,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileTextPage(
                    title:
                        "Tecnólogo en Sistemas con Experiencia en Desarrollo de Software y Soporte",
                    subtitle1:
                        "Soy un Tecnólogo en Sistemas con una sólida experiencia en el desarrollo de software y el soporte técnico. Mi enfoque se centra en utilizar mis habilidades técnicas y conocimientos para contribuir al éxito de proyectos y garantizar un entorno informático eficiente.",
                  ),
                  ProfileTextPage(
                    title:
                        "Desarrollador de Software:",
                          subtitle1:
                        "He trabajado como desarrollador de software, contribuyendo al diseño, implementación y mantenimiento de aplicaciones utilizando tecnologías como Angular, Flutter y Bootstrap. Experiencia en el desarrollo de páginas web y landing pages, asegurando una experiencia de usuario atractiva y funcional.",
                   
                     
                  ),
                  ProfileTextPage(
                    title:
                        "Auxiliar de Sistemas en Soporte:",
                          subtitle1:
                        "Desempeñé el rol de auxiliar de sistemas, brindando soporte técnico a usuarios y resolviendo eficientemente problemas relacionados con hardware, software y redes.",
                  ),
                   ProfileTextPage(
                    title:
                        "Desarrollo Front-end:",
                          subtitle1:
                        "Dominio de HTML 5, Bootstrap y Angular Material para crear interfaces modernas y responsivas.",
                  ),
                  ProfileTextPage(
                    title:
                        "Desarrollo Móvil:",
                          subtitle1:
                        "Experiencia en el desarrollo de aplicaciones móviles con Flutter.",
                  ),
                  ProfileTextPage(
                    title:
                        "Base de Datos:",
                          subtitle1:
                        "Conocimiento sólido en SQL Server y Firebase para la gestión eficiente de bases de datos",
                  ),

                  ProfileTextPage(
                    title:
                        "Soporte Técnico:",
                          subtitle1:
                        "Habilidad para proporcionar soporte a usuarios, identificar y resolver problemas de manera efectiva.",
                  ),

                   ProfileTextPage(
                    title:
                        "Objetivo Profesional:",
                          subtitle1:
                        "Busco oportunidades para aplicar mis habilidades y experiencia en un entorno dinámico, contribuyendo al desarrollo de soluciones innovadoras y brindando un soporte excepcional a usuarios y sistemas. Mi pasión por la tecnología y mi compromiso con la excelencia me convierten en un candidato ideal para roles que requieran un enfoque integral en desarrollo y soporte de sistemas",
                  ),


                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
