// ignore: camel_case_types
class BingEntity {
  String name;
  String desc;
  String url;
  int favorite;
  int download;
  bool isFavorite = false;

  BingEntity(this.name, this.desc, this.url, this.favorite, this.download,
      this.isFavorite); //  BingEntity(this.name, this.desc, this.url, this.favorite, this.download);

  void setFavorite(bool isf) {
    if (isf) {
      favorite++;
    } else {
      favorite--;
    }
    isFavorite = isf;
  }
}
