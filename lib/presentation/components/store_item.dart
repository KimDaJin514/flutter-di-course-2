import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/model/store.dart';

class StoreItem extends StatelessWidget {
  final Store store;
  const StoreItem({super.key, required this.store});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(store.name),
              Text(store.address),
              Text('${store.distance / 1000.0}km'),
            ],
          ),
        ),
        Column(
          children: [
            Text(store.remainStatus),
            Text('100개 이상'),
          ],
        )
      ],
    );
  }
}
