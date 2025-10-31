import 'package:flutter/material.dart';
import 'package:widget_tree_airbnb/ui/pages/class/accommodation.dart';

class Apartment extends StatelessWidget {
  final Accommodation alojamiento;
  final bool isFavorite;
  final VoidCallback onFavoriteToggle;

  const Apartment({
    super.key,
    required this.alojamiento,
    required this.isFavorite,
    required this.onFavoriteToggle,
  });

  Widget _buildImage() {
    final path = alojamiento.imageUrl;
    final isNetworkImage = path.startsWith('https');
    final imageWidget = isNetworkImage
        ? Image.network(
            path,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) =>
                const ColoredBox(color: Colors.black12),
          )
        : Image.asset(path, fit: BoxFit.cover);

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(20)),
      child: SizedBox(width: 200, height: 200, child: imageWidget),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Card(
          color: const Color.fromARGB(255, 139, 140, 140),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              _buildImage(),
              Positioned(
                top: 15,
                right: 15,
                child: GestureDetector(
                  onTap: onFavoriteToggle,
                  child: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(179, 253, 253, 253),
                      borderRadius: BorderRadius.circular(20),
                    ),

                    alignment: Alignment.center,
                    child: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: isFavorite ? Colors.red : Colors.white,
                    ),
                  ),
                ),
              ),

              Positioned(
                top: 20,
                left: 20,
                child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  child: Container(width: 100, height: 20, color: Colors.black),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 200,
                child: Text(
                  alojamiento.title,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(alojamiento.nights.toString()),
              Text(alojamiento.hostType.toString()),
            ],
          ),
        ),
      ],
    );
  }
}
