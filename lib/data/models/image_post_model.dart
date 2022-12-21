class ImagePostModel{
  String? _avatarImg;
  String? _name;
  String? _address;
  List<String>? _images;
  String? _favoImg;
  String? _favoDescription;
  String? _caption;

  ImagePostModel({String? avatarImg, String? name, String? address, List<String>? images, String? favoImg, String? favoDescription, String? caption}){
    _avatarImg = avatarImg;
    _name = name;
    _address = address;
    _images = images;
    _favoImg = favoImg;
    _favoDescription = favoDescription;
    _caption = caption;
  }

  String get avatarImg => _avatarImg ?? "";

  String get name => _name ?? "";

  String get caption => _caption ?? "";

  String get favoDescription => _favoDescription ?? "";

  String get favoImg => _favoImg ?? "";

  List<String> get images => _images ?? [];

  String get address => _address ?? "";

  set caption(String value) {
    _caption = value;
  }

  set favoDescription(String value) {
    _favoDescription = value;
  }

  set favoImg(String value) {
    _favoImg = value;
  }

  set images(List<String> value) {
    _images = value;
  }

  set address(String value) {
    _address = value;
  }

  set name(String value) {
    _name = value;
  }

  set avatarImg(String value) {
    _avatarImg = value;
  }
}