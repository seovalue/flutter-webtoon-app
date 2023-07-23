import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String currencyName, code, amount;
  final IconData icon;
  final bool isInverted;
  final Offset offset;

  // _ means private
  final _blackColor = const Color(0xFF1F2123);

  const CurrencyCard({
    super.key,
    required this.currencyName,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.offset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: offset,
      child: Container(
        clipBehavior: Clip.hardEdge, // hide extra edges
        decoration: BoxDecoration(
          color: isInverted ? _blackColor : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(currencyName,
                      style: TextStyle(
                        color: isInverted ? Colors.white : _blackColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      )),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(amount,
                          style: TextStyle(
                            color: isInverted ? Colors.white : _blackColor,
                            fontSize: 20,
                          )),
                      const SizedBox(width: 5),
                      Text(code,
                          style: TextStyle(
                            color: isInverted ? Colors.white : _blackColor,
                            fontSize: 20,
                          )),
                    ],
                  )
                ],
              ),
              Transform.scale(
                // to scale icon
                scale: 2.2, // zoom
                child: Transform.translate(
                  offset: Offset(-5, 12),
                  child: Icon(
                    icon,
                    color: isInverted ? Colors.white : _blackColor,
                    size: 88,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
