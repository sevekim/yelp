class YelpModel {
  const YelpModel({
    this.id,
    this.alias,
    required this.name,
    required this.imageUrl,
    this.isClosed,
    this.url,
    this.reviewCount,
    this.categories,
    this.rating,
    this.coordinate,
    this.transactions,
    required this.price,
    this.location,
    required this.phone,
    required this.displayPhone,
    this.distance,
    this.businessHours,
    this.attributes,
  });

  final String? id;
  final String? alias;
  final String name;
  final String imageUrl;
  final bool? isClosed;
  final String? url;
  final int? reviewCount;
  final List<dynamic>? categories;
  final double? rating;
  final Map<String, dynamic>? coordinate;
  final List<dynamic>? transactions;
  final String price;
  final Map<String, dynamic>? location;
  final String phone;
  final String displayPhone;
  final double? distance;
  final List<dynamic>? businessHours;
  final Map<String, dynamic>? attributes;

  /// **********************************************************************
  ///
  /// From map
  ///
  /// **********************************************************************/

  factory YelpModel.fromMap(Map<String, dynamic> map) {
    return YelpModel(
      id: map["id"] ?? "",
      alias: map['alias'] ?? '',
      name: map['name'] ?? '',
      imageUrl: map['image_url'] ?? '',
      isClosed: map['is_closed'] ?? false,
      url: map['url'] ?? '',
      reviewCount: map['review_count'] ?? 0,
      categories: map['categories'] ?? [],
      rating: map['rating'] ?? 0,
      coordinate: map['coordinate'] ?? {},
      transactions: map['transactions'] ?? [],
      price: map['price'] ?? "\$",
      location: map['location'] ?? {},
      phone: map['phone'] ?? "",
      displayPhone: map['display_phone'] ?? "",
      distance: map['distance'] ?? 0,
      businessHours: map['business_hours'] ?? [],
      attributes: map['attributes'] ?? {},
    );
  }
}
