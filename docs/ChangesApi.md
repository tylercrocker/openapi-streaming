# OpenapiClient::ChangesApi

All URIs are relative to *https://streaming-availability.p.rapidapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_changes**](ChangesApi.md#get_changes) | **GET** /changes | Get Changes |


## get_changes

> <ChangesResult> get_changes(country, change_type, item_type, opts)

Get Changes

Query the new, removed, updated, expiring or upcoming movies/series/seasons/episodes in a given list of streaming services. Results are ordered by the date of the changes. Changes listed per page is 25.  Changes are listed under changes field, and shows affected by these changes are listed under shows field.  Note that upcoming changes are only supported for Apple TV, Disney+, Max, Netflix and Prime Video. For other services, upcoming changes will return an empty list. 

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

api_instance = OpenapiClient::ChangesApi.new
country = 'ca' # String | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries. 
change_type = OpenapiClient::ChangeType::NEW # ChangeType | Type of changes to query.
item_type = OpenapiClient::ItemType::SHOW # ItemType | Type of items to search in. If item_type is show, you can use show_type parameter to only search for movies or series. 
opts = {
  catalogs: ['inner_example'], # Array<String> | A comma separated list of up to 32 catalogs to search in. See /countries endpoint to get the supported services in each country and their ids.  When multiple catalogs are passed as a comma separated list, any show that is in at least one of the catalogs will be included in the result.  If no catalogs are passed, the endpoint will search in all the available catalogs in the country.  Syntax of the catalogs supplied in the list can be as the followings:  - <sevice_id>: Searches in the entire catalog of that service, including (if applicable) rentable, buyable shows or shows available through addons e.g. netflix, prime, apple  - <sevice_id>.<streaming_option_type>: Only returns the shows that are available in that service with the given streaming option type. Valid streaming option types are subscription, free, rent, buy and addon e.g. peacock.free only returns the shows on Peacock that are free to watch, prime.subscription only returns the shows on Prime Video that are available to watch with a Prime subscription. hulu.addon only returns the shows on Hulu that are available via an addon, prime.rent only returns the shows on Prime Video that are rentable.  - <sevice_id>.addon.<addon_id>: Only returns the shows that are available in that service with the given addon. Check /countries endpoint to fetch the available addons for a service in each country. Some sample values are: hulu.addon.hbo, prime.addon.hbomaxus. 
  show_type: OpenapiClient::ShowType::MOVIE, # ShowType | Type of shows to search in. If not supplied, both movies and series will be included in the search results. 
  from: 1672531200, # Integer | [Unix Time Stamp](https://www.unixtimestamp.com/) to only query the changes happened/happening after this date (inclusive). For past changes such as new, removed or updated, the timestamp must be between today and 31 days ago. For future changes such as expiring or upcoming, the timestamp must be between today and 31 days from now in the future.  If not supplied, the default value for past changes is 31 days ago, and for future changes is today. 
  to: 1672531200, # Integer | [Unix Time Stamp](https://www.unixtimestamp.com/) to only query the changes happened/happening before this date (inclusive). For past changes such as new, removed or updated, the timestamp must be between today and 31 days ago. For future changes such as expiring or upcoming, the timestamp must be between today and 31 days from now in the future.  If not supplied, the default value for past changes is today, and for future changes is 31 days from now. 
  include_unknown_dates: true, # Boolean | Whether to include the changes with unknown dates. past changes such as new, removed or updated will always have a timestamp thus this parameter does not affect them. future changes such as expiring or upcoming may not have a timestamp if the exact date is not known (e.g. some services do not explicitly state the exact date of some of the upcoming/expiring shows). If set as true, the changes with unknown dates will be included in the response. If set as false, the changes with unknown dates will be excluded from the response.  When ordering, the changes with unknown dates will be treated as if their timestamp is 0. Thus, they will appear first in the ascending order and last in the descending order. 
  cursor: 'cursor_example', # String | Cursor is used for pagination. After each request, the response includes a hasMore boolean field to tell if there are more results that did not fit into the returned list. If it is set as true, to get the rest of the result set, send a new request (with the same parameters for other fields), and set the cursor parameter as the nextCursor value of the response of the previous request. Do not forget to escape the cursor value before putting it into a query as it might contain characters such as ?and &.  The first request naturally does not require a cursor parameter. 
  order_direction: OpenapiClient::OrderDirection::ASC, # OrderDirection | Determines whether to order the results in ascending or descending order. 
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Get Changes
  result = api_instance.get_changes(country, change_type, item_type, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChangesApi->get_changes: #{e}"
end
```

#### Using the get_changes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ChangesResult>, Integer, Hash)> get_changes_with_http_info(country, change_type, item_type, opts)

```ruby
begin
  # Get Changes
  data, status_code, headers = api_instance.get_changes_with_http_info(country, change_type, item_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ChangesResult>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ChangesApi->get_changes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country** | **String** | [ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) code of the target country. See /countries endpoint to get the list of supported countries.  |  |
| **change_type** | [**ChangeType**](.md) | Type of changes to query. |  |
| **item_type** | [**ItemType**](.md) | Type of items to search in. If item_type is show, you can use show_type parameter to only search for movies or series.  |  |
| **catalogs** | [**Array&lt;String&gt;**](String.md) | A comma separated list of up to 32 catalogs to search in. See /countries endpoint to get the supported services in each country and their ids.  When multiple catalogs are passed as a comma separated list, any show that is in at least one of the catalogs will be included in the result.  If no catalogs are passed, the endpoint will search in all the available catalogs in the country.  Syntax of the catalogs supplied in the list can be as the followings:  - &lt;sevice_id&gt;: Searches in the entire catalog of that service, including (if applicable) rentable, buyable shows or shows available through addons e.g. netflix, prime, apple  - &lt;sevice_id&gt;.&lt;streaming_option_type&gt;: Only returns the shows that are available in that service with the given streaming option type. Valid streaming option types are subscription, free, rent, buy and addon e.g. peacock.free only returns the shows on Peacock that are free to watch, prime.subscription only returns the shows on Prime Video that are available to watch with a Prime subscription. hulu.addon only returns the shows on Hulu that are available via an addon, prime.rent only returns the shows on Prime Video that are rentable.  - &lt;sevice_id&gt;.addon.&lt;addon_id&gt;: Only returns the shows that are available in that service with the given addon. Check /countries endpoint to fetch the available addons for a service in each country. Some sample values are: hulu.addon.hbo, prime.addon.hbomaxus.  | [optional] |
| **show_type** | [**ShowType**](.md) | Type of shows to search in. If not supplied, both movies and series will be included in the search results.  | [optional] |
| **from** | **Integer** | [Unix Time Stamp](https://www.unixtimestamp.com/) to only query the changes happened/happening after this date (inclusive). For past changes such as new, removed or updated, the timestamp must be between today and 31 days ago. For future changes such as expiring or upcoming, the timestamp must be between today and 31 days from now in the future.  If not supplied, the default value for past changes is 31 days ago, and for future changes is today.  | [optional] |
| **to** | **Integer** | [Unix Time Stamp](https://www.unixtimestamp.com/) to only query the changes happened/happening before this date (inclusive). For past changes such as new, removed or updated, the timestamp must be between today and 31 days ago. For future changes such as expiring or upcoming, the timestamp must be between today and 31 days from now in the future.  If not supplied, the default value for past changes is today, and for future changes is 31 days from now.  | [optional] |
| **include_unknown_dates** | **Boolean** | Whether to include the changes with unknown dates. past changes such as new, removed or updated will always have a timestamp thus this parameter does not affect them. future changes such as expiring or upcoming may not have a timestamp if the exact date is not known (e.g. some services do not explicitly state the exact date of some of the upcoming/expiring shows). If set as true, the changes with unknown dates will be included in the response. If set as false, the changes with unknown dates will be excluded from the response.  When ordering, the changes with unknown dates will be treated as if their timestamp is 0. Thus, they will appear first in the ascending order and last in the descending order.  | [optional][default to false] |
| **cursor** | **String** | Cursor is used for pagination. After each request, the response includes a hasMore boolean field to tell if there are more results that did not fit into the returned list. If it is set as true, to get the rest of the result set, send a new request (with the same parameters for other fields), and set the cursor parameter as the nextCursor value of the response of the previous request. Do not forget to escape the cursor value before putting it into a query as it might contain characters such as ?and &amp;.  The first request naturally does not require a cursor parameter.  | [optional] |
| **order_direction** | [**OrderDirection**](.md) | Determines whether to order the results in ascending or descending order.  | [optional] |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**ChangesResult**](ChangesResult.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

