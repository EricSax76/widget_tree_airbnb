import 'package:widget_tree_airbnb/ui/pages/class/accommodation.dart';
import 'package:widget_tree_airbnb/ui/pages/class/section.dart';

class MockData {
  static final List<Accommodation> alojamientosMadrid = [
    Accommodation(
      title: "Habitación en Universidad",
      checkInDate: DateTime(2025, 12, 26),
      checkOutDate: DateTime(2025, 12, 28),
      hostType: "Anfitrión particular",
      priceTotal: 98.0,
      nights: 2,
      rating: 4.94,
      imageUrl: "lib/assets/images/muneco.jpg",
      label: "Recomendación del viajero",
    ),
    Accommodation(
      title: "Estudio moderno en el centro de Valencia",
      checkInDate: DateTime(2025, 11, 15),
      checkOutDate: DateTime(2025, 11, 18),
      hostType: "Superanfitrión",
      priceTotal: 180.0,
      nights: 3,
      rating: 4.87,
      imageUrl: "lib/assets/images/muneco.jpg",
      label: "Cerca de atracciones populares",
    ),
    Accommodation(
      title: "Apartamento luminoso con terraza",
      checkInDate: DateTime(2026, 1, 5),
      checkOutDate: DateTime(2026, 1, 10),
      hostType: "Anfitrión profesional",
      priceTotal: 400.0,
      nights: 5,
      rating: 4.91,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Ideal para familias",
    ),
    Accommodation(
      title: "Loft bohemio junto al mar",
      checkInDate: DateTime(2025, 8, 20),
      checkOutDate: DateTime(2025, 8, 23),
      hostType: "Anfitrión particular",
      priceTotal: 270.0,
      nights: 3,
      rating: 4.98,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Vistas al mar",
    ),
  ];

  static final List<Accommodation> alojamientosMarbella = [
    Accommodation(
      title: "Apartamento con vistas al mar en Marbella",
      checkInDate: DateTime(2025, 7, 10),
      checkOutDate: DateTime(2025, 7, 15),
      hostType: "Anfitrión particular",
      priceTotal: 850.0,
      nights: 5,
      rating: 4.96,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Frente a la playa",
    ),
    Accommodation(
      title: "Villa privada con piscina y jardín",
      checkInDate: DateTime(2025, 8, 2),
      checkOutDate: DateTime(2025, 8, 7),
      hostType: "Superanfitrión",
      priceTotal: 1450.0,
      nights: 5,
      rating: 4.99,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Lujo y privacidad",
    ),
  ];

  static final List<Accommodation> alojamientosBarcelona = [
    Accommodation(
      title: "Loft industrial en el Born",
      checkInDate: DateTime(2025, 9, 12),
      checkOutDate: DateTime(2025, 9, 15),
      hostType: "Anfitrión particular",
      priceTotal: 390.0,
      nights: 3,
      rating: 4.89,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Cerca del Museo Picasso",
    ),
    Accommodation(
      title: "Ático con terraza y vistas a la Sagrada Familia",
      checkInDate: DateTime(2025, 10, 1),
      checkOutDate: DateTime(2025, 10, 4),
      hostType: "Superanfitrión",
      priceTotal: 540.0,
      nights: 3,
      rating: 4.95,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Vistas espectaculares",
    ),
    Accommodation(
      title: "Estudio acogedor en el Gòtic",
      checkInDate: DateTime(2025, 11, 5),
      checkOutDate: DateTime(2025, 11, 8),
      hostType: "Anfitrión particular",
      priceTotal: 310.0,
      nights: 3,
      rating: 4.82,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Encanto histórico",
    ),
    Accommodation(
      title: "Apartamento moderno cerca de la playa de la Barceloneta",
      checkInDate: DateTime(2025, 6, 20),
      checkOutDate: DateTime(2025, 6, 23),
      hostType: "Anfitrión profesional",
      priceTotal: 480.0,
      nights: 3,
      rating: 4.90,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Perfecto para verano",
    ),
    Accommodation(
      title: "Habitación privada con balcón en Gràcia",
      checkInDate: DateTime(2025, 12, 10),
      checkOutDate: DateTime(2025, 12, 12),
      hostType: "Anfitrión particular",
      priceTotal: 180.0,
      nights: 2,
      rating: 4.77,
      imageUrl:
          "https://www.shutterstock.com/es/image-photo/modern-home-living-room-interior-luxurious-2497127165",
      label: "Barrio con encanto",
    ),
  ];

  static final List<SectionModel> sections = [
    SectionModel(
      title: "Alojamientos en Madrid",
      accomations: alojamientosMadrid,
    ),
    SectionModel(
      title: "Alojamientos en BCN",
      accomations: alojamientosBarcelona,
    ),
    SectionModel(
      title: "Alojamientos en Marbella",
      accomations: alojamientosMarbella,
    ),
  ];
}
