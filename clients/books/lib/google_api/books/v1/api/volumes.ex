# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Books.V1.Api.Volumes do
  @moduledoc """
  API calls for all endpoints tagged `Volumes`.
  """

  alias GoogleApi.Books.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Return a list of associated books.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - volume_id (String.t): ID of the source volume.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :association (String.t): Association type.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :maxAllowedMaturityRating (String.t): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_associated_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_volumes_associated_list(connection, volume_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :association => :query,
      :locale => :query,
      :maxAllowedMaturityRating => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes/{volumeId}/associated", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Gets volume information for a single volume.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - volume_id (String.t): ID of volume to retrieve.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :country (String.t): ISO-3166-1 code to override the IP-based location.
    - :includeNonComicsSeries (boolean()): Set to true to include non-comics series. Defaults to false.
    - :partner (String.t): Brand results for partner ID.
    - :projection (String.t): Restrict information returned to a set of selected fields.
    - :source (String.t): String to identify the originator of this request.
    - :user_library_consistent_read (boolean()): 

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volume{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volume.t()} | {:error, Tesla.Env.t()}
  def books_volumes_get(connection, volume_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :country => :query,
      :includeNonComicsSeries => :query,
      :partner => :query,
      :projection => :query,
      :source => :query,
      :user_library_consistent_read => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes/{volumeId}", %{
        "volumeId" => URI.encode(volume_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volume{}])
  end

  @doc """
  Performs a book search.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - q (String.t): Full-text search query string.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :download (String.t): Restrict to volumes by download availability.
    - :filter (String.t): Filter search results.
    - :langRestrict (String.t): Restrict results to books with this language code.
    - :libraryRestrict (String.t): Restrict search to this user&#39;s library.
    - :maxAllowedMaturityRating (String.t): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :maxResults (integer()): Maximum number of results to return.
    - :orderBy (String.t): Sort search results.
    - :partner (String.t): Restrict and brand results for partner ID.
    - :printType (String.t): Restrict to books or magazines.
    - :projection (String.t): Restrict information returned to a set of selected fields.
    - :showPreorders (boolean()): Set to true to show books available for preorder. Defaults to false.
    - :source (String.t): String to identify the originator of this request.
    - :startIndex (integer()): Index of the first result to return (starts at 0)

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_volumes_list(connection, q, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :download => :query,
      :filter => :query,
      :langRestrict => :query,
      :libraryRestrict => :query,
      :maxAllowedMaturityRating => :query,
      :maxResults => :query,
      :orderBy => :query,
      :partner => :query,
      :printType => :query,
      :projection => :query,
      :showPreorders => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes")
      |> Request.add_param(:query, :q, q)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Return a list of books in My Library.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :acquireMethod ([String.t]): How the book was acquired
    - :country (String.t): ISO-3166-1 code to override the IP-based location.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex:&#39;en_US&#39;. Used for generating recommendations.
    - :maxResults (integer()): Maximum number of results to return.
    - :processingState ([String.t]): The processing state of the user uploaded volumes to be returned. Applicable only if the UPLOADED is specified in the acquireMethod.
    - :source (String.t): String to identify the originator of this request.
    - :startIndex (integer()): Index of the first result to return (starts at 0)

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_mybooks_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_volumes_mybooks_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :acquireMethod => :query,
      :country => :query,
      :locale => :query,
      :maxResults => :query,
      :processingState => :query,
      :source => :query,
      :startIndex => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes/mybooks")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Return a list of recommended books for the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :maxAllowedMaturityRating (String.t): The maximum allowed maturity rating of returned recommendations. Books with a higher maturity rating are filtered out.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_recommended_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_volumes_recommended_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :locale => :query,
      :maxAllowedMaturityRating => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes/recommended")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end

  @doc """
  Rate a recommended book for the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - rating (String.t): Rating to be given to the volume.
  - volume_id (String.t): ID of the source volume.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :source (String.t): String to identify the originator of this request.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_recommended_rate(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse.t()}
          | {:error, Tesla.Env.t()}
  def books_volumes_recommended_rate(
        connection,
        rating,
        volume_id,
        optional_params \\ [],
        opts \\ []
      ) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :locale => :query,
      :source => :query
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/volumes/recommended/rate")
      |> Request.add_param(:query, :rating, rating)
      |> Request.add_param(:query, :volumeId, volume_id)
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Books.V1.Model.BooksVolumesRecommendedRateResponse{}]
    )
  end

  @doc """
  Return a list of books uploaded by the current user.

  ## Parameters

  - connection (GoogleApi.Books.V1.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :locale (String.t): ISO-639-1 language and ISO-3166-1 country code. Ex: &#39;en_US&#39;. Used for generating recommendations.
    - :maxResults (integer()): Maximum number of results to return.
    - :processingState ([String.t]): The processing state of the user uploaded volumes to be returned.
    - :source (String.t): String to identify the originator of this request.
    - :startIndex (integer()): Index of the first result to return (starts at 0)
    - :volumeId ([String.t]): The ids of the volumes to be returned. If not specified all that match the processingState are returned.

  ## Returns

  {:ok, %GoogleApi.Books.V1.Model.Volumes{}} on success
  {:error, info} on failure
  """
  @spec books_volumes_useruploaded_list(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Books.V1.Model.Volumes.t()} | {:error, Tesla.Env.t()}
  def books_volumes_useruploaded_list(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :locale => :query,
      :maxResults => :query,
      :processingState => :query,
      :source => :query,
      :startIndex => :query,
      :volumeId => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/volumes/useruploaded")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Books.V1.Model.Volumes{}])
  end
end
