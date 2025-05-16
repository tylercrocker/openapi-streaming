# OpenapiClient::Show

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **item_type** | **String** | Type of the item. Always show. |  |
| **show_type** | [**ShowType**](ShowType.md) | Type of the show. Based on the type, some properties might be omitted. |  |
| **id** | **String** | Id of the show. |  |
| **imdb_id** | **String** | [IMDb](https://www.imdb.com/) id of the show. |  |
| **tmdb_id** | **String** | [TMDB](https://www.themoviedb.org/) id of the show. |  |
| **title** | **String** | Title of the show. |  |
| **overview** | **String** | A brief overview of the overall plot of the show. |  |
| **release_year** | **Integer** | The year that the movie was released. | [optional] |
| **first_air_year** | **Integer** | The first year that the series aired. | [optional] |
| **last_air_year** | **Integer** | The last year that the series aired. | [optional] |
| **original_title** | **String** | Original title of the show. |  |
| **genres** | [**Array&lt;Genre&gt;**](Genre.md) | Array of the genres of the show. |  |
| **directors** | **Array&lt;String&gt;** | Array of the directors of the movie. | [optional] |
| **creators** | **Array&lt;String&gt;** | Array of the creators of the series. | [optional] |
| **cast** | **Array&lt;String&gt;** | Array of the cast of the show. |  |
| **rating** | **Integer** | Rating of the show. This is calculated by taking the average of ratings found online from multiple sources. |  |
| **season_count** | **Integer** | Number of seasons that are either aired or announced for a series. | [optional] |
| **episode_count** | **Integer** | Number of episodes that are either aired or announced for a series. | [optional] |
| **runtime** | **Integer** | Runtime of the movie in minutes. | [optional] |
| **image_set** | [**ShowImageSet**](ShowImageSet.md) | Image set of the show. |  |
| **streaming_options** | **Hash&lt;String, Array&lt;StreamingOption&gt;&gt;** | Map of the streaming options by the country code. |  |
| **seasons** | [**Array&lt;Season&gt;**](Season.md) | Array of the seasons belong to the series. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Show.new(
  item_type: null,
  show_type: null,
  id: null,
  imdb_id: null,
  tmdb_id: null,
  title: null,
  overview: null,
  release_year: null,
  first_air_year: null,
  last_air_year: null,
  original_title: null,
  genres: null,
  directors: null,
  creators: null,
  cast: null,
  rating: null,
  season_count: null,
  episode_count: null,
  runtime: null,
  image_set: null,
  streaming_options: null,
  seasons: null
)
```

