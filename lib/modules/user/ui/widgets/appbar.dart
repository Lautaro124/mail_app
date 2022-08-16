import 'package:flutter/material.dart';

AppBar appBar(String title) => AppBar(
      title: Text(title),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 8),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_horiz_outlined),
          ),
        ),
      ],
    );
