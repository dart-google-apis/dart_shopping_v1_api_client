part of shopping_v1_api_client;

class Product {

  /** List of categories for product. */
  List<ShoppingModelCategoryJsonV1> categories;

  /** Google internal. */
  ShoppingModelDebugJsonV1 debug;

  /** Id of product. */
  String id;

  /** The kind of item, always shopping#product. */
  String kind;

  /** Product. */
  ShoppingModelProductJsonV1 product;

  /** Recommendations for product. */
  List<ShoppingModelRecommendationsJsonV1> recommendations;

  /** Unique identifier for this request. */
  String requestId;

  /** Self link of product when generated for a lookup request. Self link of product when generated for a search request. */
  String selfLink;

  /** Create new Product from JSON data */
  Product.fromJson(Map json) {
    if (json.containsKey("categories")) {
      categories = [];
      json["categories"].forEach((item) {
        categories.add(new ShoppingModelCategoryJsonV1.fromJson(item));
      });
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
      recommendations = [];
      json["recommendations"].forEach((item) {
        recommendations.add(new ShoppingModelRecommendationsJsonV1.fromJson(item));
      });
    }
    if (json.containsKey("requestId")) {
      requestId = json["requestId"];
    }
    if (json.containsKey("selfLink")) {
      selfLink = json["selfLink"];
    }
  }

  /** Create JSON Object for Product */
  Map toJson() {
    var output = new Map();

    if (categories != null) {
      output["categories"] = new List();
      categories.forEach((item) {
        output["categories"].add(item.toJson());
      });
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
      output["recommendations"] = new List();
      recommendations.forEach((item) {
        output["recommendations"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class Products {

  /** List of categories. */
  List<ShoppingModelCategoryJsonV1> categories;

  /** Recommendations for category. */
  List<ShoppingModelRecommendationsJsonV1> categoryRecommendations;

  /** Current item count. */
  int currentItemCount;

  /** Google internal. */
  ShoppingModelDebugJsonV1 debug;

  /** Etag of feed. */
  String etag;

  /** List of extras. */
  ShoppingModelExtrasJsonV1 extras;

  /** List of facets. */
  List<ProductsFacets> facets;

  /** Id of feed. */
  String id;

  /** List of returned products. */
  List<Product> items;

  /** Number of items per page of results. */
  int itemsPerPage;

  /** The fixed string "shopping#products". The kind of feed returned. */
  String kind;

  /** Next link of feed. */
  String nextLink;

  /** Previous link of feed. */
  String previousLink;

  /** List of promotions. */
  List<ProductsPromotions> promotions;

  /** Redirects. */
  List<String> redirects;

  /** Related queries. */
  List<String> relatedQueries;

  /** Unique identifier for this request. */
  String requestId;

  /** Self link of feed. */
  String selfLink;

  /** Spelling. */
  ProductsSpelling spelling;

  /** 1-based index of the first item in the search results. */
  int startIndex;

  /** List of returned stores. */
  List<ProductsStores> stores;

  /** Total number of search results. */
  int totalItems;

  /** Create new Products from JSON data */
  Products.fromJson(Map json) {
    if (json.containsKey("categories")) {
      categories = [];
      json["categories"].forEach((item) {
        categories.add(new ShoppingModelCategoryJsonV1.fromJson(item));
      });
    }
    if (json.containsKey("categoryRecommendations")) {
      categoryRecommendations = [];
      json["categoryRecommendations"].forEach((item) {
        categoryRecommendations.add(new ShoppingModelRecommendationsJsonV1.fromJson(item));
      });
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
      facets = [];
      json["facets"].forEach((item) {
        facets.add(new ProductsFacets.fromJson(item));
      });
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("items")) {
      items = [];
      json["items"].forEach((item) {
        items.add(new Product.fromJson(item));
      });
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
      promotions = [];
      json["promotions"].forEach((item) {
        promotions.add(new ProductsPromotions.fromJson(item));
      });
    }
    if (json.containsKey("redirects")) {
      redirects = [];
      json["redirects"].forEach((item) {
        redirects.add(item);
      });
    }
    if (json.containsKey("relatedQueries")) {
      relatedQueries = [];
      json["relatedQueries"].forEach((item) {
        relatedQueries.add(item);
      });
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
      stores = [];
      json["stores"].forEach((item) {
        stores.add(new ProductsStores.fromJson(item));
      });
    }
    if (json.containsKey("totalItems")) {
      totalItems = json["totalItems"];
    }
  }

  /** Create JSON Object for Products */
  Map toJson() {
    var output = new Map();

    if (categories != null) {
      output["categories"] = new List();
      categories.forEach((item) {
        output["categories"].add(item.toJson());
      });
    }
    if (categoryRecommendations != null) {
      output["categoryRecommendations"] = new List();
      categoryRecommendations.forEach((item) {
        output["categoryRecommendations"].add(item.toJson());
      });
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
      output["facets"] = new List();
      facets.forEach((item) {
        output["facets"].add(item.toJson());
      });
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new List();
      items.forEach((item) {
        output["items"].add(item.toJson());
      });
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
      output["promotions"] = new List();
      promotions.forEach((item) {
        output["promotions"].add(item.toJson());
      });
    }
    if (redirects != null) {
      output["redirects"] = new List();
      redirects.forEach((item) {
        output["redirects"].add(item);
      });
    }
    if (relatedQueries != null) {
      output["relatedQueries"] = new List();
      relatedQueries.forEach((item) {
        output["relatedQueries"].add(item);
      });
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
      output["stores"] = new List();
      stores.forEach((item) {
        output["stores"].add(item.toJson());
      });
    }
    if (totalItems != null) {
      output["totalItems"] = totalItems;
    }

    return output;
  }

  /** Return String representation of Products */
  String toString() => JSON.stringify(this.toJson());

}

/** Spelling. */
class ProductsSpelling {

  /** Suggestion for spelling. */
  String suggestion;

  /** Create new ProductsSpelling from JSON data */
  ProductsSpelling.fromJson(Map json) {
    if (json.containsKey("suggestion")) {
      suggestion = json["suggestion"];
    }
  }

  /** Create JSON Object for ProductsSpelling */
  Map toJson() {
    var output = new Map();

    if (suggestion != null) {
      output["suggestion"] = suggestion;
    }

    return output;
  }

  /** Return String representation of ProductsSpelling */
  String toString() => JSON.stringify(this.toJson());

}

class ProductsFacets {

  /** List of Buckets within facet. */
  List<ProductsFacetsBuckets> buckets;

  /** Number of products matching the query that have a value for the facet's property or attribute. */
  int count;

  /** Display name of facet. */
  String displayName;

  /** Name of the facet's attribute (omitted for property facets). */
  String name;

  /** Property of facet (omitted for attribute facets). */
  String property;

  /** Type of facet's attribute (omitted for property facets, one of: text, bool, int, float). */
  String type;

  /** Unit of the facet's property or attribute (omitted if the facet's property or attribute has no unit). */
  String unit;

  /** Create new ProductsFacets from JSON data */
  ProductsFacets.fromJson(Map json) {
    if (json.containsKey("buckets")) {
      buckets = [];
      json["buckets"].forEach((item) {
        buckets.add(new ProductsFacetsBuckets.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (buckets != null) {
      output["buckets"] = new List();
      buckets.forEach((item) {
        output["buckets"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class ProductsFacetsBuckets {

  /** Number of products matching the query that have a value for the facet's property or attribute that matches the bucket. */
  int count;

  /** Whether the upper bound of the bucket is exclusive (omitted for value buckets or if the range has no upper bound). */
  bool maxExclusive;

  /** Whether the lower bound of the bucket is exclusive (omitted for value buckets or if the range has no lower bound). */
  bool minExclusive;

  /** Create new ProductsFacetsBuckets from JSON data */
  ProductsFacetsBuckets.fromJson(Map json) {
    if (json.containsKey("count")) {
      count = json["count"];
    }
    if (json.containsKey("maxExclusive")) {
      maxExclusive = json["maxExclusive"];
    }
    if (json.containsKey("minExclusive")) {
      minExclusive = json["minExclusive"];
    }
  }

  /** Create JSON Object for ProductsFacetsBuckets */
  Map toJson() {
    var output = new Map();

    if (count != null) {
      output["count"] = count;
    }
    if (maxExclusive != null) {
      output["maxExclusive"] = maxExclusive;
    }
    if (minExclusive != null) {
      output["minExclusive"] = minExclusive;
    }

    return output;
  }

  /** Return String representation of ProductsFacetsBuckets */
  String toString() => JSON.stringify(this.toJson());

}

class ProductsStores {

  /** Address of store. */
  String address;

  /** Location of store. */
  String location;

  /** Name of merchant. */
  String name;

  /** Merchant-supplied store code. */
  String storeCode;

  /** Id of store. */
  String storeId;

  /** Name of store. */
  String storeName;

  /** Telephone number of store. */
  String telephone;

  /** Create new ProductsStores from JSON data */
  ProductsStores.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class ProductsPromotions {

  /** List of custom fields of promotion. */
  List<ProductsPromotionsCustomFields> customFields;

  /** Custom HTML of promotion (omitted if type is not custom). */
  String customHtml;

  /** Description of promotion (omitted if type is not standard). */
  String description;

  /** Link to promotion (omitted if type is not standard). */
  String destLink;

  /** Link to promotion image (omitted if type is not standard). */
  String imageLink;

  /** Name of promotion (omitted if type is not standard). */
  String name;

  /** Product of promotion (omitted if type is not product). */
  ShoppingModelProductJsonV1 product;

  /** Type of promotion (one of: standard, product, custom). */
  String type;

  /** Create new ProductsPromotions from JSON data */
  ProductsPromotions.fromJson(Map json) {
    if (json.containsKey("customFields")) {
      customFields = [];
      json["customFields"].forEach((item) {
        customFields.add(new ProductsPromotionsCustomFields.fromJson(item));
      });
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
  Map toJson() {
    var output = new Map();

    if (customFields != null) {
      output["customFields"] = new List();
      customFields.forEach((item) {
        output["customFields"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class ProductsPromotionsCustomFields {

  /** Name of field. */
  String name;

  /** Value of field. */
  String value;

  /** Create new ProductsPromotionsCustomFields from JSON data */
  ProductsPromotionsCustomFields.fromJson(Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for ProductsPromotionsCustomFields */
  Map toJson() {
    var output = new Map();

    if (name != null) {
      output["name"] = name;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of ProductsPromotionsCustomFields */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelCategoryJsonV1 {

  /** Id of category. */
  String id;

  /** Ids of the parents of the category. */
  List<String> parents;

  /** Short name of category. */
  String shortName;

  /** URL of category. */
  String url;

  /** Create new ShoppingModelCategoryJsonV1 from JSON data */
  ShoppingModelCategoryJsonV1.fromJson(Map json) {
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("parents")) {
      parents = [];
      json["parents"].forEach((item) {
        parents.add(item);
      });
    }
    if (json.containsKey("shortName")) {
      shortName = json["shortName"];
    }
    if (json.containsKey("url")) {
      url = json["url"];
    }
  }

  /** Create JSON Object for ShoppingModelCategoryJsonV1 */
  Map toJson() {
    var output = new Map();

    if (id != null) {
      output["id"] = id;
    }
    if (parents != null) {
      output["parents"] = new List();
      parents.forEach((item) {
        output["parents"].add(item);
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelDebugJsonV1 {

  /** Google internal */
  List<ShoppingModelDebugJsonV1BackendTimes> backendTimes;

  /** Google internal. */
  String elapsedMillis;

  /** Google internal. */
  String facetsRequest;

  /** Google internal. */
  String facetsResponse;

  /** Google internal. */
  String rdcResponse;

  /** Google internal. */
  String recommendedItemsRequest;

  /** Google internal. */
  String recommendedItemsResponse;

  /** Google internal. */
  String searchRequest;

  /** Google internal. */
  String searchResponse;

  /** Create new ShoppingModelDebugJsonV1 from JSON data */
  ShoppingModelDebugJsonV1.fromJson(Map json) {
    if (json.containsKey("backendTimes")) {
      backendTimes = [];
      json["backendTimes"].forEach((item) {
        backendTimes.add(new ShoppingModelDebugJsonV1BackendTimes.fromJson(item));
      });
    }
    if (json.containsKey("elapsedMillis")) {
      elapsedMillis = json["elapsedMillis"];
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
  Map toJson() {
    var output = new Map();

    if (backendTimes != null) {
      output["backendTimes"] = new List();
      backendTimes.forEach((item) {
        output["backendTimes"].add(item.toJson());
      });
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
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelDebugJsonV1BackendTimes {

  /** Google internal */
  String elapsedMillis;

  /** Google internal */
  String hostName;

  /** Google internal */
  String name;

  /** Google internal */
  String serverMillis;

  /** Create new ShoppingModelDebugJsonV1BackendTimes from JSON data */
  ShoppingModelDebugJsonV1BackendTimes.fromJson(Map json) {
    if (json.containsKey("elapsedMillis")) {
      elapsedMillis = json["elapsedMillis"];
    }
    if (json.containsKey("hostName")) {
      hostName = json["hostName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("serverMillis")) {
      serverMillis = json["serverMillis"];
    }
  }

  /** Create JSON Object for ShoppingModelDebugJsonV1BackendTimes */
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelExtrasJsonV1 {
  List<ShoppingModelExtrasJsonV1FacetRules> facetRules;

  /** Names of boost (ranking) rules applicable to this search. */
  List<ShoppingModelExtrasJsonV1RankingRules> rankingRules;

  /** Create new ShoppingModelExtrasJsonV1 from JSON data */
  ShoppingModelExtrasJsonV1.fromJson(Map json) {
    if (json.containsKey("facetRules")) {
      facetRules = [];
      json["facetRules"].forEach((item) {
        facetRules.add(new ShoppingModelExtrasJsonV1FacetRules.fromJson(item));
      });
    }
    if (json.containsKey("rankingRules")) {
      rankingRules = [];
      json["rankingRules"].forEach((item) {
        rankingRules.add(new ShoppingModelExtrasJsonV1RankingRules.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1 */
  Map toJson() {
    var output = new Map();

    if (facetRules != null) {
      output["facetRules"] = new List();
      facetRules.forEach((item) {
        output["facetRules"].add(item.toJson());
      });
    }
    if (rankingRules != null) {
      output["rankingRules"] = new List();
      rankingRules.forEach((item) {
        output["rankingRules"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1 */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelExtrasJsonV1FacetRules {
  String name;

  /** Create new ShoppingModelExtrasJsonV1FacetRules from JSON data */
  ShoppingModelExtrasJsonV1FacetRules.fromJson(Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1FacetRules */
  Map toJson() {
    var output = new Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1FacetRules */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelExtrasJsonV1RankingRules {
  String name;

  /** Create new ShoppingModelExtrasJsonV1RankingRules from JSON data */
  ShoppingModelExtrasJsonV1RankingRules.fromJson(Map json) {
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelExtrasJsonV1RankingRules */
  Map toJson() {
    var output = new Map();

    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1RankingRules */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1 {

  /** Attributes of product (available only with a cx source). */
  List<ShoppingModelProductJsonV1Attributes> attributes;

  /** Author of product. */
  ShoppingModelProductJsonV1Author author;

  /** Brand of product. */
  String brand;

  /** Categories of product according to the selected taxonomy, omitted if no taxonomy is selected. */
  List<String> categories;

  /** Condition of product (one of: new, refurbished, used). */
  String condition;

  /** ISO 3166 code of target country of product. */
  String country;

  /** RFC 3339 formatted creation time and date of product. */
  String creationTime;

  /** Description of product. */
  String description;

  /** Google id of product. */
  String googleId;

  /** The first GTIN of the product. Deprecated in favor of "gtins". */
  String gtin;

  /** List of all the product's GTINs (in GTIN-14 format). */
  List<String> gtins;

  /** Images of product. */
  List<ShoppingModelProductJsonV1Images> images;

  /** Google Internal. */
  List<String> internal1;

  /** Google Internal. */
  List<String> internal10;

  /** Google Internal. */
  String internal12;

  /** Google Internal. */
  num internal13;

  /** Google Internal. */
  num internal14;

  /** Google Internal. */
  num internal15;

  /** Google Internal. */
  String internal3;

  /** Google Internal. */
  List<ShoppingModelProductJsonV1Internal4> internal4;

  /** Google Internal. */
  String internal6;

  /** Google Internal. */
  bool internal7;

  /** Google Internal. */
  List<String> internal8;

  /** Inventories of product. */
  List<ShoppingModelProductJsonV1Inventories> inventories;

  /** BCP 47 language tag of language of product. */
  String language;

  /** Link to product. */
  String link;

  /** RFC 3339 formatted modification time and date of product. */
  String modificationTime;

  /** List of all the product's MPNs. */
  List<String> mpns;

  /** Code to add to the page to render the +1 content. */
  String plusOne;

  /** Merchant-provided id of product (available only with a cx source). */
  String providedId;

  /** Whether this product matched the user query. Only set for the variant offers (if any) attached to a product offer. */
  bool queryMatched;

  /** Google Internal */
  num score;

  /** Title of product. */
  String title;

  /** The number of variant offers returned that matched the query. */
  int totalMatchingVariants;

  /** A list of variant offers associated with this product. */
  List<ShoppingModelProductJsonV1Variants> variants;

  /** Create new ShoppingModelProductJsonV1 from JSON data */
  ShoppingModelProductJsonV1.fromJson(Map json) {
    if (json.containsKey("attributes")) {
      attributes = [];
      json["attributes"].forEach((item) {
        attributes.add(new ShoppingModelProductJsonV1Attributes.fromJson(item));
      });
    }
    if (json.containsKey("author")) {
      author = new ShoppingModelProductJsonV1Author.fromJson(json["author"]);
    }
    if (json.containsKey("brand")) {
      brand = json["brand"];
    }
    if (json.containsKey("categories")) {
      categories = [];
      json["categories"].forEach((item) {
        categories.add(item);
      });
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
      gtins = [];
      json["gtins"].forEach((item) {
        gtins.add(item);
      });
    }
    if (json.containsKey("images")) {
      images = [];
      json["images"].forEach((item) {
        images.add(new ShoppingModelProductJsonV1Images.fromJson(item));
      });
    }
    if (json.containsKey("internal1")) {
      internal1 = [];
      json["internal1"].forEach((item) {
        internal1.add(item);
      });
    }
    if (json.containsKey("internal10")) {
      internal10 = [];
      json["internal10"].forEach((item) {
        internal10.add(item);
      });
    }
    if (json.containsKey("internal12")) {
      internal12 = json["internal12"];
    }
    if (json.containsKey("internal13")) {
      internal13 = json["internal13"];
    }
    if (json.containsKey("internal14")) {
      internal14 = json["internal14"];
    }
    if (json.containsKey("internal15")) {
      internal15 = json["internal15"];
    }
    if (json.containsKey("internal3")) {
      internal3 = json["internal3"];
    }
    if (json.containsKey("internal4")) {
      internal4 = [];
      json["internal4"].forEach((item) {
        internal4.add(new ShoppingModelProductJsonV1Internal4.fromJson(item));
      });
    }
    if (json.containsKey("internal6")) {
      internal6 = json["internal6"];
    }
    if (json.containsKey("internal7")) {
      internal7 = json["internal7"];
    }
    if (json.containsKey("internal8")) {
      internal8 = [];
      json["internal8"].forEach((item) {
        internal8.add(item);
      });
    }
    if (json.containsKey("inventories")) {
      inventories = [];
      json["inventories"].forEach((item) {
        inventories.add(new ShoppingModelProductJsonV1Inventories.fromJson(item));
      });
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
      mpns = [];
      json["mpns"].forEach((item) {
        mpns.add(item);
      });
    }
    if (json.containsKey("plusOne")) {
      plusOne = json["plusOne"];
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
      variants = [];
      json["variants"].forEach((item) {
        variants.add(new ShoppingModelProductJsonV1Variants.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1 */
  Map toJson() {
    var output = new Map();

    if (attributes != null) {
      output["attributes"] = new List();
      attributes.forEach((item) {
        output["attributes"].add(item.toJson());
      });
    }
    if (author != null) {
      output["author"] = author.toJson();
    }
    if (brand != null) {
      output["brand"] = brand;
    }
    if (categories != null) {
      output["categories"] = new List();
      categories.forEach((item) {
        output["categories"].add(item);
      });
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
      output["gtins"] = new List();
      gtins.forEach((item) {
        output["gtins"].add(item);
      });
    }
    if (images != null) {
      output["images"] = new List();
      images.forEach((item) {
        output["images"].add(item.toJson());
      });
    }
    if (internal1 != null) {
      output["internal1"] = new List();
      internal1.forEach((item) {
        output["internal1"].add(item);
      });
    }
    if (internal10 != null) {
      output["internal10"] = new List();
      internal10.forEach((item) {
        output["internal10"].add(item);
      });
    }
    if (internal12 != null) {
      output["internal12"] = internal12;
    }
    if (internal13 != null) {
      output["internal13"] = internal13;
    }
    if (internal14 != null) {
      output["internal14"] = internal14;
    }
    if (internal15 != null) {
      output["internal15"] = internal15;
    }
    if (internal3 != null) {
      output["internal3"] = internal3;
    }
    if (internal4 != null) {
      output["internal4"] = new List();
      internal4.forEach((item) {
        output["internal4"].add(item.toJson());
      });
    }
    if (internal6 != null) {
      output["internal6"] = internal6;
    }
    if (internal7 != null) {
      output["internal7"] = internal7;
    }
    if (internal8 != null) {
      output["internal8"] = new List();
      internal8.forEach((item) {
        output["internal8"].add(item);
      });
    }
    if (inventories != null) {
      output["inventories"] = new List();
      inventories.forEach((item) {
        output["inventories"].add(item.toJson());
      });
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
      output["mpns"] = new List();
      mpns.forEach((item) {
        output["mpns"].add(item);
      });
    }
    if (plusOne != null) {
      output["plusOne"] = plusOne;
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
      output["variants"] = new List();
      variants.forEach((item) {
        output["variants"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1 */
  String toString() => JSON.stringify(this.toJson());

}

/** Author of product. */
class ShoppingModelProductJsonV1Author {

  /** Account id of product author. */
  String accountId;

  /** Name of product author. */
  String name;

  /** Create new ShoppingModelProductJsonV1Author from JSON data */
  ShoppingModelProductJsonV1Author.fromJson(Map json) {
    if (json.containsKey("accountId")) {
      accountId = json["accountId"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Author */
  Map toJson() {
    var output = new Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Author */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Inventories {

  /** Availability of product inventory. */
  String availability;

  /** Channel of product inventory (one of: online, local). */
  String channel;

  /** Currency of product inventory (an ISO 4217 alphabetic code). */
  String currency;

  /** Distance of product inventory. */
  num distance;

  /** Distance unit of product inventory. */
  String distanceUnit;

  /** Number of months for installment price. */
  int installmentMonths;

  /** Installment price of product inventory. */
  num installmentPrice;

  /** Original price of product inventory. Only returned for products that are on sale. */
  num originalPrice;

  /** Price of product inventory. */
  num price;

  /** Sale end date. */
  String saleEndDate;

  /** Sale price of product inventory. */
  num salePrice;

  /** Sale start date. */
  String saleStartDate;

  /** Shipping cost of product inventory. */
  num shipping;

  /** Store ID of product inventory. */
  String storeId;

  /** Tax of product inventory. */
  num tax;

  /** Create new ShoppingModelProductJsonV1Inventories from JSON data */
  ShoppingModelProductJsonV1Inventories.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Attributes {

  /** Display Name of prodct attribute. */
  String displayName;

  /** Name of product attribute. */
  String name;

  /** Type of product attribute (one of: text, bool, int, float, dateRange, url). */
  String type;

  /** Unit of product attribute. */
  String unit;

  /** Create new ShoppingModelProductJsonV1Attributes from JSON data */
  ShoppingModelProductJsonV1Attributes.fromJson(Map json) {
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
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Attributes */
  Map toJson() {
    var output = new Map();

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

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Attributes */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Images {

  /** Link to product image. */
  String link;
  String status;

  /** Thumbnails of product image. */
  List<ShoppingModelProductJsonV1ImagesThumbnails> thumbnails;

  /** Create new ShoppingModelProductJsonV1Images from JSON data */
  ShoppingModelProductJsonV1Images.fromJson(Map json) {
    if (json.containsKey("link")) {
      link = json["link"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("thumbnails")) {
      thumbnails = [];
      json["thumbnails"].forEach((item) {
        thumbnails.add(new ShoppingModelProductJsonV1ImagesThumbnails.fromJson(item));
      });
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Images */
  Map toJson() {
    var output = new Map();

    if (link != null) {
      output["link"] = link;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (thumbnails != null) {
      output["thumbnails"] = new List();
      thumbnails.forEach((item) {
        output["thumbnails"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Images */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1ImagesThumbnails {

  /** Content of thumbnail (only available for the first thumbnail of the top results if SAYT is enabled). */
  String content;

  /** Height of thumbnail (omitted if not specified in the request). */
  int height;

  /** Link to thumbnail. */
  String link;

  /** Width of thumbnail (omitted if not specified in the request). */
  int width;

  /** Create new ShoppingModelProductJsonV1ImagesThumbnails from JSON data */
  ShoppingModelProductJsonV1ImagesThumbnails.fromJson(Map json) {
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
  Map toJson() {
    var output = new Map();

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
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Variants {

  /** The detailed offer data for a particular variant offer. */
  ShoppingModelProductJsonV1 variant;

  /** Create new ShoppingModelProductJsonV1Variants from JSON data */
  ShoppingModelProductJsonV1Variants.fromJson(Map json) {
    if (json.containsKey("variant")) {
      variant = new ShoppingModelProductJsonV1.fromJson(json["variant"]);
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Variants */
  Map toJson() {
    var output = new Map();

    if (variant != null) {
      output["variant"] = variant.toJson();
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Variants */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Internal4 {

  /** Google Internal. */
  num confidence;

  /** Google Internal. */
  int node;

  /** Create new ShoppingModelProductJsonV1Internal4 from JSON data */
  ShoppingModelProductJsonV1Internal4.fromJson(Map json) {
    if (json.containsKey("confidence")) {
      confidence = json["confidence"];
    }
    if (json.containsKey("node")) {
      node = json["node"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Internal4 */
  Map toJson() {
    var output = new Map();

    if (confidence != null) {
      output["confidence"] = confidence;
    }
    if (node != null) {
      output["node"] = node;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Internal4 */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelRecommendationsJsonV1 {

  /** List of recommendations. */
  List<ShoppingModelRecommendationsJsonV1RecommendationList> recommendationList;

  /** Type of recommendation list (for offer-based recommendations, one of: all, purchaseToPurchase, visitToVisit, visitToPurchase, relatedItems; for category-based recommendations, one of: all, categoryMostVisited, categoryBestSeller). */
  String type;

  /** Create new ShoppingModelRecommendationsJsonV1 from JSON data */
  ShoppingModelRecommendationsJsonV1.fromJson(Map json) {
    if (json.containsKey("recommendationList")) {
      recommendationList = [];
      json["recommendationList"].forEach((item) {
        recommendationList.add(new ShoppingModelRecommendationsJsonV1RecommendationList.fromJson(item));
      });
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for ShoppingModelRecommendationsJsonV1 */
  Map toJson() {
    var output = new Map();

    if (recommendationList != null) {
      output["recommendationList"] = new List();
      recommendationList.forEach((item) {
        output["recommendationList"].add(item.toJson());
      });
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of ShoppingModelRecommendationsJsonV1 */
  String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelRecommendationsJsonV1RecommendationList {

  /** Recommended product. */
  ShoppingModelProductJsonV1 product;

  /** Create new ShoppingModelRecommendationsJsonV1RecommendationList from JSON data */
  ShoppingModelRecommendationsJsonV1RecommendationList.fromJson(Map json) {
    if (json.containsKey("product")) {
      product = new ShoppingModelProductJsonV1.fromJson(json["product"]);
    }
  }

  /** Create JSON Object for ShoppingModelRecommendationsJsonV1RecommendationList */
  Map toJson() {
    var output = new Map();

    if (product != null) {
      output["product"] = product.toJson();
    }

    return output;
  }

  /** Return String representation of ShoppingModelRecommendationsJsonV1RecommendationList */
  String toString() => JSON.stringify(this.toJson());

}

