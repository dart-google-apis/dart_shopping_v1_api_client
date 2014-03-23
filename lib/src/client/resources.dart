part of shopping_v1_api;

class ProductsResource_ {

  final Client _client;

  ProductsResource_(Client client) :
      _client = client;

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
  async.Future<Product> get(core.String source, core.int accountId, core.String productIdType, core.String productId, {core.String attributeFilter, core.bool categories_enabled, core.String categories_include, core.bool categories_useGcsConfig, core.String location, core.bool recommendations_enabled, core.String recommendations_include, core.bool recommendations_useGcsConfig, core.String taxonomy, core.String thumbnails, core.Map optParams}) {
    var url = "{source}/products/{accountId}/{productIdType}/{productId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (accountId == null) paramErrors.add("accountId is required");
    if (accountId != null) urlParams["accountId"] = accountId;
    if (attributeFilter != null) queryParams["attributeFilter"] = attributeFilter;
    if (categories_enabled != null) queryParams["categories.enabled"] = categories_enabled;
    if (categories_include != null) queryParams["categories.include"] = categories_include;
    if (categories_useGcsConfig != null) queryParams["categories.useGcsConfig"] = categories_useGcsConfig;
    if (location != null) queryParams["location"] = location;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Product.fromJson(data));
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
   * [restrictBy] - Restriction specification
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
  async.Future<Products> list(core.String source, {core.String attributeFilter, core.String availability, core.String boostBy, core.bool categories_enabled, core.String categories_include, core.bool categories_useGcsConfig, core.String categoryRecommendations_category, core.bool categoryRecommendations_enabled, core.String categoryRecommendations_include, core.bool categoryRecommendations_useGcsConfig, core.String channels, core.bool clickTracking, core.String country, core.String crowdBy, core.String currency, core.bool extras_enabled, core.String extras_info, core.String facets_discover, core.bool facets_enabled, core.String facets_include, core.bool facets_includeEmptyBuckets, core.bool facets_useGcsConfig, core.String language, core.String location, core.int maxResults, core.int maxVariants, core.bool promotions_enabled, core.bool promotions_useGcsConfig, core.String q, core.String rankBy, core.bool redirects_enabled, core.bool redirects_useGcsConfig, core.String restrictBy, core.bool spelling_enabled, core.bool spelling_useGcsConfig, core.int startIndex, core.String taxonomy, core.String thumbnails, core.String useCase, core.Map optParams}) {
    var url = "{source}/products";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
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
    if (promotions_enabled != null) queryParams["promotions.enabled"] = promotions_enabled;
    if (promotions_useGcsConfig != null) queryParams["promotions.useGcsConfig"] = promotions_useGcsConfig;
    if (q != null) queryParams["q"] = q;
    if (rankBy != null) queryParams["rankBy"] = rankBy;
    if (redirects_enabled != null) queryParams["redirects.enabled"] = redirects_enabled;
    if (redirects_useGcsConfig != null) queryParams["redirects.useGcsConfig"] = redirects_useGcsConfig;
    if (restrictBy != null) queryParams["restrictBy"] = restrictBy;
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
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Products.fromJson(data));
  }
}

