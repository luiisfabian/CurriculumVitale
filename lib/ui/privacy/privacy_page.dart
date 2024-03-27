import 'package:flutter/material.dart';

class PrivacyPage extends StatefulWidget {
  const PrivacyPage({super.key});

  @override
  State<PrivacyPage> createState() => _PrivacyPageState();
}

class _PrivacyPageState extends State<PrivacyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Política de Privacidad'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Política de Privacidad de OrganizaFácil',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Última actualización: 27 de marzo de 2024',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                '1. Información que recopilamos',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OrganizaFácil recopila la siguiente información de los usuarios:',
              ),
              SizedBox(height: 5.0),
              Text('• Información de contacto (nombre, dirección de correo electrónico)'),
              Text('• Datos de calendario y recordatorios ingresados por el usuario'),
              SizedBox(height: 20.0),
              Text(
                '2. Uso de la información',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'La información recopilada se utiliza para los siguientes fines:',
              ),
              SizedBox(height: 5.0),
              Text('• Proporcionar y mejorar el servicio de OrganizaFácil'),
              Text('• Personalizar la experiencia del usuario'),
              Text('• Enviar comunicaciones relacionadas con el servicio'),
              SizedBox(height: 20.0),
              Text(
                '3. Protección de la información',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OrganizaFácil implementa medidas de seguridad para proteger la información personal de los usuarios, incluidas, entre otras, las siguientes:',
              ),
              SizedBox(height: 5.0),
              Text('• Acceso restringido a la información del usuario'),
              Text('• Cifrado de datos sensibles'),
              Text('• Monitoreo regular de vulnerabilidades'),
              SizedBox(height: 20.0),
              Text(
                '4. Divulgación de información',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OrganizaFácil no compartirá información personal con terceros, excepto en las siguientes circunstancias:',
              ),
              SizedBox(height: 5.0),
              Text('• Cuando sea necesario para cumplir con la ley o proteger los derechos de OrganizaFácil'),
              SizedBox(height: 20.0),
              Text(
                '5. Cambios en la política de privacidad',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'OrganizaFácil se reserva el derecho de actualizar esta política de privacidad en cualquier momento. Los cambios se publicarán en esta página, y se alentará a los usuarios a revisarla periódicamente.',
              ),
            ],
          ),
        ),
      ),
    );
  }
  }
