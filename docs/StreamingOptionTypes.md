# OpenapiClient::StreamingOptionTypes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addon** | **Boolean** | Whether there are shows available via an addon/channel subscription. |  |
| **buy** | **Boolean** | Whether there are shows available to buy. |  |
| **rent** | **Boolean** | Whether there are shows available for rental. |  |
| **free** | **Boolean** | Whether there are free shows to watch. |  |
| **subscription** | **Boolean** | Whether there are shows available via a paid subscription plan. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StreamingOptionTypes.new(
  addon: null,
  buy: null,
  rent: null,
  free: null,
  subscription: null
)
```

