=begin
#Streaming Availability API

#Streaming Availability API allows getting streaming availability information of movies and series; and querying the list of available shows on streaming services such as Netflix, Disney+, Apple TV, Max and Hulu across 60 countries!

The version of the OpenAPI document: 4.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.13.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/addon'
require 'openapi_client/models/change'
require 'openapi_client/models/change_type'
require 'openapi_client/models/changes_result'
require 'openapi_client/models/country'
require 'openapi_client/models/episode'
require 'openapi_client/models/error'
require 'openapi_client/models/genre'
require 'openapi_client/models/horizontal_image'
require 'openapi_client/models/item_type'
require 'openapi_client/models/locale'
require 'openapi_client/models/order_direction'
require 'openapi_client/models/price'
require 'openapi_client/models/search_result'
require 'openapi_client/models/season'
require 'openapi_client/models/service'
require 'openapi_client/models/service_image_set'
require 'openapi_client/models/service_info'
require 'openapi_client/models/show'
require 'openapi_client/models/show_image_set'
require 'openapi_client/models/show_type'
require 'openapi_client/models/streaming_option'
require 'openapi_client/models/streaming_option_type'
require 'openapi_client/models/streaming_option_types'
require 'openapi_client/models/subtitle'
require 'openapi_client/models/vertical_image'

# APIs
require 'openapi_client/api/changes_api'
require 'openapi_client/api/countries_api'
require 'openapi_client/api/genres_api'
require 'openapi_client/api/shows_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
