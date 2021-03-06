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

defmodule GoogleApi.DoubleClickSearch.V2.Api.SavedColumns do
  @moduledoc """
  API calls for all endpoints tagged `SavedColumns`.
  """

  alias GoogleApi.DoubleClickSearch.V2.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieve the list of saved columns for a specified advertiser.

  ## Parameters

  - connection (GoogleApi.DoubleClickSearch.V2.Connection): Connection to server
  - agency_id (String.t): DS ID of the agency.
  - advertiser_id (String.t): DS ID of the advertiser.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.

  ## Returns

  {:ok, %GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList{}} on success
  {:error, info} on failure
  """
  @spec doubleclicksearch_saved_columns_list(
          Tesla.Env.client(),
          String.t(),
          String.t(),
          keyword()
        ) ::
          {:ok, GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList.t()}
          | {:error, Tesla.Env.t()}
  def doubleclicksearch_saved_columns_list(
        connection,
        agency_id,
        advertiser_id,
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
      :userIp => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/agency/{agencyId}/advertiser/{advertiserId}/savedcolumns", %{
        "agencyId" => URI.encode(agency_id, &URI.char_unreserved?/1),
        "advertiserId" => URI.encode(advertiser_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.DoubleClickSearch.V2.Model.SavedColumnList{}])
  end
end
