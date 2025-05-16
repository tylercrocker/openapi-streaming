# OpenapiClient::GenresApi

All URIs are relative to *https://streaming-availability.p.rapidapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_genres**](GenresApi.md#get_genres) | **GET** /genres | Get all Genres |


## get_genres

> <Array<Genre>> get_genres(opts)

Get all Genres

Get the list of supported genres.

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

api_instance = OpenapiClient::GenresApi.new
opts = {
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Get all Genres
  result = api_instance.get_genres(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling GenresApi->get_genres: #{e}"
end
```

#### Using the get_genres_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<Genre>>, Integer, Hash)> get_genres_with_http_info(opts)

```ruby
begin
  # Get all Genres
  data, status_code, headers = api_instance.get_genres_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<Genre>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling GenresApi->get_genres_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**Array&lt;Genre&gt;**](Genre.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

