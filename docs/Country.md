# OpenapiClient::Country

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **country_code** | **String** | [ISO 3166-1 alpha-2 code](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) of the country.  |  |
| **name** | **String** | Name of the country. |  |
| **services** | [**Array&lt;Service&gt;**](Service.md) | Array of the supported services in the country, ordered by popularity. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Country.new(
  country_code: null,
  name: null,
  services: null
)
```

