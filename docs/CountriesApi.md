# OpenapiClient::CountriesApi

All URIs are relative to *https://streaming-availability.p.rapidapi.com*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_countries**](CountriesApi.md#get_countries) | **GET** /countries | Get all Countries |
| [**get_country**](CountriesApi.md#get_country) | **GET** /countries/{country-code} | Get a Country |


## get_countries

> <Hash<String, Country>> get_countries(opts)

Get all Countries

Get all the supported countries and the list of the supported services and their details for each country.  Details of services include names, logos, supported streaming types (subscription, rent, buy, free etc.) and list of available addons/channels. 

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

api_instance = OpenapiClient::CountriesApi.new
opts = {
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Get all Countries
  result = api_instance.get_countries(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_countries: #{e}"
end
```

#### Using the get_countries_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Hash<String, Country>>, Integer, Hash)> get_countries_with_http_info(opts)

```ruby
begin
  # Get all Countries
  data, status_code, headers = api_instance.get_countries_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Hash<String, Country>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_countries_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**Hash&lt;String, Country&gt;**](Country.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_country

> <Country> get_country(country_code, opts)

Get a Country

Get a country and the list of the supported services and their details.  Details of services include names, logos, supported streaming types (subscription, rent, buy, free etc.) and list of available addons/channels. 

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

api_instance = OpenapiClient::CountriesApi.new
country_code = 'us' # String | [ISO 3166-1 alpha-2 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country. 
opts = {
  output_language: 'en' # String | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in. 
}

begin
  # Get a Country
  result = api_instance.get_country(country_code, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_country: #{e}"
end
```

#### Using the get_country_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Country>, Integer, Hash)> get_country_with_http_info(country_code, opts)

```ruby
begin
  # Get a Country
  data, status_code, headers = api_instance.get_country_with_http_info(country_code, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Country>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CountriesApi->get_country_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | [ISO 3166-1 alpha-2 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country.  |  |
| **output_language** | **String** | [ISO 639-1 code](https://en.wikipedia.org/wiki/ISO_639-1) of the output language. Determines in which language the output  will be in.  | [optional][default to &#39;en&#39;] |

### Return type

[**Country**](Country.md)

### Authorization

[X-Rapid-API-Key](../README.md#X-Rapid-API-Key)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

