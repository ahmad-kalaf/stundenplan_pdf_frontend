import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titel;
  final String subtitel;
  final double height;
  final bool showImage;
  final ImageProvider<Object>? imageProvider;
  final VoidCallback? onTap;

  const HeaderWidget({
    super.key,
    required this.titel,
    required this.subtitel,
    this.height = 100,
    required this.showImage,
    this.imageProvider,
    this.onTap,
  });

  @override
  Size get preferredSize => Size.fromHeight(height + 10);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        width: double.infinity,
        height: height,
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.5),
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.black, Colors.grey.shade500, Colors.black],
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Align(
                alignment: showImage ? Alignment.centerLeft : Alignment.center,
                child: RichText(
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      overflow: TextOverflow.ellipsis,
                    ),
                    text: titel,
                    children: [
                      const TextSpan(text: '\n'),
                      TextSpan(text: subtitel, style: const TextStyle(fontSize: 12)),
                    ],
                  ),
                ),
              ),
            ),
            if (showImage) ...[
              Flexible(
                child: GestureDetector(
                  onTap: onTap,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      foregroundImage: imageProvider,
                      child: const Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 20),
            ],
          ],
        ),
      ),
    );
  }
}
