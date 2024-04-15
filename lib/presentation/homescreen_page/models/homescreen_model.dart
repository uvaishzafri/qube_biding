import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'auctionitem_item_model.dart';
import 'productcard_item_model.dart';

/// This class defines the variables used in the [homescreen_page],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class HomescreenModel extends Equatable {
  HomescreenModel(
      {this.productcardItemList = const [],
      this.auctionitemItemList = const []});

  List<ProductcardItemModel> productcardItemList;

  List<AuctionitemItemModel> auctionitemItemList;

  HomescreenModel copyWith({
    List<ProductcardItemModel>? productcardItemList,
    List<AuctionitemItemModel>? auctionitemItemList,
  }) {
    return HomescreenModel(
      productcardItemList: productcardItemList ?? this.productcardItemList,
      auctionitemItemList: auctionitemItemList ?? this.auctionitemItemList,
    );
  }

  @override
  List<Object?> get props => [productcardItemList, auctionitemItemList];
}
