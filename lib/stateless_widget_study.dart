import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/button.dart';
import 'package:flutter_app/widgets/currency_card.dart';

// void main() {
//   runApp(App());
// }

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    // horizontal
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const Text(
                              'Hey, Joanne',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                            Text('Welcome back',
                                style: TextStyle(
                                  color: Colors.white.withOpacity(0.8),
                                  fontSize: 18,
                                )),
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Text(
                      'Total balance',
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.8), fontSize: 22),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text(
                      '\$5 194 382',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Button(
                            text: 'Transfer',
                            backgroundColor: Color(0xFFF1B33B),
                            textColor: Colors.white),
                        Button(
                            text: 'Request',
                            backgroundColor: Color(0xFF1F2123),
                            textColor: Colors.white),
                      ],
                    ),
                    const SizedBox(height: 50),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Wallets',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                            )),
                        Text('View All',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 18,
                            ))
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    // Wallets 하위 카드들
                    const CurrencyCard(
                      currencyName: 'Euro',
                      code: 'EUR',
                      amount: '6 428',
                      icon: Icons.euro_rounded,
                      isInverted: false,
                      offset: Offset(0, 0),
                    ),
                    const CurrencyCard(
                      currencyName: 'Bitcoin',
                      code: 'Bit',
                      amount: '9 785',
                      icon: Icons.currency_bitcoin,
                      isInverted: true,
                      offset: Offset(0, -20),
                    ),
                    Transform.translate(
                      offset: const Offset(0, -40),
                      child: const CurrencyCard(
                        currencyName: 'Dollar',
                        code: 'USD',
                        amount: '428',
                        icon: Icons.attach_money_outlined,
                        isInverted: false,
                        offset: Offset(0, -40),
                      ),
                    ),
                  ],
                )),
          )),
    );
  }
}
