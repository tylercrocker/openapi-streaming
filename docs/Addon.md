# OpenapiClient::Addon

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Id of the addon. |  |
| **name** | **String** | Name of the addon. |  |
| **home_page** | **String** | Link to the homepage of the addon. |  |
| **theme_color_code** | **String** | Associated theme color hex code of the addon. |  |
| **image_set** | [**ServiceImageSet**](ServiceImageSet.md) | Image set of the addon. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Addon.new(
  id: null,
  name: null,
  home_page: null,
  theme_color_code: null,
  image_set: null
)
```

