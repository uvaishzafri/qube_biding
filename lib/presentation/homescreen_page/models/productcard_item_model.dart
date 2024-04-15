/// This class is used in the [productcard_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProductcardItemModel {
  ProductcardItemModel({this.id}) {
    id = id ?? "";
  }

  String? id;
}
