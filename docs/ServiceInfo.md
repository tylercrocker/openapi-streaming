# OpenapiClient::ServiceInfo

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the service. |  |
| **name** | **String** | Name of the service. |  |
| **home_page** | **String** | Link to the homepage of the service. |  |
| **theme_color_code** | **String** | Associated theme color hex code of the service. |  |
| **image_set** | [**ServiceImageSet**](ServiceImageSet.md) | Image set of the service. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ServiceInfo.new(
  id: null,
  name: null,
  home_page: null,
  theme_color_code: null,
  image_set: null
)
```

