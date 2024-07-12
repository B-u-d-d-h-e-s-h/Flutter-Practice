import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Star {
  final String name;
  final String biography;

  Star(this.name, this.biography);
}

class MyApp extends StatelessWidget {
  final List<Star> bollywoodStars = [
    Star('Shah Rukh Khan',
        'Shah Rukh Khan, also known by the initialism SRK, is an Indian actor, film producer, and television personality.'),
    Star('Deepika Padukone',
        'Deepika Padukone is an Indian actress and producer who works in Hindi films.'),
    Star('Salman Khan',
        'Salman Khan is an Indian film actor, producer, occasional singer, and television personality who works in Hindi films.'),
    Star('Priyanka Chopra',
        'Priyanka Chopra Jonas is an Indian actress, singer, and film producer.'),
    Star('Amitabh Bachchan',
        'Amitabh Bachchan is an Indian film actor, film producer, television host, occasional playback singer, and former politician.'),
    Star('Kareena Kapoor Khan',
        'Kareena Kapoor Khan is an Indian actress who appears in Hindi films.'),
    Star('Akshay Kumar',
        'Akshay Kumar is an Indian-born naturalised Canadian actor, film producer, martial artist, and television personality who works in Bollywood films.'),
    Star('Alia Bhatt',
        'Alia Bhatt is a British actress and singer who works in Hindi-language films.'),
    Star('Hrithik Roshan',
        'Hrithik Roshan is an Indian actor who works in Hindi films.'),
    Star('Katrina Kaif',
        'Katrina Kaif is an English actress who works in Hindi films.'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bollywood Stars App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Bollywood Stars'),
        ),
        body: ListView.builder(
          itemCount: bollywoodStars.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(bollywoodStars[index].name),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        BiographyPage(star: bollywoodStars[index]),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}

class BiographyPage extends StatelessWidget {
  final Star star;

  BiographyPage({required this.star});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(star.name),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          star.biography,
          style: TextStyle(fontSize: 16.0),
        ),
      ),
    );
  }
}
