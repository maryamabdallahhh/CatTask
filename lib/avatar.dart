import 'package:flutter/material.dart';

class Avatar extends StatelessWidget {
  const Avatar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('lib/images/pic.jpeg'),
          maxRadius: 65,
        ),
        const Text(
          'Maryam',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          'Flutter',
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[500]),
        ),
      ],
    );
  }
}
