part of shopping_v1_api;

class Product {

  /** List of categories for product. */
  core.List<ShoppingModelCategoryJsonV1> categories;

  /** Google internal. */
  ShoppingModelDebugJsonV1 debug;

  /** Id of product. */
  core.String id;

  /** The kind of item, always shopping#product. */
  core.String kind;

  /** Product. */
  ShoppingModelProductJsonV1 product;

  /** Recommendations for product. */
  core.List<ShoppingModelRecommendationsJsonV1> recommendations;

  /** Unique identifier for this request. */
  core.String requestId;

  /** Self link of product when generated for a lookup request. Self link of product when generated for a search request. */
  core.String selfLink;

  /** Create new Product from JSON data */
  Product.fromJson(core.Map json) {
    if (json.containsKey("categories")) {
      categories = json["categories"].map((categoriesItem) => new ShoppingModelCategoryJsonV1.fromJson(categoriesItem)).toList();
    }
    if (json.containsKey("debug")) {
      debug = new ShoppingModelDebugJsonV1.fromJson(json["debug"]);
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("product")) {
      product = new ShoppingModelProductJsonV1.fromJson(json["product"]);
    }
    if (json.containsKey("recommendations")) {
      recommendations = json["recommendations"].map((recommendationsItem) => new ShoppingModelRecommendationsJsonV1.fromJson(recommendationsItem)).toList();
    }
    if (json.containsKey("requestId")) {
      requestId = json["requestId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Product */
  core.Map toJson() {
    var output = new core.Map();

    if (categories != null) {
      output["categories"] = categories.map((categoriesItem) => categoriesItem.toJson()).toList();
    }
    if (debug != null) {
      output["debug"] = debug.toJson();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (product != null) {
      output["product"] = product.toJson();
    }
    if (recommendations != null) {
      output["recommendations"] = recommendations.map((recommendationsItem) => recommendationsItem.toJson()).toList();
    }
    if (requestId != null) {
      output["requestId"] = requestId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }

    return output;
  }

  /** Return String representation of Product */
  core.String toString() => JSON.encode(this.toJson());

}

class Products {

  /** List of categories. */
  core.List<ShoppingModelCategoryJsonV1> categories;

  /** Recommendations for category. */
  core.List<ShoppingModelRecommendationsJsonV1> categoryRecommendations;

  /** Current item count. */
  core.int currentItemCount;

  /** Google internal. */
  ShoppingModelDebugJsonV1 debug;

  /** Etag of feed. */
  core.String etag;

  /** List of extras. */
  ShoppingModelExtrasJsonV1 extras;

  /** List of facets. */
  core.List<ProductsFacets> facets;

  /** Id of feed. */
  core.String id;

  /** List of returned products. */
  core.List<Product> items;

  /** Number of items per page of results. */
  core.int itemsPerPage;

  /** The fixed string "shopping#products". The kind of feed returned. */
  core.String kind;

  /** Next link of feed. */
  core.String nextLink;

  /** Previous link of feed. */
  core.String previousLink;

  /** List of promotions. */
  core.List<ProductsPromotions> promotions;

  /** Redirects. */
  core.List<core.String> redirects;

  /** Unique identifier for this request. */
  core.String requestId;

  /** Self link of feed. */
  core.String selfLink;

  /** Spelling. */
  ProductsSpelling spelling;

  /** 1-based index of the first item in the search results. */
  core.int startIndex;

  /** List of returned stores. */
  core.List<ProductsStores> stores;

  /** Total number of search results. */
  core.int totalItems;

  /** Create new Products from JSON data */
  Products.fromJson(core.Map json) {
    if (json.containsKey("categories")) {
      categories = json["categories"].map((categoriesItem) => new ShoppingModelCategoryJsonV1.fromJson(categoriesItem)).toList();
    }
    if (json.containsKey("categoryRecommendations")) {
      categoryRecommendations = json["categoryRecommendations"].map((categoryRecommendationsItem) => new ShoppingModelRecommendationsJsonV1.fromJson(categoryRecommendationsItem)).toList();
    }
    if (json.containsKey("currentItemCount")) {
      currentItemCount = json["currentItemCount"];
    }
    if (json.containsKey("debug")) {
      debug = new ShoppingModelDebugJsonV1.fromJson(json["debug"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("extras")) {
      extras = new ShoppingModelExtrasJsonV1.fromJson(json["extras"]);
    }
    if (json.containsKey("facets")) {
      facets = json["facets"].map((facetsItem) => new ProductsFacets.fromJson(facetsItem)).toList();
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Product.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("itemsPerPage")) {
      itemsPerPage = json["itemsPerPage"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextLink")) {
      nextLink = json["nextLink"];
    }
    if (json.containsKey("previousLink")) {
      previousLink = json["previousLink"];
    }
    if (json.containsKey("promotions")) {
      promotions = json["promotions"].map((promotionsItem) => new ProductsPromotions.fromJson(promotionsItem)).toList();
    }
    if (json.containsKey("redirects")) {
      redirects = json["redirects"].toList();
    }
    if (json.containsKey("requestId")) {
      requestId = json["requestId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
    if (json.containsKey("spelling")) {
      spelling = new ProductsSpelling.fromJson(json["spelling"]);
    }
    if (json.containsKey("startIndex")) {
      startIndex = json["startIndex"];
    }
    if (json.containsKey("stores")) {
      stores = json["stores"].map((storesItem) => new ProductsStores.fromJson(storesItem)).toList();
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Products */
  core.Map toJson() {
    var output = new core.Map();

    if (categories != null) {
      output["categories"] = categories.map((categoriesItem) => categoriesItem.toJson()).toList();
    }
    if (categoryRecommendations != null) {
      output["categoryRecommendations"] = categoryRecommendations.map((categoryRecommendationsItem) => categoryRecommendationsItem.toJson()).toList();
    }
    if (currentItemCount != null) {
      output["currentItemCount"] = currentItemCount;
    }
    if (debug != null) {
      output["debug"] = debug.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (extras != null) {
      output["extras"] = extras.toJson();
    }
    if (facets != null) {
      output["facets"] = facets.map((facetsItem) => facetsItem.toJson()).toList();
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (itemsPerPage != null) {
      output["itemsPerPage"] = itemsPerPage;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextLink != null) {
      output["nextLink"] = nextLink;
    }
    if (previousLink != null) {
      output["previousLink"] = previousLink;
    }
    if (promotions != null) {
      output["promotions"] = promotions.map((promotionsItem) => promotionsItem.toJson()).toList();
    }
    if (redirects != null) {
      output["redirects"] = redirects.toList();
    }
    if (requestId != null) {
      output["requestId"] = requestId;
    }
    if (selfLink != null) {
      output["selfLink"] = selfLink;
    }
    if (spelling != null) {
      output["spelling"] = spelling.toJson();
    }
    if (startIndex != null) {
      output["startIndex"] = startIndex;
    }
    if (stores != null) {
      output["stores"] = stores.map((storesItem) => storesItem.toJson()).toList();
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Products */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsFacets {

  /** List of Buckets within facet. */
  core.List<ProductsFacetsBuckets> buckets;

  /** Number of products matching the query that have a value for the facet's property or attribute. */
  core.int count;

  /** Display name of facet. */
  core.String displayName;

  /** Name of the facet's attribute (omitted for property facets). */
  core.String name;

  /** Property of facet (omitted for attribute facets). */
  core.String property;

  /** Type of facet's attribute (omitted for property facets, one of: text, bool, int, float). */
  core.String type;

  /** Unit of the facet's property or attribute (omitted if the facet's property or attribute has no unit). */
  core.String unit;

  /** Create new ProductsFacets from JSON data */
  ProductsFacets.fromJson(core.Map json) {
    if (json.containsKey("buckets")) {
      buckets = json["buckets"].map((bucketsItem) => new ProductsFacetsBuckets.fromJson(bucketsItem)).toList();
    }
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("property")) {
      property = json["property"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
  }

  /** Create JSON Object for ProductsFacets */
  core.Map toJson() {
    var output = new core.Map();

    if (buckets != null) {
      output["buckets"] = buckets.map((bucketsItem) => bucketsItem.toJson()).toList();
    }
    if (count != null) {
      output["count"] = count;
    }
    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (property != null) {
      output["property"] = property;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (unit != null) {
      output["unit"] = unit;
    }

    return output;
  }

  /** Return String representation of ProductsFacets */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsFacetsBuckets {

  /** Number of products matching the query that have a value for the facet's property or attribute that matches the bucket. */
  core.int count;

  /** Upper bound of the bucket (omitted for value buckets or if the range has no upper bound). */
  core.Object max;

  /** Whether the upper bound of the bucket is exclusive (omitted for value buckets or if the range has no upper bound). */
  core.bool maxExclusive;

  /** Lower bound of the bucket (omitted for value buckets or if the range has no lower bound). */
  core.Object min;

  /** Whether the lower bound of the bucket is exclusive (omitted for value buckets or if the range has no lower bound). */
  core.bool minExclusive;

  /** Value of the bucket (omitted for range buckets). */
  core.Object value;

  /** Create new ProductsFacetsBuckets from JSON data */
  ProductsFacetsBuckets.fromJson(core.Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("max")) {
      max = json["max"];
    }
    if (json.containsKey("maxExclusive")) {
      maxExclusive = json["maxExclusive"];
    }
    if (json.containsKey("min")) {
      min = json["min"];
    }
    if (json.containsKey("minExclusive")) {
      minExclusive = json["minExclusive"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductsFacetsBuckets */
  core.Map toJson() {
    var output = new core.Map();

    if (count != null) {
      output["count"] = count;
    }
    if (max != null) {
      output["max"] = max;
    }
    if (maxExclusive != null) {
      output["maxExclusive"] = maxExclusive;
    }
    if (min != null) {
      output["min"] = min;
    }
    if (minExclusive != null) {
      output["minExclusive"] = minExclusive;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductsFacetsBuckets */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsPromotions {

  /** List of custom fields of promotion. */
  core.List<ProductsPromotionsCustomFields> customFields;

  /** Custom HTML of promotion (omitted if type is not custom). */
  core.String customHtml;

  /** Description of promotion (omitted if type is not standard). */
  core.String description;

  /** Link to promotion (omitted if type is not standard). */
  core.String destLink;

  /** Link to promotion image (omitted if type is not standard). */
  core.String imageLink;

  /** Name of promotion (omitted if type is not standard). */
  core.String name;

  /** Product of promotion (omitted if type is not product). */
  ShoppingModelProductJsonV1 product;

  /** Type of promotion (one of: standard, product, custom). */
  core.String type;

  /** Create new ProductsPromotions from JSON data */
  ProductsPromotions.fromJson(core.Map json) {
    if (json.containsKey("customFields")) {
      customFields = json["customFields"].map((customFieldsItem) => new ProductsPromotionsCustomFields.fromJson(customFieldsItem)).toList();
    }
    if (json.containsKey("customHtml")) {
      customHtml = json["customHtml"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("destLink")) {
      destLink = json["destLink"];
    }
    if (json.containsKey("imageLink")) {
      imageLink = json["imageLink"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("product")) {
      product = new ShoppingModelProductJsonV1.fromJson(json["product"]);
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ProductsPromotions */
  core.Map toJson() {
    var output = new core.Map();

    if (customFields != null) {
      output["customFields"] = customFields.map((customFieldsItem) => customFieldsItem.toJson()).toList();
    }
    if (customHtml != null) {
      output["customHtml"] = customHtml;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (destLink != null) {
      output["destLink"] = destLink;
    }
    if (imageLink != null) {
      output["imageLink"] = imageLink;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (product != null) {
      output["product"] = product.toJson();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ProductsPromotions */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsPromotionsCustomFields {

  /** Name of field. */
  core.String name;

  /** Value of field. */
  core.String value;

  /** Create new ProductsPromotionsCustomFields from JSON data */
  ProductsPromotionsCustomFields.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductsPromotionsCustomFields */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductsPromotionsCustomFields */
  core.String toString() => JSON.encode(this.toJson());

}

/** Spelling. */
class ProductsSpelling {

  /** Suggestion for spelling. */
  core.String suggestion;

  /** Create new ProductsSpelling from JSON data */
  ProductsSpelling.fromJson(core.Map json) {
    if (json.containsKey("suggestion")) {
      suggestion = json["suggestion"];
    }
  }

  /** Create JSON Object for ProductsSpelling */
  core.Map toJson() {
    var output = new core.Map();

    if (suggestion != null) {
      output["suggestion"] = suggestion;
    }

    return output;
  }

  /** Return String representation of ProductsSpelling */
  core.String toString() => JSON.encode(this.toJson());

}

class ProductsStores {

  /** Address of store. */
  core.String address;

  /** Location of store. */
  core.String location;

  /** Name of merchant. */
  core.String name;

  /** Merchant-supplied store code. */
  core.String storeCode;

  /** Id of store. */
  core.String storeId;

  /** Name of store. */
  core.String storeName;

  /** Telephone number of store. */
  core.String telephone;

  /** Create new ProductsStores from JSON data */
  ProductsStores.fromJson(core.Map json) {
    if (json.containsKey("address")) {
      address = json["address"];
    }
    if (json.containsKey("location")) {
      location = json["location"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("storeCode")) {
      storeCode = json["storeCode"];
    }
    if (json.containsKey("storeId")) {
      storeId = json["storeId"];
    }
    if (json.containsKey("storeName")) {
      storeName = json["storeName"];
    }
    if (json.containsKey("telephone")) {
      telephone = json["telephone"];
    }
  }

  /** Create JSON Object for ProductsStores */
  core.Map toJson() {
    var output = new core.Map();

    if (address != null) {
      output["address"] = address;
    }
    if (location != null) {
      output["location"] = location;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (storeCode != null) {
      output["storeCode"] = storeCode;
    }
    if (storeId != null) {
      output["storeId"] = storeId;
    }
    if (storeName != null) {
      output["storeName"] = storeName;
    }
    if (telephone != null) {
      output["telephone"] = telephone;
    }

    return output;
  }

  /** Return String representation of ProductsStores */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelCategoryJsonV1 {

  /** Id of category. */
  core.String id;

  /** Ids of the parents of the category. */
  core.List<core.String> parents;

  /** Short name of category. */
  core.String shortName;

  /** URL of category. */
  core.String url;

  /** Create new ShoppingModelCategoryJsonV1 from JSON data */
  ShoppingModelCategoryJsonV1.fromJson(core.Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("parents")) {
      parents = json["parents"].toList();
    }
    if (json.containsKey("shortName")) {
      shortName = json["shortName"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ShoppingModelCategoryJsonV1 */
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (parents != null) {
      output["parents"] = parents.toList();
    }
    if (shortName != null) {
      output["shortName"] = shortName;
    }
    if (url != null) {
      output["url"] = url;
    }

    return output;
  }

  /** Return String representation of ShoppingModelCategoryJsonV1 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelDebugJsonV1 {

  /** Google internal */
  core.List<ShoppingModelDebugJsonV1BackendTimes> backendTimes;

  /** Google internal. */
  core.int elapsedMillis;

  /** Google internal. */
  core.String facetsRequest;

  /** Google internal. */
  core.String facetsResponse;

  /** Google internal. */
  core.String rdcResponse;

  /** Google internal. */
  core.String recommendedItemsRequest;

  /** Google internal. */
  core.String recommendedItemsResponse;

  /** Google internal. */
  core.String searchRequest;

  /** Google internal. */
  core.String searchResponse;

  /** Create new ShoppingModelDebugJsonV1 from JSON data */
  ShoppingModelDebugJsonV1.fromJson(core.Map json) {
    if (json.containsKey("backendTimes")) {
      backendTimes = json["backendTimes"].map((backendTimesItem) => new ShoppingModelDebugJsonV1BackendTimes.fromJson(backendTimesItem)).toList();
    }
    if (json.containsKey("elapsedMillis")) {
      elapsedMillis = (json["elapsedMillis"] is core.String) ? core.int.parse(json["elapsedMillis"]) : json["elapsedMillis"];
    }
    if (json.containsKey("facetsRequest")) {
      facetsRequest = json["facetsRequest"];
    }
    if (json.containsKey("facetsResponse")) {
      facetsResponse = json["facetsResponse"];
    }
    if (json.containsKey("rdcResponse")) {
      rdcResponse = json["rdcResponse"];
    }
    if (json.containsKey("recommendedItemsRequest")) {
      recommendedItemsRequest = json["recommendedItemsRequest"];
    }
    if (json.containsKey("recommendedItemsResponse")) {
      recommendedItemsResponse = json["recommendedItemsResponse"];
    }
    if (json.containsKey("searchRequest")) {
      searchRequest = json["searchRequest"];
    }
    if (json.containsKey("searchResponse")) {
      searchResponse = json["searchResponse"];
    }
  }

  /** Create JSON Object for ShoppingModelDebugJsonV1 */
  core.Map toJson() {
    var output = new core.Map();

    if (backendTimes != null) {
      output["backendTimes"] = backendTimes.map((backendTimesItem) => backendTimesItem.toJson()).toList();
    }
    if (elapsedMillis != null) {
      output["elapsedMillis"] = elapsedMillis;
    }
    if (facetsRequest != null) {
      output["facetsRequest"] = facetsRequest;
    }
    if (facetsResponse != null) {
      output["facetsResponse"] = facetsResponse;
    }
    if (rdcResponse != null) {
      output["rdcResponse"] = rdcResponse;
    }
    if (recommendedItemsRequest != null) {
      output["recommendedItemsRequest"] = recommendedItemsRequest;
    }
    if (recommendedItemsResponse != null) {
      output["recommendedItemsResponse"] = recommendedItemsResponse;
    }
    if (searchRequest != null) {
      output["searchRequest"] = searchRequest;
    }
    if (searchResponse != null) {
      output["searchResponse"] = searchResponse;
    }

    return output;
  }

  /** Return String representation of ShoppingModelDebugJsonV1 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelDebugJsonV1BackendTimes {

  /** Google internal */
  core.int elapsedMillis;

  /** Google internal */
  core.String hostName;

  /** Google internal */
  core.String name;

  /** Google internal */
  core.int serverMillis;

  /** Create new ShoppingModelDebugJsonV1BackendTimes from JSON data */
  ShoppingModelDebugJsonV1BackendTimes.fromJson(core.Map json) {
    if (json.containsKey("elapsedMillis")) {
      elapsedMillis = (json["elapsedMillis"] is core.String) ? core.int.parse(json["elapsedMillis"]) : json["elapsedMillis"];
    }
    if (json.containsKey("hostName")) {
      hostName = json["hostName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("serverMillis")) {
      serverMillis = (json["serverMillis"] is core.String) ? core.int.parse(json["serverMillis"]) : json["serverMillis"];
    }
  }

  /** Create JSON Object for ShoppingModelDebugJsonV1BackendTimes */
  core.Map toJson() {
    var output = new core.Map();

    if (elapsedMillis != null) {
      output["elapsedMillis"] = elapsedMillis;
    }
    if (hostName != null) {
      output["hostName"] = hostName;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (serverMillis != null) {
      output["serverMillis"] = serverMillis;
    }

    return output;
  }

  /** Return String representation of ShoppingModelDebugJsonV1BackendTimes */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelExtrasJsonV1 {

  core.List<ShoppingModelExtrasJsonV1FacetRules> facetRules;

  /** Names of boost (ranking) rules applicable to this search. */
  core.List<ShoppingModelExtrasJsonV1RankingRules> rankingRules;

  /** Create new ShoppingModelExtrasJsonV1 from JSON data */
  ShoppingModelExtrasJsonV1.fromJson(core.Map json) {
    if (json.containsKey("facetRules")) {
      facetRules = json["facetRules"].map((facetRulesItem) => new ShoppingModelExtrasJsonV1FacetRules.fromJson(facetRulesItem)).toList();
    }
    if (json.containsKey("rankingRules")) {
      rankingRules = json["rankingRules"].map((rankingRulesItem) => new ShoppingModelExtrasJsonV1RankingRules.fromJson(rankingRulesItem)).toList();
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1 */
  core.Map toJson() {
    var output = new core.Map();

    if (facetRules != null) {
      output["facetRules"] = facetRules.map((facetRulesItem) => facetRulesItem.toJson()).toList();
    }
    if (rankingRules != null) {
      output["rankingRules"] = rankingRules.map((rankingRulesItem) => rankingRulesItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelExtrasJsonV1FacetRules {

  core.String name;

  /** Create new ShoppingModelExtrasJsonV1FacetRules from JSON data */
  ShoppingModelExtrasJsonV1FacetRules.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1FacetRules */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1FacetRules */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelExtrasJsonV1RankingRules {

  core.String name;

  /** Create new ShoppingModelExtrasJsonV1RankingRules from JSON data */
  ShoppingModelExtrasJsonV1RankingRules.fromJson(core.Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1RankingRules */
  core.Map toJson() {
    var output = new core.Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1RankingRules */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1 {

  /** Attributes of product (available only with a cx source). */
  core.List<ShoppingModelProductJsonV1Attributes> attributes;

  /** Author of product. */
  ShoppingModelProductJsonV1Author author;

  /** Brand of product. */
  core.String brand;

  /** Categories of product according to the selected taxonomy, omitted if no taxonomy is selected. */
  core.List<core.String> categories;

  /** Condition of product (one of: new, refurbished, used). */
  core.String condition;

  /** ISO 3166 code of target country of product. */
  core.String country;

  /** RFC 3339 formatted creation time and date of product. */
  core.String creationTime;

  /** Description of product. */
  core.String description;

  /** Google id of product. */
  core.String googleId;

  /** The first GTIN of the product. Deprecated in favor of "gtins". */
  core.String gtin;

  /** List of all the product's GTINs (in GTIN-14 format). */
  core.List<core.String> gtins;

  /** Images of product. */
  core.List<ShoppingModelProductJsonV1Images> images;

  /** Google Internal. Attribute names are deliberately vague. */
  ShoppingModelProductJsonV1Internal16 internal16;

  /** Inventories of product. */
  core.List<ShoppingModelProductJsonV1Inventories> inventories;

  /** BCP 47 language tag of language of product. */
  core.String language;

  /** Link to product. */
  core.String link;

  /** RFC 3339 formatted modification time and date of product. */
  core.String modificationTime;

  /** List of all the product's MPNs. */
  core.List<core.String> mpns;

  /** Merchant-provided id of product (available only with a cx source). */
  core.String providedId;

  /** Whether this product matched the user query. Only set for the variant offers (if any) attached to a product offer. */
  core.bool queryMatched;

  /** Google Internal */
  core.num score;

  /** Title of product. */
  core.String title;

  /** The number of variant offers returned that matched the query. */
  core.int totalMatchingVariants;

  /** A list of variant offers associated with this product. */
  core.List<ShoppingModelProductJsonV1Variants> variants;

  /** Create new ShoppingModelProductJsonV1 from JSON data */
  ShoppingModelProductJsonV1.fromJson(core.Map json) {
    if (json.containsKey("attributes")) {
      attributes = json["attributes"].map((attributesItem) => new ShoppingModelProductJsonV1Attributes.fromJson(attributesItem)).toList();
    }
    if (json.containsKey("author")) {
      author = new ShoppingModelProductJsonV1Author.fromJson(json["author"]);
    }
    if (json.containsKey("brand")) {
      brand = json["brand"];
    }
    if (json.containsKey("categories")) {
      categories = json["categories"].toList();
    }
    if (json.containsKey("condition")) {
      condition = json["condition"];
    }
    if (json.containsKey("country")) {
      country = json["country"];
    }
    if (json.containsKey("creationTime")) {
      creationTime = json["creationTime"];
    }
    if (json.containsKey("description")) {
      description = json["description"];
    }
    if (json.containsKey("googleId")) {
      googleId = json["googleId"];
    }
    if (json.containsKey("gtin")) {
      gtin = json["gtin"];
    }
    if (json.containsKey("gtins")) {
      gtins = json["gtins"].toList();
    }
    if (json.containsKey("images")) {
      images = json["images"].map((imagesItem) => new ShoppingModelProductJsonV1Images.fromJson(imagesItem)).toList();
    }
    if (json.containsKey("internal16")) {
      internal16 = new ShoppingModelProductJsonV1Internal16.fromJson(json["internal16"]);
    }
    if (json.containsKey("inventories")) {
      inventories = json["inventories"].map((inventoriesItem) => new ShoppingModelProductJsonV1Inventories.fromJson(inventoriesItem)).toList();
    }
    if (json.containsKey("language")) {
      language = json["language"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("modificationTime")) {
      modificationTime = json["modificationTime"];
    }
    if (json.containsKey("mpns")) {
      mpns = json["mpns"].toList();
    }
    if (json.containsKey("providedId")) {
      providedId = json["providedId"];
    }
    if (json.containsKey("queryMatched")) {
      queryMatched = json["queryMatched"];
    }
    if (json.containsKey("score")) {
      score = json["score"];
    }
    if (json.containsKey("title")) {
      title = json["title"];
    }
    if (json.containsKey("totalMatchingVariants")) {
      totalMatchingVariants = json["totalMatchingVariants"];
    }
    if (json.containsKey("variants")) {
      variants = json["variants"].map((variantsItem) => new ShoppingModelProductJsonV1Variants.fromJson(variantsItem)).toList();
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1 */
  core.Map toJson() {
    var output = new core.Map();

    if (attributes != null) {
      output["attributes"] = attributes.map((attributesItem) => attributesItem.toJson()).toList();
    }
    if (author != null) {
      output["author"] = author.toJson();
    }
    if (brand != null) {
      output["brand"] = brand;
    }
    if (categories != null) {
      output["categories"] = categories.toList();
    }
    if (condition != null) {
      output["condition"] = condition;
    }
    if (country != null) {
      output["country"] = country;
    }
    if (creationTime != null) {
      output["creationTime"] = creationTime;
    }
    if (description != null) {
      output["description"] = description;
    }
    if (googleId != null) {
      output["googleId"] = googleId;
    }
    if (gtin != null) {
      output["gtin"] = gtin;
    }
    if (gtins != null) {
      output["gtins"] = gtins.toList();
    }
    if (images != null) {
      output["images"] = images.map((imagesItem) => imagesItem.toJson()).toList();
    }
    if (internal16 != null) {
      output["internal16"] = internal16.toJson();
    }
    if (inventories != null) {
      output["inventories"] = inventories.map((inventoriesItem) => inventoriesItem.toJson()).toList();
    }
    if (language != null) {
      output["language"] = language;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (modificationTime != null) {
      output["modificationTime"] = modificationTime;
    }
    if (mpns != null) {
      output["mpns"] = mpns.toList();
    }
    if (providedId != null) {
      output["providedId"] = providedId;
    }
    if (queryMatched != null) {
      output["queryMatched"] = queryMatched;
    }
    if (score != null) {
      output["score"] = score;
    }
    if (title != null) {
      output["title"] = title;
    }
    if (totalMatchingVariants != null) {
      output["totalMatchingVariants"] = totalMatchingVariants;
    }
    if (variants != null) {
      output["variants"] = variants.map((variantsItem) => variantsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1Attributes {

  /** Display Name of prodct attribute. */
  core.String displayName;

  /** Name of product attribute. */
  core.String name;

  /** Type of product attribute (one of: text, bool, int, float, dateRange, url). */
  core.String type;

  /** Unit of product attribute. */
  core.String unit;

  /** Value of product attribute. */
  core.Object value;

  /** Create new ShoppingModelProductJsonV1Attributes from JSON data */
  ShoppingModelProductJsonV1Attributes.fromJson(core.Map json) {
    if (json.containsKey("displayName")) {
      displayName = json["displayName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
    if (json.containsKey("unit")) {
      unit = json["unit"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Attributes */
  core.Map toJson() {
    var output = new core.Map();

    if (displayName != null) {
      output["displayName"] = displayName;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (type != null) {
      output["type"] = type;
    }
    if (unit != null) {
      output["unit"] = unit;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Attributes */
  core.String toString() => JSON.encode(this.toJson());

}

/** Author of product. */
class ShoppingModelProductJsonV1Author {

  /** Account id of product author. */
  core.String accountId;

  /** Name of product author. */
  core.String name;

  /** Create new ShoppingModelProductJsonV1Author from JSON data */
  ShoppingModelProductJsonV1Author.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Author */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Author */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1Images {

  /** Link to product image. */
  core.String link;

  core.String status;

  /** Thumbnails of product image. */
  core.List<ShoppingModelProductJsonV1ImagesThumbnails> thumbnails;

  /** Create new ShoppingModelProductJsonV1Images from JSON data */
  ShoppingModelProductJsonV1Images.fromJson(core.Map json) {
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = json["thumbnails"].map((thumbnailsItem) => new ShoppingModelProductJsonV1ImagesThumbnails.fromJson(thumbnailsItem)).toList();
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Images */
  core.Map toJson() {
    var output = new core.Map();

    if (link != null) {
      output["link"] = link;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (thumbnails != null) {
      output["thumbnails"] = thumbnails.map((thumbnailsItem) => thumbnailsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Images */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1ImagesThumbnails {

  /** Content of thumbnail (only available for the first thumbnail of the top results if SAYT is enabled). */
  core.String content;

  /** Height of thumbnail (omitted if not specified in the request). */
  core.int height;

  /** Link to thumbnail. */
  core.String link;

  /** Width of thumbnail (omitted if not specified in the request). */
  core.int width;

  /** Create new ShoppingModelProductJsonV1ImagesThumbnails from JSON data */
  ShoppingModelProductJsonV1ImagesThumbnails.fromJson(core.Map json) {
    if (json.containsKey("content")) {
      content = json["content"];
    }
    if (json.containsKey("height")) {
      height = json["height"];
    }
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("width")) {
      width = json["width"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1ImagesThumbnails */
  core.Map toJson() {
    var output = new core.Map();

    if (content != null) {
      output["content"] = content;
    }
    if (height != null) {
      output["height"] = height;
    }
    if (link != null) {
      output["link"] = link;
    }
    if (width != null) {
      output["width"] = width;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1ImagesThumbnails */
  core.String toString() => JSON.encode(this.toJson());

}

/** Google Internal. Attribute names are deliberately vague. */
class ShoppingModelProductJsonV1Internal16 {

  core.int length;

  core.int number;

  core.int size;

  /** Create new ShoppingModelProductJsonV1Internal16 from JSON data */
  ShoppingModelProductJsonV1Internal16.fromJson(core.Map json) {
    if (json.containsKey("length")) {
      length = json["length"];
    }
    if (json.containsKey("number")) {
      number = json["number"];
    }
    if (json.containsKey("size")) {
      size = (json["size"] is core.String) ? core.int.parse(json["size"]) : json["size"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Internal16 */
  core.Map toJson() {
    var output = new core.Map();

    if (length != null) {
      output["length"] = length;
    }
    if (number != null) {
      output["number"] = number;
    }
    if (size != null) {
      output["size"] = size;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Internal16 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1Inventories {

  /** Availability of product inventory. */
  core.String availability;

  /** Channel of product inventory (one of: online, local). */
  core.String channel;

  /** Currency of product inventory (an ISO 4217 alphabetic code). */
  core.String currency;

  /** Distance of product inventory. */
  core.num distance;

  /** Distance unit of product inventory. */
  core.String distanceUnit;

  /** Number of months for installment price. */
  core.int installmentMonths;

  /** Installment price of product inventory. */
  core.num installmentPrice;

  /** Original price of product inventory. Only returned for products that are on sale. */
  core.num originalPrice;

  /** Price of product inventory. */
  core.num price;

  /** Sale end date. */
  core.String saleEndDate;

  /** Sale price of product inventory. */
  core.num salePrice;

  /** Sale start date. */
  core.String saleStartDate;

  /** Shipping cost of product inventory. */
  core.num shipping;

  /** Store ID of product inventory. */
  core.String storeId;

  /** Tax of product inventory. */
  core.num tax;

  /** Create new ShoppingModelProductJsonV1Inventories from JSON data */
  ShoppingModelProductJsonV1Inventories.fromJson(core.Map json) {
    if (json.containsKey("availability")) {
      availability = json["availability"];
    }
    if (json.containsKey("channel")) {
      channel = json["channel"];
    }
    if (json.containsKey("currency")) {
      currency = json["currency"];
    }
    if (json.containsKey("distance")) {
      distance = json["distance"];
    }
    if (json.containsKey("distanceUnit")) {
      distanceUnit = json["distanceUnit"];
    }
    if (json.containsKey("installmentMonths")) {
      installmentMonths = json["installmentMonths"];
    }
    if (json.containsKey("installmentPrice")) {
      installmentPrice = json["installmentPrice"];
    }
    if (json.containsKey("originalPrice")) {
      originalPrice = json["originalPrice"];
    }
    if (json.containsKey("price")) {
      price = json["price"];
    }
    if (json.containsKey("saleEndDate")) {
      saleEndDate = json["saleEndDate"];
    }
    if (json.containsKey("salePrice")) {
      salePrice = json["salePrice"];
    }
    if (json.containsKey("saleStartDate")) {
      saleStartDate = json["saleStartDate"];
    }
    if (json.containsKey("shipping")) {
      shipping = json["shipping"];
    }
    if (json.containsKey("storeId")) {
      storeId = json["storeId"];
    }
    if (json.containsKey("tax")) {
      tax = json["tax"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Inventories */
  core.Map toJson() {
    var output = new core.Map();

    if (availability != null) {
      output["availability"] = availability;
    }
    if (channel != null) {
      output["channel"] = channel;
    }
    if (currency != null) {
      output["currency"] = currency;
    }
    if (distance != null) {
      output["distance"] = distance;
    }
    if (distanceUnit != null) {
      output["distanceUnit"] = distanceUnit;
    }
    if (installmentMonths != null) {
      output["installmentMonths"] = installmentMonths;
    }
    if (installmentPrice != null) {
      output["installmentPrice"] = installmentPrice;
    }
    if (originalPrice != null) {
      output["originalPrice"] = originalPrice;
    }
    if (price != null) {
      output["price"] = price;
    }
    if (saleEndDate != null) {
      output["saleEndDate"] = saleEndDate;
    }
    if (salePrice != null) {
      output["salePrice"] = salePrice;
    }
    if (saleStartDate != null) {
      output["saleStartDate"] = saleStartDate;
    }
    if (shipping != null) {
      output["shipping"] = shipping;
    }
    if (storeId != null) {
      output["storeId"] = storeId;
    }
    if (tax != null) {
      output["tax"] = tax;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Inventories */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelProductJsonV1Variants {

  /** The detailed offer data for a particular variant offer. */
  ShoppingModelProductJsonV1 variant;

  /** Create new ShoppingModelProductJsonV1Variants from JSON data */
  ShoppingModelProductJsonV1Variants.fromJson(core.Map json) {
    if (json.containsKey("variant")) {
      variant = new ShoppingModelProductJsonV1.fromJson(json["variant"]);
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Variants */
  core.Map toJson() {
    var output = new core.Map();

    if (variant != null) {
      output["variant"] = variant.toJson();
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Variants */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelRecommendationsJsonV1 {

  /** List of recommendations. */
  core.List<ShoppingModelRecommendationsJsonV1RecommendationList> recommendationList;

  /** Type of recommendation list (for offer-based recommendations, one of: all, purchaseToPurchase, visitToVisit, visitToPurchase, relatedItems, visuallySimilarItems; for category-based recommendations, one of: all, categoryMostVisited, categoryBestSeller). */
  core.String type;

  /** Create new ShoppingModelRecommendationsJsonV1 from JSON data */
  ShoppingModelRecommendationsJsonV1.fromJson(core.Map json) {
    if (json.containsKey("recommendationList")) {
      recommendationList = json["recommendationList"].map((recommendationListItem) => new ShoppingModelRecommendationsJsonV1RecommendationList.fromJson(recommendationListItem)).toList();
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ShoppingModelRecommendationsJsonV1 */
  core.Map toJson() {
    var output = new core.Map();

    if (recommendationList != null) {
      output["recommendationList"] = recommendationList.map((recommendationListItem) => recommendationListItem.toJson()).toList();
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ShoppingModelRecommendationsJsonV1 */
  core.String toString() => JSON.encode(this.toJson());

}

class ShoppingModelRecommendationsJsonV1RecommendationList {

  /** Recommended product. */
  ShoppingModelProductJsonV1 product;

  /** Create new ShoppingModelRecommendationsJsonV1RecommendationList from JSON data */
  ShoppingModelRecommendationsJsonV1RecommendationList.fromJson(core.Map json) {
    if (json.containsKey("product")) {
      product = new ShoppingModelProductJsonV1.fromJson(json["product"]);
    }
  }

  /** Create JSON Object for ShoppingModelRecommendationsJsonV1RecommendationList */
  core.Map toJson() {
    var output = new core.Map();

    if (product != null) {
      output["product"] = product.toJson();
    }

    return output;
  }

  /** Return String representation of ShoppingModelRecommendationsJsonV1RecommendationList */
  core.String toString() => JSON.encode(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
