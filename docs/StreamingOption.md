# OpenapiClient::StreamingOption

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **service** | [**ServiceInfo**](ServiceInfo.md) |  |  |
| **type** | [**StreamingOptionType**](StreamingOptionType.md) |  |  |
| **addon** | [**Addon**](Addon.md) | Addon that the streaming option is available through. Omitted if the streaming option is not available through an addon.  | [optional] |
| **link** | **String** | Deep link to the streaming option&#39;s page in the web app of the streaming service. Unlike videoLink, this field is guaranteed to be populated.  |  |
| **video_link** | **String** | Deep link to the video associated with the streaming option. Omitted if there&#39;s no direct link to the video. Might have the same value as link.  | [optional] |
| **quality** | **String** | Maximum supported video quality of the streaming option. | [optional] |
| **audios** | [**Array&lt;Locale&gt;**](Locale.md) | Array of the available audios. |  |
| **subtitles** | [**Array&lt;Subtitle&gt;**](Subtitle.md) | Array of the available subtitles. |  |
| **price** | [**Price**](Price.md) |  | [optional] |
| **expires_soon** | **Boolean** | Whether the streaming option expires within a month. |  |
| **expires_on** | **Integer** | [Unix Time Stamp](https://www.unixtimestamp.com/) of the date that the streaming option is expiring. In other words, last day to watch.  | [optional] |
| **available_since** | **Integer** | [Unix Time Stamp](https://www.unixtimestamp.com/) of the date that this streaming option was detected.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::StreamingOption.new(
  service: null,
  type: null,
  addon: null,
  link: null,
  video_link: null,
  quality: null,
  audios: null,
  subtitles: null,
  price: null,
  expires_soon: null,
  expires_on: null,
  available_since: null
)
```

