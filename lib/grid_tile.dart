import 'package:flutter/material.dart';


class GridTileW extends StatelessWidget {
  const GridTileW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid Tile'),
      ),
      body: Center(
        child: Container(
          height: 300,
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16)
          ),
          child: GridTile(
            header: ListTile(
              title: Text('Mohamed Rawash', style: TextStyle(fontSize: 24, color: Colors.black),),
              subtitle: Text('junior Flutter Developer', style: TextStyle(fontSize: 16, color: Colors.black),),
              leading: Icon(Icons.flutter_dash_rounded, size: 32, color: Colors.cyan),
              trailing: Icon(Icons.wb_twilight_outlined, size: 32, color: Colors.cyan),
            ),
            child: FadeInImage.assetNetwork(
              image: 'https://pbs.twimg.com/profile_images/1313185293034491905/JsOLl0o0_400x400.jpg',
              placeholder: 'assets/images/photo.jpg',
              fit: BoxFit.cover,
            ),
            footer:  ListTile(
              title: Text('Mohamed Rawash', style: TextStyle(fontSize: 24, color: Colors.black),),
              subtitle: Text('junior Flutter Developer', style: TextStyle(fontSize: 16, color: Colors.black),),
              leading: Icon(Icons.flutter_dash_rounded, size: 32, color: Colors.cyan),
              trailing: Icon(Icons.wb_twilight_outlined, size: 32, color: Colors.cyan),
            ),
          ),
        ),
      ),
    );
  }
}
