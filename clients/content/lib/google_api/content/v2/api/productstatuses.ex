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

defmodule GoogleApi.Content.V2.Api.Productstatuses do
  @moduledoc """
  API calls for all endpoints tagged `Productstatuses`.
  """

  alias GoogleApi.Content.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Gets the statuses of multiple products in a single request.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :includeAttributes (boolean()): Flag to include full product data in the results of this request. The default value is false.
    - :body (ProductstatusesCustomBatchRequest): 

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.ProductstatusesCustomBatchResponse{}} on success
  {:error, info} on failure
  """
  @spec content_productstatuses_custombatch(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.ProductstatusesCustomBatchResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_productstatuses_custombatch(connection, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :includeAttributes => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/productstatuses/batch")
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.ProductstatusesCustomBatchResponse{}]
    )
  end

  @doc """
  Gets the status of a product from your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that contains the product. This account cannot be a multi-client account.
  - product_id (String.t): The REST ID of the product.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :destinations ([String.t]): If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    - :includeAttributes (boolean()): Flag to include full product data in the result of this get request. The default value is false.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.ProductStatus{}} on success
  {:error, info} on failure
  """
  @spec content_productstatuses_get(Tesla.Env.client(), String.t(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.ProductStatus.t()} | {:error, Tesla.Env.t()}
  def content_productstatuses_get(
        connection,
        merchant_id,
        product_id,
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
      :destinations => :query,
      :includeAttributes => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/productstatuses/{productId}", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1),
        "productId" => URI.encode(product_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Content.V2.Model.ProductStatus{}])
  end

  @doc """
  Lists the statuses of the products in your Merchant Center account.

  ## Parameters

  - connection (GoogleApi.Content.V2.Connection): Connection to server
  - merchant_id (String.t): The ID of the account that contains the products. This account cannot be a multi-client account.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :destinations ([String.t]): If set, only issues for the specified destinations are returned, otherwise only issues for the Shopping destination.
    - :includeAttributes (boolean()): Flag to include full product data in the results of the list request. The default value is false.
    - :includeInvalidInsertedItems (boolean()): Flag to include the invalid inserted items in the result of the list request. By default the invalid items are not shown (the default value is false).
    - :maxResults (integer()): The maximum number of product statuses to return in the response, used for paging.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Content.V2.Model.ProductstatusesListResponse{}} on success
  {:error, info} on failure
  """
  @spec content_productstatuses_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Content.V2.Model.ProductstatusesListResponse.t()}
          | {:error, Tesla.Env.t()}
  def content_productstatuses_list(connection, merchant_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :destinations => :query,
      :includeAttributes => :query,
      :includeInvalidInsertedItems => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/{merchantId}/productstatuses", %{
        "merchantId" => URI.encode(merchant_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(
      opts ++ [struct: %GoogleApi.Content.V2.Model.ProductstatusesListResponse{}]
    )
  end
end
