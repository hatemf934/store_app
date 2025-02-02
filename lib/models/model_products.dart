class ModelProducts {
  final int id;
  final String title;
  final double price;
  final String description;
  final String category;
  final String image;
  final RatingModel rating;

  ModelProducts({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });

  factory ModelProducts.fromjson(json) {
    return ModelProducts(
      id: json["id"],
      title: json["title"],
      price: json["price"],
      description: json["description"],
      category: json["categoty"],
      image: json["image"],
      rating: RatingModel.fromjson(json['rating']),
    );
  }
}

class RatingModel {
  final double rate;
  final double count;

  RatingModel({required this.rate, required this.count});

  factory RatingModel.fromjson(json) {
    return RatingModel(
      rate: json["rating"]["rate"],
      count: json["rating"]["count"],
    );
  }
}
