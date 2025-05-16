# OpenapiClient::Price

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **amount** | **String** | Numerical amount of the price. |  |
| **currency** | **String** | [ISO 4217](https://en.wikipedia.org/wiki/ISO_4217) alphabetic code of the currency. |  |
| **formatted** | **String** | Formatted price, including both the amount and the currency. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Price.new(
  amount: null,
  currency: null,
  formatted: null
)
```

