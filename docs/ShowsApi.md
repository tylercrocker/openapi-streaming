# OpenapiClient::ShowsApi

All URIs are relative to *https://streaming-availability.p.rapidapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_show**](ShowsApi.md#get_show) | **GET** /shows/{id} | Get a Show |
| [**get_top_shows**](ShowsApi.md#get_top_shows) | **GET** /shows/top | Get Top Shows |
| [**search_shows_by_filters**](ShowsApi.md#search_shows_by_filters) | **GET** /shows/search/filters | Search Shows by filters |
| [**search_shows_by_title**](ShowsApi.md#search_shows_by_title) | **GET** /shows/search/title | Search Shows by title |


## get_show

> <Show> get_show(id, opts)

Get a Show

Get the details of a show via id, imdbId or tmdbId, including the global streaming availability info.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: X-Rapid-API-Key
  config.api_key['X-RapidAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-RapidAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::ShowsApi.new
id = 'tt0120338' # String | id of the show. You can also pass an IMDb Id or a TMDB Id as an id. The endpoint will automatically detect the type of the id and fetch the show accordingly.  When passing an IMDb Id, it should be in the format of tt<numerical_id>. (e.g. tt0120338 for Titanic)  When passing a TMDB Id, it should be in the format of movie/<numerical_id> for movies and tv/<numerical_id> for series. (e.g. tv/1396 for Breaking Bad and movie/597 for Titanic) 
opts = {
  country: 'ca', # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the optional target country. If this parameter is not supplied, global streaming availability across all the countries will be returned. If it is supplied, only the streaming availability info from the given country will be returned. If you are only interested in the streaming availability in a single country, then it is recommended to use this parameter to reduce the size of the response and increase the performance of the endpoint. See /countries endpoint to get the list of supported countries. 
  series_granularity: 'show', # String | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc. 
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Get a Show
  result = api_instance.get_show(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->get_show: #{e}"
end
```

#### Using the get_show_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Show>, Integer, Hash)> get_show_with_http_info(id, opts)

```ruby
begin
  # Get a Show
  data, status_code, headers = api_instance.get_show_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Show>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->get_show_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | id of the show. You can also pass an IMDb Id or a TMDB Id as an id. The endpoint will automatically detect the type of the id and fetch the show accordingly.  When passing an IMDb Id, it should be in the format of tt&lt;numerical_id&gt;. (e.g. tt0120338 for Titanic)  When passing a TMDB Id, it should be in the format of movie/&lt;numerical_id&gt; for movies and tv/&lt;numerical_id&gt; for series. (e.g. tv/1396 for Breaking Bad and movie/597 for Titanic)  |  |
| **country** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the optional target country. If this parameter is not supplied, global streaming availability across all the countries will be returned. If it is supplied, only the streaming availability info from the given country will be returned. If you are only interested in the streaming availability in a single country, then it is recommended to use this parameter to reduce the size of the response and increase the performance of the endpoint. See /countries endpoint to get the list of supported countries.  | [optional] |
| **series_granularity** | **String** | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc.  | [optional][default to &#39;episode&#39;] |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**Show**](Show.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_top_shows

> <Array<Show>> get_top_shows(country, service, opts)

Get Top Shows

Get the official top shows in a service. Top shows are determined by the streaming service itself.  Supported streaming services are: - Netflix: netflix - Amazon Prime Video: prime - Apple TV: apple - Max: hbo  For unsupported services, this endpoint will return an empty list.  Series granularity is always show for this endpoint, meaning that the output will not include season and episode info. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: X-Rapid-API-Key
  config.api_key['X-RapidAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-RapidAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::ShowsApi.new
country = 'ca' # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries. 
service = 'netflix' # String | Id of the target service. 
opts = {
  output_language: 'en', # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
  show_type: OpenapiClient::ShowType::MOVIE # ShowType | Type of shows to search in. If not supplied, both movies and series will be included in the search results. 
}

begin
  # Get Top Shows
  result = api_instance.get_top_shows(country, service, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->get_top_shows: #{e}"
end
```

#### Using the get_top_shows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Show>>, Integer, Hash)> get_top_shows_with_http_info(country, service, opts)

```ruby
begin
  # Get Top Shows
  data, status_code, headers = api_instance.get_top_shows_with_http_info(country, service, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Show>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->get_top_shows_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries.  |  |
| **service** | **String** | Id of the target service.  |  |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |
| **show_type** | [**ShowType**](.md) | Type of shows to search in. If not supplied, both movies and series will be included in the search results.  | [optional] |

### Return type

[**Array&lt;Show&gt;**](Show.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_shows_by_filters

> <SearchResult> search_shows_by_filters(country, opts)

Search Shows by filters

Search through the catalog of the given streaming services in the given country. Provides filters such as show language, genres, keyword and release year. Output includes all the information about the shows, such as title, IMDb ID, TMDb ID, release year, deep links to streaming services, available subtitles, audios, available video quality and many more! Apart from the info about the given country-service combinations, output also includes information about streaming availability in the other services for the given country. Streaming availability info from the other countries are not included in the response.  When show_type is movie or series_granularity is show, items per page is 20. When show_type is series and series_granularity is episode items per page is 10. Otherwise, items per page is 15. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: X-Rapid-API-Key
  config.api_key['X-RapidAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-RapidAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::ShowsApi.new
country = 'ca' # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries. 
opts = {
  catalogs: ['inner_example'], # Array<String> | A comma separated list of up to 32 catalogs to search in. See /countries endpoint to get the supported services in each country and their ids.  When multiple catalogs are passed as a comma separated list, any show that is in at least one of the catalogs will be included in the result.  If no catalogs are passed, the endpoint will search in all the available catalogs in the country.  Syntax of the catalogs supplied in the list can be as the followings:  - <sevice_id>: Searches in the entire catalog of that service, including (if applicable) rentable, buyable shows or shows available through addons e.g. netflix, prime, apple  - <sevice_id>.<streaming_option_type>: Only returns the shows that are available in that service with the given streaming option type. Valid streaming option types are subscription, free, rent, buy and addon e.g. peacock.free only returns the shows on Peacock that are free to watch, prime.subscription only returns the shows on Prime Video that are available to watch with a Prime subscription. hulu.addon only returns the shows on Hulu that are available via an addon, prime.rent only returns the shows on Prime Video that are rentable.  - <sevice_id>.addon.<addon_id>: Only returns the shows that are available in that service with the given addon. Check /countries endpoint to fetch the available addons for a service in each country. Some sample values are: hulu.addon.hbo, prime.addon.hbomaxus. 
  output_language: 'en', # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
  show_type: OpenapiClient::ShowType::MOVIE, # ShowType | Type of shows to search in. If not supplied, both movies and series will be included in the search results. 
  genres: ['inner_example'], # Array<String> | A comma seperated list of genre ids to only search within the shows in those genre. See /genres endpoint to see the available genres and their ids. Use genres_relation parameter to specify between returning shows that have at least one of the given genres or returning shows that have all of the given genres. 
  genres_relation: 'and', # String | Only used when there are multiple genres supplied in genres parameter.  When or, the endpoint returns any show that has at least one of the given genres. When and, it only returns the shows that have all of the given genres. 
  show_original_language: 'en', # String | [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) language code to only search within the shows whose original language matches with the provided language. 
  year_min: 1980.0, # Integer | Minimum release/air year of the shows.
  year_max: 1980.0, # Integer | Maximum release/air year of the shows.
  rating_min: 75.0, # Integer | Minimum rating of the shows.
  rating_max: 80.0, # Integer | Maximum rating of the shows.
  keyword: 'zombie', # String | A keyword to only search within the shows have that keyword in their overview or title.
  series_granularity: 'show', # String | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc. 
  order_by: 'original_title', # String | Determines the ordering of the shows.  You can switch between ascending and descending order by using the order_direction parameter. 
  order_direction: OpenapiClient::OrderDirection::ASC, # OrderDirection | Determines whether to order the results in ascending or descending order.  Default value when ordering alphabetically or based on dates/times is asc.  Default value when ordering by rating or popularity is desc. 
  cursor: 'cursor_example' # String | Cursor is used for pagination. After each request, the response includes a hasMore boolean field to tell if there are more results that did not fit into the returned list. If it is set as true, to get the rest of the result set, send a new request (with the same parameters for other fields), and set the cursor parameter as the nextCursor value of the response of the previous request. Do not forget to escape the cursor value before putting it into a query as it might contain characters such as ?and &.  The first request naturally does not require a cursor parameter. 
}

begin
  # Search Shows by filters
  result = api_instance.search_shows_by_filters(country, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->search_shows_by_filters: #{e}"
end
```

#### Using the search_shows_by_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SearchResult>, Integer, Hash)> search_shows_by_filters_with_http_info(country, opts)

```ruby
begin
  # Search Shows by filters
  data, status_code, headers = api_instance.search_shows_by_filters_with_http_info(country, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SearchResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->search_shows_by_filters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries.  |  |
| **catalogs** | [**Array&lt;String&gt;**](String.md) | A comma separated list of up to 32 catalogs to search in. See /countries endpoint to get the supported services in each country and their ids.  When multiple catalogs are passed as a comma separated list, any show that is in at least one of the catalogs will be included in the result.  If no catalogs are passed, the endpoint will search in all the available catalogs in the country.  Syntax of the catalogs supplied in the list can be as the followings:  - &lt;sevice_id&gt;: Searches in the entire catalog of that service, including (if applicable) rentable, buyable shows or shows available through addons e.g. netflix, prime, apple  - &lt;sevice_id&gt;.&lt;streaming_option_type&gt;: Only returns the shows that are available in that service with the given streaming option type. Valid streaming option types are subscription, free, rent, buy and addon e.g. peacock.free only returns the shows on Peacock that are free to watch, prime.subscription only returns the shows on Prime Video that are available to watch with a Prime subscription. hulu.addon only returns the shows on Hulu that are available via an addon, prime.rent only returns the shows on Prime Video that are rentable.  - &lt;sevice_id&gt;.addon.&lt;addon_id&gt;: Only returns the shows that are available in that service with the given addon. Check /countries endpoint to fetch the available addons for a service in each country. Some sample values are: hulu.addon.hbo, prime.addon.hbomaxus.  | [optional] |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |
| **show_type** | [**ShowType**](.md) | Type of shows to search in. If not supplied, both movies and series will be included in the search results.  | [optional] |
| **genres** | [**Array&lt;String&gt;**](String.md) | A comma seperated list of genre ids to only search within the shows in those genre. See /genres endpoint to see the available genres and their ids. Use genres_relation parameter to specify between returning shows that have at least one of the given genres or returning shows that have all of the given genres.  | [optional] |
| **genres_relation** | **String** | Only used when there are multiple genres supplied in genres parameter.  When or, the endpoint returns any show that has at least one of the given genres. When and, it only returns the shows that have all of the given genres.  | [optional][default to &#39;and&#39;] |
| **show_original_language** | **String** | [ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) language code to only search within the shows whose original language matches with the provided language.  | [optional] |
| **year_min** | **Integer** | Minimum release/air year of the shows. | [optional] |
| **year_max** | **Integer** | Maximum release/air year of the shows. | [optional] |
| **rating_min** | **Integer** | Minimum rating of the shows. | [optional] |
| **rating_max** | **Integer** | Maximum rating of the shows. | [optional] |
| **keyword** | **String** | A keyword to only search within the shows have that keyword in their overview or title. | [optional] |
| **series_granularity** | **String** | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc.  | [optional][default to &#39;show&#39;] |
| **order_by** | **String** | Determines the ordering of the shows.  You can switch between ascending and descending order by using the order_direction parameter.  | [optional][default to &#39;original_title&#39;] |
| **order_direction** | [**OrderDirection**](.md) | Determines whether to order the results in ascending or descending order.  Default value when ordering alphabetically or based on dates/times is asc.  Default value when ordering by rating or popularity is desc.  | [optional] |
| **cursor** | **String** | Cursor is used for pagination. After each request, the response includes a hasMore boolean field to tell if there are more results that did not fit into the returned list. If it is set as true, to get the rest of the result set, send a new request (with the same parameters for other fields), and set the cursor parameter as the nextCursor value of the response of the previous request. Do not forget to escape the cursor value before putting it into a query as it might contain characters such as ?and &amp;.  The first request naturally does not require a cursor parameter.  | [optional] |

### Return type

[**SearchResult**](SearchResult.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## search_shows_by_title

> <Array<Show>> search_shows_by_title(title, country, opts)

Search Shows by title

Search for movies and series by a title. Maximum amount of items returned are 20 unless there are more than 20 shows with the exact given title input. In that case all the items have 100% match with the title will be returned.  Streaming availability info for the target country is included in the response, but not for the other countries.  Results might include shows that are not streamable in the target country. Only criteria for the search are the title and the show type.  No pagination is supported. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: X-Rapid-API-Key
  config.api_key['X-RapidAPI-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['X-RapidAPI-Key'] = 'Bearer'
end

api_instance = OpenapiClient::ShowsApi.new
title = 'Batman' # String | Title phrase to search for.
country = 'ca' # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries. 
opts = {
  show_type: OpenapiClient::ShowType::MOVIE, # ShowType | Type of shows to search in. If not supplied, both movies and series will be included in the search results. 
  series_granularity: 'show', # String | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc. 
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Search Shows by title
  result = api_instance.search_shows_by_title(title, country, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->search_shows_by_title: #{e}"
end
```

#### Using the search_shows_by_title_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Show>>, Integer, Hash)> search_shows_by_title_with_http_info(title, country, opts)

```ruby
begin
  # Search Shows by title
  data, status_code, headers = api_instance.search_shows_by_title_with_http_info(title, country, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Show>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ShowsApi->search_shows_by_title_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **title** | **String** | Title phrase to search for. |  |
| **country** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries.  |  |
| **show_type** | [**ShowType**](.md) | Type of shows to search in. If not supplied, both movies and series will be included in the search results.  | [optional] |
| **series_granularity** | **String** | series_granularity determines the level of detail for series. It does not affect movies.  If series_granularity is show, then the output will not include season and episode info.  If series_granularity is season, then the output will include season info but not episode info.  If series_granularity is episode, then the output will include season and episode info.  If you do not need season and episode info, then it is recommended to set series_granularity as show to reduce the size of the response and increase the performance of the endpoint.  If you need deep links for individual seasons and episodes, then you should set series_granularity as episode. In this case response will include full streaming info for seasons and episodes, similar to the streaming info for movies and series; including deep links into seasons and episodes, individual subtitle/audio and video quality info etc.  | [optional][default to &#39;show&#39;] |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**Array&lt;Show&gt;**](Show.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

