import 'package:equatable/equatable.dart';

class ExternalPayment extends Equatable {
  final String name;
  final String iconUrl;

  const ExternalPayment({
    required this.name,
    required this.iconUrl,
  });
  @override
  // TODO: implement props
  List<Object> get props => [
        name,
        iconUrl,
      ];

  static List<ExternalPayment> payment = [
    ExternalPayment(name: 'Pay with Paypal', iconUrl: 'assets/icons/Paypal(2).svg'),
    ExternalPayment(
      name: 'Financing',
      iconUrl: '',
    ),
  ];
}
