# OpenapiClient::Season

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_type** | **String** | Type of the item. Always season. |  |
| **title** | **String** | Title of the season. |  |
| **first_air_year** | **Integer** | The first year that the season aired. |  |
| **last_air_year** | **Integer** | The last year that the season aired. |  |
| **streaming_options** | **Hash&lt;String, Array&lt;StreamingOption&gt;&gt;** | Map of the streaming options by the country code. |  |
| **episodes** | [**Array&lt;Episode&gt;**](Episode.md) | Array of the episodes belong to the season. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Season.new(
  item_type: null,
  title: null,
  first_air_year: null,
  last_air_year: null,
  streaming_options: null,
  episodes: null
)
```

