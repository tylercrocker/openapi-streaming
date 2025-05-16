# OpenapiClient::Service

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the service. |  |
| **name** | **String** | Name of the service. |  |
| **home_page** | **String** | Link to the homepage of the service. |  |
| **theme_color_code** | **String** | Associated theme color hex code of the service. |  |
| **image_set** | [**ServiceImageSet**](ServiceImageSet.md) | Image set of the service. |  |
| **streaming_option_types** | [**StreamingOptionTypes**](StreamingOptionTypes.md) |  |  |
| **addons** | [**Array&lt;Addon&gt;**](Addon.md) | Array of the supported addons in the service. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Service.new(
  id: null,
  name: null,
  home_page: null,
  theme_color_code: null,
  image_set: null,
  streaming_option_types: null,
  addons: null
)
```

