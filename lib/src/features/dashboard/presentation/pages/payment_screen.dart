import 'package:flutter/material.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({super.key});

   static const String routeName = 'payment';

  @override
  _PaymentScreenState createState() => _PaymentScreenState();

   
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment Screen'),
      ),
      body: Center(
        child: Text(
          'Payment Screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}