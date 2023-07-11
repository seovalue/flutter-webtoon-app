import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/button.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: const Color(0xFF181818),
          body: Padding(
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
                            'Hey, Selena',
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
                    height: 120,
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
                  const SizedBox(height: 100),
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
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF1F2123),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(30),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Euro',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w600,
                                  )),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  const Text('6 428',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                  const SizedBox(width: 5),
                                  const Text('EUR',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                      )),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ))),
    );
  }
}
