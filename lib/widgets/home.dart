import 'package:flutter/material.dart';
import 'detail.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _places = [
    {
      "name":"IOI Le meridien hotel",
      "image_url":"https://dbv47yu57n5vf.cloudfront.net/s3fs-public/editorial/my/2016/August/19/BLD_LEMERIDIEN_1_HHcopy.jpg",
      "address":"Lebuh IRC IOI Resort City, 62502 Putrajaya, Selangor"
    },
    {
      "name":"Bangi Golf Resort",
      "image_url":"https://hotel-bangi-putrajaya-bandar-baru-bangi.hotelmix.my/data/Photos/380x250/11519/1151902/1151902659/Bangi-Resort-Hotel-Bandar-Baru-Bangi-Exterior.JPEG",
      "address":"Lebuh IRC IOI Resort City, 62502 Putrajaya, Selangor"
    },
    {
      "name":"Tenera Hotel",
      "image_url":"https://dynamic-media-cdn.tripadvisor.com/media/photo-o/11/38/41/36/getlstd-property-photo.jpg?w=700&h=-1&s=1",
      "address":"Lebuh IRC IOI Resort City, 62502 Putrajaya, Selangor"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(title: Text("Home"),),
        body:ListView.builder(
            itemCount: _places.length,
            itemBuilder: (context,index){
          return ListTile(
            title: Text(_places[index]["name"]!),
            subtitle: Text(_places[index]["address"]!),
            leading: Image.network(_places[index]["image_url"]!),
            trailing: Icon(Icons.chevron_right),
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=> DetailPage()));
            },
        );
        })
    );
  }
}
