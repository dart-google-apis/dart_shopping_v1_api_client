part of shopping_v1_api_client;

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
  core.Map toJson() {
    var output = new core.Map();

    if (categories != null) {
      output["categories"] = new core.List();
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
      output["recommendations"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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

  /** Related queries. */
  core.List<core.String> relatedQueries;

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
  core.Map toJson() {
    var output = new core.Map();

    if (categories != null) {
      output["categories"] = new core.List();
      categories.forEach((item) {
        output["categories"].add(item.toJson());
      });
    }
    if (categoryRecommendations != null) {
      output["categoryRecommendations"] = new core.List();
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
      output["facets"] = new core.List();
      facets.forEach((item) {
        output["facets"].add(item.toJson());
      });
    }
    if (id != null) {
      output["id"] = id;
    }
    if (items != null) {
      output["items"] = new core.List();
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
      output["promotions"] = new core.List();
      promotions.forEach((item) {
        output["promotions"].add(item.toJson());
      });
    }
    if (redirects != null) {
      output["redirects"] = new core.List();
      redirects.forEach((item) {
        output["redirects"].add(item);
      });
    }
    if (relatedQueries != null) {
      output["relatedQueries"] = new core.List();
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
      output["stores"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.Map toJson() {
    var output = new core.Map();

    if (buckets != null) {
      output["buckets"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

}

class ProductsFacetsBuckets {

  /** Number of products matching the query that have a value for the facet's property or attribute that matches the bucket. */
  core.int count;

  /** Whether the upper bound of the bucket is exclusive (omitted for value buckets or if the range has no upper bound). */
  core.bool maxExclusive;

  /** Whether the lower bound of the bucket is exclusive (omitted for value buckets or if the range has no lower bound). */
  core.bool minExclusive;

  /** Create new ProductsFacetsBuckets from JSON data */
  ProductsFacetsBuckets.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.Map toJson() {
    var output = new core.Map();

    if (customFields != null) {
      output["customFields"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.Map toJson() {
    var output = new core.Map();

    if (id != null) {
      output["id"] = id;
    }
    if (parents != null) {
      output["parents"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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
      backendTimes = [];
      json["backendTimes"].forEach((item) {
        backendTimes.add(new ShoppingModelDebugJsonV1BackendTimes.fromJson(item));
      });
    }
    if (json.containsKey("elapsedMillis")) {
      if(json["elapsedMillis"] is core.String){
        elapsedMillis = core.int.parse(json["elapsedMillis"]);
      }else{
        elapsedMillis = json["elapsedMillis"];
      }
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
      output["backendTimes"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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
      if(json["elapsedMillis"] is core.String){
        elapsedMillis = core.int.parse(json["elapsedMillis"]);
      }else{
        elapsedMillis = json["elapsedMillis"];
      }
    }
    if (json.containsKey("hostName")) {
      hostName = json["hostName"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("serverMillis")) {
      if(json["serverMillis"] is core.String){
        serverMillis = core.int.parse(json["serverMillis"]);
      }else{
        serverMillis = json["serverMillis"];
      }
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
  core.String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelExtrasJsonV1 {
  core.List<ShoppingModelExtrasJsonV1FacetRules> facetRules;

  /** Names of boost (ranking) rules applicable to this search. */
  core.List<ShoppingModelExtrasJsonV1RankingRules> rankingRules;

  /** Create new ShoppingModelExtrasJsonV1 from JSON data */
  ShoppingModelExtrasJsonV1.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (facetRules != null) {
      output["facetRules"] = new core.List();
      facetRules.forEach((item) {
        output["facetRules"].add(item.toJson());
      });
    }
    if (rankingRules != null) {
      output["rankingRules"] = new core.List();
      rankingRules.forEach((item) {
        output["rankingRules"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelExtrasJsonV1 */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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

  /** Google Internal. */
  core.List<core.String> internal1;

  /** Google Internal. */
  core.List<core.String> internal10;

  /** Google Internal. */
  core.String internal12;

  /** Google Internal. */
  core.num internal13;

  /** Google Internal. */
  core.num internal14;

  /** Google Internal. */
  core.num internal15;

  /** Google Internal. Attribute names are deliberately vague. */
  ShoppingModelProductJsonV1Internal16 internal16;

  /** Google Internal. */
  core.String internal3;

  /** Google Internal. */
  core.List<ShoppingModelProductJsonV1Internal4> internal4;

  /** Google Internal. */
  core.String internal6;

  /** Google Internal. */
  core.bool internal7;

  /** Google Internal. */
  core.List<core.String> internal8;

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

  /** Code to add to the page to render the +1 content. */
  core.String plusOne;

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
    if (json.containsKey("internal16")) {
      internal16 = new ShoppingModelProductJsonV1Internal16.fromJson(json["internal16"]);
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
  core.Map toJson() {
    var output = new core.Map();

    if (attributes != null) {
      output["attributes"] = new core.List();
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
      output["categories"] = new core.List();
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
      output["gtins"] = new core.List();
      gtins.forEach((item) {
        output["gtins"].add(item);
      });
    }
    if (images != null) {
      output["images"] = new core.List();
      images.forEach((item) {
        output["images"].add(item.toJson());
      });
    }
    if (internal1 != null) {
      output["internal1"] = new core.List();
      internal1.forEach((item) {
        output["internal1"].add(item);
      });
    }
    if (internal10 != null) {
      output["internal10"] = new core.List();
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
    if (internal16 != null) {
      output["internal16"] = internal16.toJson();
    }
    if (internal3 != null) {
      output["internal3"] = internal3;
    }
    if (internal4 != null) {
      output["internal4"] = new core.List();
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
      output["internal8"] = new core.List();
      internal8.forEach((item) {
        output["internal8"].add(item);
      });
    }
    if (inventories != null) {
      output["inventories"] = new core.List();
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
      output["mpns"] = new core.List();
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
      output["variants"] = new core.List();
      variants.forEach((item) {
        output["variants"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1 */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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
      thumbnails = [];
      json["thumbnails"].forEach((item) {
        thumbnails.add(new ShoppingModelProductJsonV1ImagesThumbnails.fromJson(item));
      });
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
      output["thumbnails"] = new core.List();
      thumbnails.forEach((item) {
        output["thumbnails"].add(item.toJson());
      });
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Images */
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

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

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Attributes */
  core.String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelProductJsonV1Internal4 {

  /** Google Internal. */
  core.num confidence;

  /** Google Internal. */
  core.int node;

  /** Create new ShoppingModelProductJsonV1Internal4 from JSON data */
  ShoppingModelProductJsonV1Internal4.fromJson(core.Map json) {
    if (json.containsKey("confidence")) {
      confidence = json["confidence"];
    }
    if (json.containsKey("node")) {
      node = json["node"];
    }
  }

  /** Create JSON Object for ShoppingModelProductJsonV1Internal4 */
  core.Map toJson() {
    var output = new core.Map();

    if (confidence != null) {
      output["confidence"] = confidence;
    }
    if (node != null) {
      output["node"] = node;
    }

    return output;
  }

  /** Return String representation of ShoppingModelProductJsonV1Internal4 */
  core.String toString() => JSON.stringify(this.toJson());

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
      if(json["size"] is core.String){
        size = core.int.parse(json["size"]);
      }else{
        size = json["size"];
      }
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
  core.String toString() => JSON.stringify(this.toJson());

}

class ShoppingModelRecommendationsJsonV1 {

  /** List of recommendations. */
  core.List<ShoppingModelRecommendationsJsonV1RecommendationList> recommendationList;

  /** Type of recommendation list (for offer-based recommendations, one of: all, purchaseToPurchase, visitToVisit, visitToPurchase, relatedItems; for category-based recommendations, one of: all, categoryMostVisited, categoryBestSeller). */
  core.String type;

  /** Create new ShoppingModelRecommendationsJsonV1 from JSON data */
  ShoppingModelRecommendationsJsonV1.fromJson(core.Map json) {
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
  core.Map toJson() {
    var output = new core.Map();

    if (recommendationList != null) {
      output["recommendationList"] = new core.List();
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
  core.String toString() => JSON.stringify(this.toJson());

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
  core.String toString() => JSON.stringify(this.toJson());

}

