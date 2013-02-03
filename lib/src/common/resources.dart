part of shopping_v1_api_client;

class ProductsResource extends Resource {

  ProductsResource(Client client) : super(client) {
  }

  /**
   * Returns a single product
   *
   * [source] - Query source
   *
   * [accountId] - Merchant center account id
   *
   * [productIdType] - Type of productId
   *
   * [productId] - Id of product
   *
   * [attributeFilter] - Comma separated list of attributes to return
   *
   * [categories_enabled] - Whether to return category information
   *
   * [categories_include] - Category specification
   *
   * [categories_useGcsConfig] - This parameter is currently ignored
   *
   * [location] - Location used to determine tax and shipping
   *
   * [plusOne_enabled] - Whether to return +1 button code
   *
   * [plusOne_styles] - +1 button rendering styles
   *
   * [plusOne_useGcsConfig] - Whether to use +1 button styles configured in the GCS account
   *
   * [recommendations_enabled] - Whether to return recommendation information
   *
   * [recommendations_include] - Recommendation specification
   *
   * [recommendations_useGcsConfig] - This parameter is currently ignored
   *
   * [taxonomy] - Merchant taxonomy
   *
   * [thumbnails] - Thumbnail specification
   *
   * [optParams] - Additional query parameters
   */
  Future<Product> get(String source, int accountId, String productIdType, String productId, {String attributeFilter, bool categories_enabled, String categories_include, bool categories_useGcsConfig, String location, bool plusOne_enabled, String plusOne_styles, bool plusOne_useGcsConfig, bool recommendations_enabled, String recommendations_include, bool recommendations_useGcsConfig, String taxonomy, String thumbnails, Map optParams}) {
    var completer = new Completer();
    var url = "{source}/products/{accountId}/{productIdType}/{productId}";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (attributeFilter != null) queryParams["attributeFilter"] = attributeFilter;
    if (categories_enabled != null) queryParams["categories.enabled"] = categories_enabled;
    if (categories_include != null) queryParams["categories.include"] = categories_include;
    if (categories_useGcsConfig != null) queryParams["categories.useGcsConfig"] = categories_useGcsConfig;
    if (location != null) queryParams["location"] = location;
    if (plusOne_enabled != null) queryParams["plusOne.enabled"] = plusOne_enabled;
    if (plusOne_styles != null) queryParams["plusOne.styles"] = plusOne_styles;
    if (plusOne_useGcsConfig != null) queryParams["plusOne.useGcsConfig"] = plusOne_useGcsConfig;
    if (productId == null) paramErrors.add("productId is required");
    if (productId != null) urlParams["productId"] = productId;
    if (productIdType == null) paramErrors.add("productIdType is required");
    if (productIdType != null) urlParams["productIdType"] = productIdType;
    if (recommendations_enabled != null) queryParams["recommendations.enabled"] = recommendations_enabled;
    if (recommendations_include != null) queryParams["recommendations.include"] = recommendations_include;
    if (recommendations_useGcsConfig != null) queryParams["recommendations.useGcsConfig"] = recommendations_useGcsConfig;
    if (source == null) paramErrors.add("source is required");
    if (source != null) urlParams["source"] = source;
    if (taxonomy != null) queryParams["taxonomy"] = taxonomy;
    if (thumbnails != null) queryParams["thumbnails"] = thumbnails;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Product.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }

  /**
   * Returns a list of products and content modules
   *
   * [source] - Query source
   *
   * [attributeFilter] - Comma separated list of attributes to return
   *
   * [availability] - Comma separated list of availabilities (outOfStock, limited, inStock, backOrder, preOrder, onDisplayToOrder) to return
   *
   * [boostBy] - Boosting specification
   *
   * [categories_enabled] - Whether to return category information
   *
   * [categories_include] - Category specification
   *
   * [categories_useGcsConfig] - This parameter is currently ignored
   *
   * [categoryRecommendations_category] - Category for which to retrieve recommendations
   *
   * [categoryRecommendations_enabled] - Whether to return category recommendation information
   *
   * [categoryRecommendations_include] - Category recommendation specification
   *
   * [categoryRecommendations_useGcsConfig] - This parameter is currently ignored
   *
   * [channels] - Channels specification
   *
   * [clickTracking] - Whether to add a click tracking parameter to offer URLs
   *
   * [country] - Country restriction (ISO 3166)
   *
   * [crowdBy] - Crowding specification
   *
   * [currency] - Currency restriction (ISO 4217)
   *
   * [extras_enabled] - Whether to return extra information.
   *
   * [extras_info] - What extra information to return.
   *
   * [facets_discover] - Facets to discover
   *
   * [facets_enabled] - Whether to return facet information
   *
   * [facets_include] - Facets to include (applies when useGcsConfig == false)
   *
   * [facets_includeEmptyBuckets] - Return empty facet buckets.
   *
   * [facets_useGcsConfig] - Whether to return facet information as configured in the GCS account
   *
   * [language] - Language restriction (BCP 47)
   *
   * [location] - Location used to determine tax and shipping
   *
   * [maxResults] - Maximum number of results to return
   *
   * [maxVariants] - Maximum number of variant results to return per result
   *
   * [plusOne_enabled] - Whether to return +1 button code
   *
   * [plusOne_styles] - +1 button rendering styles
   *
   * [plusOne_useGcsConfig] - Whether to use +1 button styles configured in the GCS account
   *
   * [promotions_enabled] - Whether to return promotion information
   *
   * [promotions_useGcsConfig] - Whether to return promotion information as configured in the GCS account
   *
   * [q] - Search query
   *
   * [rankBy] - Ranking specification
   *
   * [redirects_enabled] - Whether to return redirect information
   *
   * [redirects_useGcsConfig] - Whether to return redirect information as configured in the GCS account
   *
   * [relatedQueries_enabled] - Whether to return related queries
   *
   * [relatedQueries_useGcsConfig] - This parameter is currently ignored
   *
   * [restrictBy] - Restriction specification
   *
   * [safe] - Whether safe search is enabled. Default: true
   *
   * [spelling_enabled] - Whether to return spelling suggestions
   *
   * [spelling_useGcsConfig] - This parameter is currently ignored
   *
   * [startIndex] - Index (1-based) of first product to return
   *
   * [taxonomy] - Taxonomy name
   *
   * [thumbnails] - Image thumbnails specification
   *
   * [useCase] - One of CommerceSearchUseCase, ShoppingApiUseCase
   *
   * [optParams] - Additional query parameters
   */
  Future<Products> list(String source, {String attributeFilter, String availability, String boostBy, bool categories_enabled, String categories_include, bool categories_useGcsConfig, String categoryRecommendations_category, bool categoryRecommendations_enabled, String categoryRecommendations_include, bool categoryRecommendations_useGcsConfig, String channels, bool clickTracking, String country, String crowdBy, String currency, bool extras_enabled, String extras_info, String facets_discover, bool facets_enabled, String facets_include, bool facets_includeEmptyBuckets, bool facets_useGcsConfig, String language, String location, int maxResults, int maxVariants, bool plusOne_enabled, String plusOne_styles, bool plusOne_useGcsConfig, bool promotions_enabled, bool promotions_useGcsConfig, String q, String rankBy, bool redirects_enabled, bool redirects_useGcsConfig, bool relatedQueries_enabled, bool relatedQueries_useGcsConfig, String restrictBy, bool safe, bool spelling_enabled, bool spelling_useGcsConfig, int startIndex, String taxonomy, String thumbnails, String useCase, Map optParams}) {
    var completer = new Completer();
    var url = "{source}/products";
    var urlParams = new Map();
    var queryParams = new Map();

    var paramErrors = new List();
    if (attributeFilter != null) queryParams["attributeFilter"] = attributeFilter;
    if (availability != null) queryParams["availability"] = availability;
    if (boostBy != null) queryParams["boostBy"] = boostBy;
    if (categories_enabled != null) queryParams["categories.enabled"] = categories_enabled;
    if (categories_include != null) queryParams["categories.include"] = categories_include;
    if (categories_useGcsConfig != null) queryParams["categories.useGcsConfig"] = categories_useGcsConfig;
    if (categoryRecommendations_category != null) queryParams["categoryRecommendations.category"] = categoryRecommendations_category;
    if (categoryRecommendations_enabled != null) queryParams["categoryRecommendations.enabled"] = categoryRecommendations_enabled;
    if (categoryRecommendations_include != null) queryParams["categoryRecommendations.include"] = categoryRecommendations_include;
    if (categoryRecommendations_useGcsConfig != null) queryParams["categoryRecommendations.useGcsConfig"] = categoryRecommendations_useGcsConfig;
    if (channels != null) queryParams["channels"] = channels;
    if (clickTracking != null) queryParams["clickTracking"] = clickTracking;
    if (country != null) queryParams["country"] = country;
    if (crowdBy != null) queryParams["crowdBy"] = crowdBy;
    if (currency != null) queryParams["currency"] = currency;
    if (extras_enabled != null) queryParams["extras.enabled"] = extras_enabled;
    if (extras_info != null) queryParams["extras.info"] = extras_info;
    if (facets_discover != null) queryParams["facets.discover"] = facets_discover;
    if (facets_enabled != null) queryParams["facets.enabled"] = facets_enabled;
    if (facets_include != null) queryParams["facets.include"] = facets_include;
    if (facets_includeEmptyBuckets != null) queryParams["facets.includeEmptyBuckets"] = facets_includeEmptyBuckets;
    if (facets_useGcsConfig != null) queryParams["facets.useGcsConfig"] = facets_useGcsConfig;
    if (language != null) queryParams["language"] = language;
    if (location != null) queryParams["location"] = location;
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (maxVariants != null) queryParams["maxVariants"] = maxVariants;
    if (plusOne_enabled != null) queryParams["plusOne.enabled"] = plusOne_enabled;
    if (plusOne_styles != null) queryParams["plusOne.styles"] = plusOne_styles;
    if (plusOne_useGcsConfig != null) queryParams["plusOne.useGcsConfig"] = plusOne_useGcsConfig;
    if (promotions_enabled != null) queryParams["promotions.enabled"] = promotions_enabled;
    if (promotions_useGcsConfig != null) queryParams["promotions.useGcsConfig"] = promotions_useGcsConfig;
    if (q != null) queryParams["q"] = q;
    if (rankBy != null) queryParams["rankBy"] = rankBy;
    if (redirects_enabled != null) queryParams["redirects.enabled"] = redirects_enabled;
    if (redirects_useGcsConfig != null) queryParams["redirects.useGcsConfig"] = redirects_useGcsConfig;
    if (relatedQueries_enabled != null) queryParams["relatedQueries.enabled"] = relatedQueries_enabled;
    if (relatedQueries_useGcsConfig != null) queryParams["relatedQueries.useGcsConfig"] = relatedQueries_useGcsConfig;
    if (restrictBy != null) queryParams["restrictBy"] = restrictBy;
    if (safe != null) queryParams["safe"] = safe;
    if (source == null) paramErrors.add("source is required");
    if (source != null) urlParams["source"] = source;
    if (spelling_enabled != null) queryParams["spelling.enabled"] = spelling_enabled;
    if (spelling_useGcsConfig != null) queryParams["spelling.useGcsConfig"] = spelling_useGcsConfig;
    if (startIndex != null) queryParams["startIndex"] = startIndex;
    if (taxonomy != null) queryParams["taxonomy"] = taxonomy;
    if (thumbnails != null) queryParams["thumbnails"] = thumbnails;
    if (useCase != null) queryParams["useCase"] = useCase;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      completer.completeError(new ArgumentError(paramErrors.join(" / ")));
      return completer.future;
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    response
      .then((data) => completer.complete(new Products.fromJson(data)))
      .catchError((e) { completer.completeError(e); return true; });
    return completer.future;
  }
}

