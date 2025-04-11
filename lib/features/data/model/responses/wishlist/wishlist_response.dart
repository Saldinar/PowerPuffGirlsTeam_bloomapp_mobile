import 'package:amamini_client/features/data/model/responses/custom_properties/custom_properties.dart';
import 'package:amamini_client/features/data/model/responses/wishlist/item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'wishlist_response.g.dart';

@JsonSerializable()
class WishlistResponse {
  @JsonKey(name: 'customer_guid')
  final String? customerGuid;
  @JsonKey(name: 'customer_fullname')
  final String? customerFullname;
  @JsonKey(name: 'email_wishlist_enabled')
  final bool? emailWishlistEnabled;
  @JsonKey(name: 'show_sku')
  final bool? showSku;
  @JsonKey(name: 'show_product_images')
  final bool? showProductImages;
  @JsonKey(name: 'is_editable')
  final bool? isEditable;
  @JsonKey(name: 'display_add_to_cart')
  final bool? displayAddToCart;
  @JsonKey(name: 'display_tax_shipping_info')
  final bool? displayTaxShippingInfo;
  final List<WishlistItemResponse>? items;
  final List<String>? warnings;
  @JsonKey(name: 'custom_properties')
  final CustomPropertiesResponse? customProperties;

  const WishlistResponse({
    this.customerGuid,
    this.customerFullname,
    this.emailWishlistEnabled,
    this.showSku,
    this.showProductImages,
    this.isEditable,
    this.displayAddToCart,
    this.displayTaxShippingInfo,
    this.items,
    this.warnings,
    this.customProperties,
  });

  factory WishlistResponse.fromJson(Map<String, dynamic> json) {
    return _$WishlistResponseFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WishlistResponseToJson(this);
}
