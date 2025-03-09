import 'package:flutter/material.dart';

class ProfilePictureWidget extends StatelessWidget {
  final double radius;
  final VoidCallback onPressed;
  final String imageUrl;
  const ProfilePictureWidget({
    super.key,
    required this.radius,
    required this.onPressed,
    this.imageUrl = 'https://randomuser.me/api/portraits/women/50.jpg',
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(radius),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: radius,
          width: radius,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
          ),
          child: Image.network(
            imageUrl,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
