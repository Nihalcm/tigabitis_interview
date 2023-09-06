// To parse this JSON data, do
//
//     final products = productsFromJson(jsonString);

import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {

  int productId;
  String productName;
  String productPrice;

  Products({

    required this.productId,
    required this.productName,
    required this.productPrice,

  });

  factory Products.fromJson(Map<String, dynamic> json) => Products(

    productId: json["product_id"],
    productName: json["product_name"],

    productPrice: json["product_price"],

  );

  Map<String, dynamic> toJson() => {

    "product_id": productId,
    "product_name": productName,

    "product_price": productPrice,

  };
}

enum CurrencyCode {
  QR
}

final currencyCodeValues = EnumValues({
  "QR": CurrencyCode.QR
});

class Image {
  int productImgId;
  int resourceId;
  int prodVarId;
  String large;
  String medium;
  String small;

  Image({
    required this.productImgId,
    required this.resourceId,
    required this.prodVarId,
    required this.large,
    required this.medium,
    required this.small,
  });

  factory Image.fromJson(Map<String, dynamic> json) => Image(
    productImgId: json["product_img_id"],
    resourceId: json["resource_id"],
    prodVarId: json["prod_var_id"],
    large: json["Large"],
    medium: json["Medium"],
    small: json["Small"],
  );

  Map<String, dynamic> toJson() => {
    "product_img_id": productImgId,
    "resource_id": resourceId,
    "prod_var_id": prodVarId,
    "Large": large,
    "Medium": medium,
    "Small": small,
  };
}

class ProductRatingSummary {
  int ratig;
  int totalRating;

  ProductRatingSummary({
    required this.ratig,
    required this.totalRating,
  });

  factory ProductRatingSummary.fromJson(Map<String, dynamic> json) => ProductRatingSummary(
    ratig: json["Ratig"],
    totalRating: json["Total_Rating"],
  );

  Map<String, dynamic> toJson() => {
    "Ratig": ratig,
    "Total_Rating": totalRating,
  };
}

class Service {
  int serviceId;
  String serviceName;
  dynamic serviceArabicName;
  int defaultPrice;
  int productId;
  int prodServiceId;
  int isFree;
  int servicePrice;
  int isActive;
  String prodVarCode;

  Service({
    required this.serviceId,
    required this.serviceName,
    required this.serviceArabicName,
    required this.defaultPrice,
    required this.productId,
    required this.prodServiceId,
    required this.isFree,
    required this.servicePrice,
    required this.isActive,
    required this.prodVarCode,
  });

  factory Service.fromJson(Map<String, dynamic> json) => Service(
    serviceId: json["service_id"],
    serviceName: json["service_name"],
    serviceArabicName: json["service_arabic_name"],
    defaultPrice: json["default_price"],
    productId: json["product_id"],
    prodServiceId: json["prod_service_id"],
    isFree: json["is_free"],
    servicePrice: json["service_price"],
    isActive: json["is_active"],
    prodVarCode: json["prod_var_code"],
  );

  Map<String, dynamic> toJson() => {
    "service_id": serviceId,
    "service_name": serviceName,
    "service_arabic_name": serviceArabicName,
    "default_price": defaultPrice,
    "product_id": productId,
    "prod_service_id": prodServiceId,
    "is_free": isFree,
    "service_price": servicePrice,
    "is_active": isActive,
    "prod_var_code": prodVarCode,
  };
}

enum StoreName {
  MODERN_ASIAN_RESTAURANT
}

final storeNameValues = EnumValues({
  "Modern Asian Restaurant": StoreName.MODERN_ASIAN_RESTAURANT
});

enum StoreUrlName {
  MODERN_ASIAN_RESTAURANT
}

final storeUrlNameValues = EnumValues({
  "modern-asian-restaurant": StoreUrlName.MODERN_ASIAN_RESTAURANT
});

class Variant {
  String prodVarCode;
  String productVariantName;
  int productId;
  int prodVarId;
  int varStockQty;
  String varPrice;
  String varOfferPrice;
  int varOfferPercentage;
  int varMaxOfferQty;
  int varOfferDate;
  String varOfferTypeName;
  String varOfferType;
  String prodVarName;
  String varArabicName;
  String atrValueId;
  int? retailProductPrice;
  int? wholesaleProductPrice;
  int? isTaxable;
  int? isTaxInclusive;
  int? varTaxAmt;
  int? varTaxPercentage;
  int varPurchaseLimit;
  List<dynamic> variantImages;
  int variantOutOfStock;
  int variantOffer;
  int retailOfferPrice;
  int wholesaleOfferPrice;

  Variant({
    required this.prodVarCode,
    required this.productVariantName,
    required this.productId,
    required this.prodVarId,
    required this.varStockQty,
    required this.varPrice,
    required this.varOfferPrice,
    required this.varOfferPercentage,
    required this.varMaxOfferQty,
    required this.varOfferDate,
    required this.varOfferTypeName,
    required this.varOfferType,
    required this.prodVarName,
    required this.varArabicName,
    required this.atrValueId,
    required this.retailProductPrice,
    required this.wholesaleProductPrice,
    required this.isTaxable,
    required this.isTaxInclusive,
    required this.varTaxAmt,
    required this.varTaxPercentage,
    required this.varPurchaseLimit,
    required this.variantImages,
    required this.variantOutOfStock,
    required this.variantOffer,
    required this.retailOfferPrice,
    required this.wholesaleOfferPrice,
  });

  factory Variant.fromJson(Map<String, dynamic> json) => Variant(
    prodVarCode: json["prod_var_code"],
    productVariantName: json["product_variant_name"],
    productId: json["product_id"],
    prodVarId: json["prod_var_id"],
    varStockQty: json["var_stock_qty"],
    varPrice: json["var_price"],
    varOfferPrice: json["var_offerPrice"],
    varOfferPercentage: json["var_offerPercentage"],
    varMaxOfferQty: json["var_max_offer_qty"],
    varOfferDate: json["var_offerDate"],
    varOfferTypeName: json["var_offer_type_name"],
    varOfferType: json["var_offer_type"],
    prodVarName: json["prod_var_name"],
    varArabicName: json["var_arabic_name"],
    atrValueId: json["atr_value_id"],
    retailProductPrice: json["retail_product_price"],
    wholesaleProductPrice: json["wholesale_product_price"],
    isTaxable: json["is_taxable"],
    isTaxInclusive: json["is_tax_inclusive"],
    varTaxAmt: json["var_tax_amt"],
    varTaxPercentage: json["var_tax_percentage"],
    varPurchaseLimit: json["var_purchase_limit"],
    variantImages: List<dynamic>.from(json["variant_images"].map((x) => x)),
    variantOutOfStock: json["variant_out_of_stock"],
    variantOffer: json["variant_offer"],
    retailOfferPrice: json["retail_offer_price"],
    wholesaleOfferPrice: json["wholesale_offer_price"],
  );

  Map<String, dynamic> toJson() => {
    "prod_var_code": prodVarCode,
    "product_variant_name": productVariantName,
    "product_id": productId,
    "prod_var_id": prodVarId,
    "var_stock_qty": varStockQty,
    "var_price": varPrice,
    "var_offerPrice": varOfferPrice,
    "var_offerPercentage": varOfferPercentage,
    "var_max_offer_qty": varMaxOfferQty,
    "var_offerDate": varOfferDate,
    "var_offer_type_name": varOfferTypeName,
    "var_offer_type": varOfferType,
    "prod_var_name": prodVarName,
    "var_arabic_name": varArabicName,
    "atr_value_id": atrValueId,
    "retail_product_price": retailProductPrice,
    "wholesale_product_price": wholesaleProductPrice,
    "is_taxable": isTaxable,
    "is_tax_inclusive": isTaxInclusive,
    "var_tax_amt": varTaxAmt,
    "var_tax_percentage": varTaxPercentage,
    "var_purchase_limit": varPurchaseLimit,
    "variant_images": List<dynamic>.from(variantImages.map((x) => x)),
    "variant_out_of_stock": variantOutOfStock,
    "variant_offer": variantOffer,
    "retail_offer_price": retailOfferPrice,
    "wholesale_offer_price": wholesaleOfferPrice,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
