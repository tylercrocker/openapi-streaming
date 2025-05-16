# OpenapiClient::Change

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **change_type** | [**ChangeType**](ChangeType.md) | Type of the change. |  |
| **item_type** | [**ItemType**](ItemType.md) | Type of the item affected from the change. |  |
| **show_id** | **String** | Id of the show affected from the change. |  |
| **show_type** | [**ShowType**](ShowType.md) | Type of the show affected from the change. |  |
| **season** | **Integer** | Number of the season affected from the change. Omitted if item_type is not seasonor episode. | [optional] |
| **episode** | **Integer** | Number of the episode affected from the change. Omitted if item_type is not episode. | [optional] |
| **service** | [**ServiceInfo**](ServiceInfo.md) | Service affected from the change. |  |
| **streaming_option_type** | [**StreamingOptionType**](StreamingOptionType.md) |  |  |
| **addon** | [**Addon**](Addon.md) | Addon info, if the streamingOptionType is addon. Otherwise omitted. | [optional] |
| **timestamp** | **Integer** | [Unix Time Stamp](https://www.unixtimestamp.com/) of the change. Past changes (new, updated, removed) will always have a timestamp. Future changes (expiring, upcoming) will have a timestamp if the exact date is known. If not, timestamp will be omitted, e.g. a show is known to be expiring soon, but the exact date is not known.  | [optional] |
| **link** | **String** | Deep link to the affected streaming option&#39;s page in the web app of the streaming service. This field is guaranteed to be populated when changeType is new, updated, expiring or removed. When changeType is upcoming, this field might be populated or null depending on if the link of the future streaming option is known.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Change.new(
  change_type: null,
  item_type: null,
  show_id: null,
  show_type: null,
  season: null,
  episode: null,
  service: null,
  streaming_option_type: null,
  addon: null,
  timestamp: null,
  link: null
)
```

