import 'package:ai/AppBar/UI/overlay.dart';
import 'package:ai/profile/profile_page.dart';
import 'package:flutter/material.dart';

class IconRow extends StatefulWidget {
  const IconRow({
    Key key,
  }) : super(key: key);

  @override
  _IconRowState createState() => _IconRowState();
}

class _IconRowState extends State<IconRow> {
  OverlayEntry _overlayEntry;

  @override
  Widget build(BuildContext context) {
    OverlayEntry _createOverlayEntry() {
      RenderBox renderBox = context.findRenderObject();
      var size = renderBox.size;
      var offset = renderBox.localToGlobal(Offset.zero);

      return OverlayEntry(
        builder: (context) => GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {
            _overlayEntry.remove();
          },
          child: Stack(
            children: [
              Positioned(
                left: offset.dx + 90,
                top: offset.dy + size.height - 10,
                width: 100,
                child: Material(
                  // borderRadius: BorderRadius.circular(20),
                  // clipBehavior: Clip.antiAlias,

                  child: Container(
                    height: 150,
                    width: 70,
                    child: CustomPaint(
                      painter: DrawContainerPainter(),
                      child: Column(
                        children: [
                          Container(
                              // child:
                              // ListTile(
                              //   onTap: () {
                              //     _overlayEntry.remove();
                              //   },
                              //   title: Text('Syria'),
                              // ),
                              // ListTile(
                              //   onTap: () {
                              //     _overlayEntry.remove();
                              //   },
                              //   title: Text('Lebanon'),
                              // )

                              ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Container(
      child: Row(
        children: [
          Container(
            height: 40,
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProfilePage(),
                  ),
                );
              },
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 30,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("profile.jpg"),
                        fit: BoxFit.cover,
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Container(
                    child: Text(
                      "Rashmika",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              this._overlayEntry = _createOverlayEntry();
              Overlay.of(context).insert(this._overlayEntry);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xB3121212), shape: BoxShape.circle),
              padding: EdgeInsets.all(5),
              child: Icon(
                Icons.arrow_drop_down,
                color: Colors.white70,
                size: 20,
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
            margin: EdgeInsets.only(top: 8, bottom: 8, right: 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xB3121212),
            ),
            child: Icon(
              Icons.notifications,
              color: Colors.white70,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }
}
