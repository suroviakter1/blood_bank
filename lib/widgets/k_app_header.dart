import 'package:flutter/material.dart';

import 'k_image.dart';

class KAppHeader extends StatelessWidget {
  const KAppHeader({super.key,
  this.padding =0});
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(padding),
       child:
        UserAccountsDrawerHeader(accountName: Text('Blood Bank'),
          accountEmail: Text('bloodbank@gmail.com'),
          decoration: BoxDecoration(color: Colors.red),
        currentAccountPicture: KImage(),),
      
    );
  }
}


