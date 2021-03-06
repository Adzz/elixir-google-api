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

defmodule GoogleApi.Games.V1.Api.Snapshots do
  @moduledoc """
  API calls for all endpoints tagged `Snapshots`.
  """

  alias GoogleApi.Games.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Retrieves the metadata for a given snapshot ID.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - snapshot_id (String.t): The ID of the snapshot.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :language (String.t): The preferred language to use for strings returned by this method.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.Snapshot{}} on success
  {:error, info} on failure
  """
  @spec games_snapshots_get(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.Snapshot.t()} | {:error, Tesla.Env.t()}
  def games_snapshots_get(connection, snapshot_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/snapshots/{snapshotId}", %{
        "snapshotId" => URI.encode(snapshot_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.Snapshot{}])
  end

  @doc """
  Retrieves a list of snapshots created by your application for the player corresponding to the player ID.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - player_id (String.t): A player ID. A value of me may be used in place of the authenticated player&#39;s ID.
  - optional_params (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :language (String.t): The preferred language to use for strings returned by this method.
    - :maxResults (integer()): The maximum number of snapshot resources to return in the response, used for paging. For any response, the actual number of snapshot resources returned may be less than the specified maxResults.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.SnapshotListResponse{}} on success
  {:error, info} on failure
  """
  @spec games_snapshots_list(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.SnapshotListResponse.t()} | {:error, Tesla.Env.t()}
  def games_snapshots_list(connection, player_id, optional_params \\ [], opts \\ []) do
    optional_params_config = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/players/{playerId}/snapshots", %{
        "playerId" => URI.encode(player_id, &URI.char_unreserved?/1)
      })
      |> Request.add_optional_params(optional_params_config, optional_params)

    connection
    |> Connection.execute(request)
    |> Response.decode(opts ++ [struct: %GoogleApi.Games.V1.Model.SnapshotListResponse{}])
  end
end
