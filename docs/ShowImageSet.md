# OpenapiClient::ShowImageSet

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **vertical_poster** | [**VerticalImage**](VerticalImage.md) | Vertical poster of the show. |  |
| **horizontal_poster** | [**HorizontalImage**](HorizontalImage.md) | Horizontal poster of the show. |  |
| **vertical_backdrop** | [**VerticalImage**](VerticalImage.md) | Vertical backdrop of the show. | [optional] |
| **horizontal_backdrop** | [**HorizontalImage**](HorizontalImage.md) | Horizontal backdrop of the show. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ShowImageSet.new(
  vertical_poster: null,
  horizontal_poster: null,
  vertical_backdrop: null,
  horizontal_backdrop: null
)
```

