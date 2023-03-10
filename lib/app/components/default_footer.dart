import 'package:flutter/material.dart';

import 'defText.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DefText("Copyright ").extraSmall,
          Icon(Icons.copyright_rounded, size: 16),
          DefText(" PT Bank Negara Indonesia (Persero) Tbk 2021").extraSmall,
        ],
      ),
    );
  }
}
