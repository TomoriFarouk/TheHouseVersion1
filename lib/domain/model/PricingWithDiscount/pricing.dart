import 'package:equatable/equatable.dart';

class Pricing extends Equatable {
  final String text;

  const Pricing({required this.text});

  @override
  // TODO: implement props
  List<Object> get props => [
        text,
      ];

  static List<Pricing> pricing = [
    Pricing(
      text: "Any Price",
    ),
    Pricing(
      text: "Under ${60}",
    ),
    Pricing(
      text: "Under ${60}",
    ),
  ];
}
