import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const String appTitle = 'Sitios Turísticos de Ecuador';
    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(title: const Text(appTitle)),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              // 1. Galápagos
              ImageSection(image: '../images/galapagos.jpg'),
              TitleSection(
                name: 'Islas Galápagos',
                location: 'Provincia de Galápagos',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Las Islas Galápagos son un archipiélago único en el mundo, '
                    'famoso por su biodiversidad y paisajes volcánicos. '
                    'Es Patrimonio Natural de la Humanidad y un destino ideal '
                    'para observar especies endémicas como las tortugas gigantes.',
              ),

              // 2. Mitad del Mundo
              ImageSection(image: '../images/mitad_mundo.jpg'),
              TitleSection(
                name: 'Mitad del Mundo',
                location: 'Quito, Pichincha',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El monumento de la Mitad del Mundo marca la línea ecuatorial. '
                    'Aquí puedes pararte con un pie en cada hemisferio y visitar '
                    'el museo Intiñan para aprender sobre la cultura y ciencia '
                    'relacionada con la latitud 0°.',
              ),

              // 3. Baños de Agua Santa
              ImageSection(image: '../images/banos.jpg'),
              TitleSection(name: 'Baños de Agua Santa', location: 'Tungurahua'),
              ButtonSection(),
              TextSection(
                description:
                    'Baños es conocido como la “Puerta del Amazonas”. '
                    'Ofrece cascadas impresionantes, deportes extremos como rafting '
                    'y canopy, además de aguas termales naturales.',
              ),

              // 4. Quilotoa
              ImageSection(image: '../images/quilotoa.jpeg'),
              TitleSection(name: 'Laguna de Quilotoa', location: 'Cotopaxi'),
              ButtonSection(),
              TextSection(
                description:
                    'La Laguna de Quilotoa es un cráter volcánico con aguas turquesas. '
                    'Es uno de los paisajes más icónicos de Ecuador, ideal para caminatas '
                    'y fotografía.',
              ),

              // 5. Cuenca
              ImageSection(image: '../images/cuenca.jpg'),
              TitleSection(
                name: 'Centro Histórico de Cuenca',
                location: 'Azuay',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'Cuenca es Patrimonio Cultural de la Humanidad por la UNESCO. '
                    'Su centro histórico conserva arquitectura colonial, iglesias y museos '
                    'que muestran la riqueza cultural del país.',
              ),

              // 6. Parque Nacional Yasuní
              ImageSection(image: '../images/yasuni.jpg'),
              TitleSection(
                name: 'Parque Nacional Yasuní',
                location: 'Orellana',
              ),
              ButtonSection(),
              TextSection(
                description:
                    'El Yasuní es una de las reservas naturales más biodiversas del planeta. '
                    'Aquí habitan comunidades indígenas y una gran variedad de flora y fauna.',
              ),

              // 7. Otavalo
              ImageSection(image: '../images/otavalo.jpg'),
              TitleSection(name: 'Mercado de Otavalo', location: 'Imbabura'),
              ButtonSection(),
              TextSection(
                description:
                    'El mercado artesanal de Otavalo es famoso por sus tejidos, artesanías '
                    'y cultura indígena. Es uno de los más grandes de Sudamérica.',
              ),

              // 8. Montañita
              ImageSection(image: '../images/montanita.jpg'),
              TitleSection(name: 'Montañita', location: 'Santa Elena'),
              ButtonSection(),
              TextSection(
                description:
                    'Montañita es un destino costero reconocido por sus playas, surf y vida nocturna. '
                    'Es ideal para jóvenes y aventureros.',
              ),

              // 9. Parque Nacional Cotopaxi
              ImageSection(image: '../images/cotopaxi.jpg'),
              TitleSection(name: 'Volcán Cotopaxi', location: 'Cotopaxi'),
              ButtonSection(),
              TextSection(
                description:
                    'El Cotopaxi es uno de los volcanes activos más altos del mundo. '
                    'Su parque nacional ofrece caminatas, paisajes andinos y avistamiento de fauna.',
              ),

              // 10. Guayaquil
              ImageSection(image: '../images/malecon.jpg'),
              TitleSection(name: 'Malecón 2000', location: 'Guayaquil, Guayas'),
              ButtonSection(),
              TextSection(
                description:
                    'El Malecón 2000 es un moderno paseo junto al río Guayas. '
                    'Cuenta con áreas verdes, museos, restaurantes y espacios culturales.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.name, required this.location});

  final String name;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            /*1*/
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /*2*/
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(location, style: TextStyle(color: Colors.grey[500])),
              ],
            ),
          ),
          /*3*/
          // #docregion icon
          Icon(Icons.star, color: Colors.red[500]),
          // #enddocregion icon
          const Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonWithText(color: color, icon: Icons.call, label: 'CALL'),
          ButtonWithText(color: color, icon: Icons.near_me, label: 'ROUTE'),
          ButtonWithText(color: color, icon: Icons.share, label: 'SHARE'),
        ],
      ),
    );
  }
}

class ButtonWithText extends StatelessWidget {
  const ButtonWithText({
    super.key,
    required this.color,
    required this.icon,
    required this.label,
  });

  final Color color;
  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}

class TextSection extends StatelessWidget {
  const TextSection({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Text(description, softWrap: true),
    );
  }
}

// #docregion image-asset
class ImageSection extends StatelessWidget {
  const ImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    // #docregion image-asset
    return Image.asset(image, width: 600, height: 240, fit: BoxFit.cover);
    // #enddocregion image-asset
  }
}
// #enddocregion image-section

// #docregion favorite-widget
class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}
// #enddocregion favorite-widget

// #docregion favorite-state, favorite-state-fields, favorite-state-build
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // #enddocregion favorite-state-build
  bool _isFavorited = true;
  int _favoriteCount = 41;
  // #enddocregion favorite-state-fields

  // #docregion toggle-favorite
  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }
  // #enddocregion toggle-favorite

  // #docregion favorite-state-build
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: const EdgeInsets.all(0),
          child: IconButton(
            padding: const EdgeInsets.all(0),
            alignment: Alignment.center,
            icon: (_isFavorited
                ? const Icon(Icons.star)
                : const Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(width: 18, child: SizedBox(child: Text('$_favoriteCount'))),
      ],
    );
  }

  // #docregion favorite-state-fields
}

// #enddocregion favorite-state, favorite-state-fields, favorite-state-build
