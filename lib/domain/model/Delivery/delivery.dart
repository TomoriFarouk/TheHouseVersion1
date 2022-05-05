import 'package:equatable/equatable.dart';

class Delivery extends Equatable {
  final String name;
  final String text;
  final double price;
  final bool isSelected;

  const Delivery({
    required this.name,
    required this.text,
    required this.price,
    required this.isSelected,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        text,
        price,
        isSelected,
      ];

  static List<Delivery> delivery = [
    Delivery(
      name: 'Street Delivery',
      text: 'Your item(s) will be delivered inside the entryway of your home or apartment but will not be unpacked or assembled',
      price: 49,
      isSelected: false,
    ),
    Delivery(
      name: 'Door Delivery',
      text: 'Your item(s) will be delivered inside the entryway of your home or apartment but will not be unpacked or assembled',
      price: 49,
      isSelected: false,
    ),
  ];
}
