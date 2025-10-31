import 'package:flutter/material.dart';
import 'package:widget_tree_airbnb/ui/pages/class/accommodation.dart';
import 'package:widget_tree_airbnb/ui/widgets/apartment.dart';

class Section extends StatefulWidget {
  final List<Accommodation> alojamientos;
  final String title;

  const Section({super.key, required this.alojamientos, required this.title});

  @override
  State<Section> createState() => _SectionState();
}

class _SectionState extends State<Section> {
  final Set<int> _favorites = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(widget.title),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: widget.alojamientos.length,
            itemBuilder: (context, index) {
              return Apartment(
                alojamiento: widget.alojamientos[index],
                isFavorite: _favorites.contains(index),
                onFavoriteToggle: () {
                  setState(() {
                    if (_favorites.contains(index)) {
                      _favorites.remove(index);
                    } else {
                      _favorites.add(index);
                    }
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
