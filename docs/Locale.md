# OpenapiClient::Locale

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **language** | **String** | [ISO 639-2](https://en.wikipedia.org/wiki/ISO_639-2) code of the associated language with the locale. |  |
| **region** | **String** | [ISO 3166-1 alpha-3](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3) code of the country, or [UN M49](https://en.wikipedia.org/wiki/UN_M49) code of the area associated with the locale.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Locale.new(
  language: null,
  region: null
)
```

