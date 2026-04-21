import 'package:flutter/material.dart';
import 'package:stundenplan_pdf_frontend/profile.dart';

class HeaderWidget extends StatelessWidget implements PreferredSizeWidget {
  final String titel;
  final String subtitel;
  final bool showImage;
  final double height;

  const HeaderWidget({
    super.key,
    required this.titel,
    required this.subtitel,
    required this.showImage,
    this.height = 100,
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
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 1.5),
          borderRadius: BorderRadius.only(
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
            Expanded(child: Align(
              alignment: showImage ? Alignment.centerLeft : Alignment.center,
              child: RichText(
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    overflow: TextOverflow.ellipsis,
                  ),
                  text: titel,
                  children: [
                    TextSpan(text: '\n'),
                    TextSpan(
                      text: subtitel,
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
            )),
            if (showImage) ...[
              Flexible(
                child: GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profile()),
                  ),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: Colors.white,
                      foregroundImage: NetworkImage(
                        "https://avatars.githubusercontent.com/u/141134460?s=96&v=4",
                      ),
                      onForegroundImageError: (exception, stackTrace) {},
                      child: Icon(Icons.person, color: Colors.black),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20),
            ],
          ],
        ),
      ),
    );
  }
}
