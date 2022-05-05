import 'package:equatable/equatable.dart';

class Discount extends Equatable {
  final String text;

  const Discount({required this.text});

  @override
  List<Object> get props => [
        text,
      ];

  static List<Discount> discount = [
    Discount(
      text: "50% or more",
    ),
    Discount(
      text: "50% or more",
    ),
    Discount(
      text: "50% or more",
    ),
  ];
}
