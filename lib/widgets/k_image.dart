import 'package:flutter/material.dart';

class KImage extends StatelessWidget {
  const KImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(backgroundImage: 
          NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3xi83KuFSyqx7m3e5OLmrfJfwwpYxQp5K1w&usqp=CAU'),
          child: SizedBox(height: 15),);
  }
}
