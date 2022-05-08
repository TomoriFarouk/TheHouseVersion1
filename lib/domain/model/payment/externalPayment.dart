import 'package:equatable/equatable.dart';
import 'package:furniture_ui/model/PaymentModel.dart';

class ExternalPayment extends Equatable {
  final String name;
  final String icon;

  const ExternalPayment({
    required this.name,
    required this.icon,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        icon,
      ];

  static List<ExternalPayment> payment = [
    ExternalPayment(name: 'Pay with Paypal', icon: 'assets/icons/Paypal(2).svg'),
    ExternalPayment(
      name: 'Financing',
    ),
  ];
}
