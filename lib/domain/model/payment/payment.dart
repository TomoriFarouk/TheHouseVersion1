import 'package:equatable/equatable.dart';
import 'package:furniture_ui/model/PaymentModel.dart';

class Payment extends Equatable {
  final String name;
  final String exp;
  final String endingDate;

  const Payment({
    required this.name,
    required this.exp,
    required this.endingDate,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        exp,
        endingDate,
      ];

  static List<Payment> payment = [
    Payment(
      name: 'Maurice Umoh ',
      exp: 'Lagos',
      endingDate: 'Nigeria',
    ),
  ];
}
