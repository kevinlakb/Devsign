import 'package:flutter/material.dart';

class ActivateMusic extends StatefulWidget {
  const ActivateMusic({
    Key? key,
  }) : super(key: key);

  @override
  State<ActivateMusic> createState() => _ActivateMusicState();
}

class _ActivateMusicState extends State<ActivateMusic> {
  bool isActivate = false;
  @override
  Widget build(BuildContext context) {
    return isActivate
        ? IconButton(
            icon: const Icon(Icons.music_note_sharp, size: 35),
            onPressed: () {
              setState(() {
                isActivate = false;
              });
            },
          )
        : IconButton(
            icon: const Icon(Icons.music_off_sharp, size: 35),
            onPressed: () {
              setState(() {
                isActivate = true;
              });
            },
          );
  }
}
