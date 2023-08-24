// 1) Create the class
class PlaceList {
  //2) Properties
  final String name;
  final String address;
  final String imageUrl;
  final int id;

  //3) Constructor

PlaceList({required this.name, required this.address, required this.imageUrl, required this.id});


// 4) Create json Factory
  factory PlaceList.fromJson(Map<String, dynamic> json) {
    return PlaceList(
      name: json['name'],
      id: json['id'],
      imageUrl: json['images_url'],
      address: json['address']
    );
  }

  // 5) Array to List transformer

  static List<PlaceList> placesFromJson(dynamic json ){
    var searchResult = json["data"];
    List<PlaceList> results = List.empty(growable: true);

    if (searchResult != null){

      searchResult.forEach((v)=>{
        results.add(PlaceList.fromJson(v))
      });
      return results;
    }
    return results;
  }

}