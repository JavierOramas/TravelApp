import 'package:flutter/material.dart';

const Color fontsColor = Colors.black;
const Color dividerColors = Colors.grey;
const Color appBarIconsColor = Colors.black54;

const double fontSizeSectionsHome = 30;
const double fontSizeBlocksHome = 30;

TextStyle style_offer_name = new TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontWeight: FontWeight.bold,
);

// ignore: non_constant_identifier_names
TextStyle style_from = new TextStyle(
  color: Colors.red,
  fontSize: 20,
  fontWeight: FontWeight.bold,
);
// ignore: non_constant_identifier_names
TextStyle style_price = new TextStyle(
  color: Colors.black,
  fontSize: 25,
);

const Map suggestedDestinations = {
  'name_en': 'Find the hotel you were looking for!',
  'name_es': '¡ Encuentra el hotel que estabas buscando !',
};

const Map buttons = {
  'hotels': {
    'name_es': 'Hoteles',
    'name_en': 'Hotels',
    'icon': 'icons/menu/hoteles.svg',
  },
  'cars': {
    'name_es': 'Autos',
    'name_en': 'Cars',
    'icon': 'icons/menu/autos.svg',
  },
  'excursions': {
    'name_es': 'Excursiones',
    'name_en': 'Excursions',
    'icon': 'icons/menu/excursiones.svg',
  },
  'transfers': {
    'name_es': 'Traslados',
    'name_en': 'Transfers',
    'icon': 'icons/menu/traslados.svg',
  },
  'circuits': {
    'name_es': 'Circuitos',
    'name_en': 'Circuits',
    'icon': 'icons/menu/circuitos.svg',
  },
  'flights': {
    'name_es': 'Vuelos',
    'name_en': 'Flights',
    'icon': 'icons/menu/vuelos.svg',
  },
};
