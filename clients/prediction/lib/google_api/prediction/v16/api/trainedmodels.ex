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

defmodule GoogleApi.Prediction.V16.Api.Trainedmodels do
  @moduledoc """
  API calls for all endpoints tagged `Trainedmodels`.
  """

  alias GoogleApi.Prediction.V16.Connection
  import GoogleApi.Prediction.V16.RequestBuilder


  @doc """
  Get analysis of the model and the data the model was trained on.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - id (String): The unique name for the predictive model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.Analyze{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_analyze(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Prediction.V16.Model.Analyze.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_analyze(connection, project, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/{project}/trainedmodels/{id}/analyze", %{
         "project" => URI.encode_www_form(project),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Prediction.V16.Model.Analyze{})
  end

  @doc """
  Delete a trained model.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - id (String): The unique name for the predictive model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_delete(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, nil} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_delete(connection, project, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:delete)
    |> url("/{project}/trainedmodels/{id}", %{
         "project" => URI.encode_www_form(project),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Check training status of your model.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - id (String): The unique name for the predictive model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.Insert2{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_get(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Prediction.V16.Model.Insert2.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_get(connection, project, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query
    }
    %{}
    |> method(:get)
    |> url("/{project}/trainedmodels/{id}", %{
         "project" => URI.encode_www_form(project),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Prediction.V16.Model.Insert2{})
  end

  @doc """
  Train a Prediction API model.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Insert): 

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.Insert2{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_insert(Tesla.Env.client, String.t, keyword()) :: {:ok, GoogleApi.Prediction.V16.Model.Insert2.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_insert(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/{project}/trainedmodels", %{
         "project" => URI.encode_www_form(project)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Prediction.V16.Model.Insert2{})
  end

  @doc """
  List available models.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :max_results (Integer): Maximum number of results to return.
    - :page_token (String): Pagination token.

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.List{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_list(Tesla.Env.client, String.t, keyword()) :: {:ok, List.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_list(connection, project, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"maxResults" => :query,
      :"pageToken" => :query
    }
    %{}
    |> method(:get)
    |> url("/{project}/trainedmodels/list", %{
         "project" => URI.encode_www_form(project)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(false)
  end

  @doc """
  Submit model id and request a prediction.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - id (String): The unique name for the predictive model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Input): 

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.Output{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_predict(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Prediction.V16.Model.Output.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_predict(connection, project, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:post)
    |> url("/{project}/trainedmodels/{id}/predict", %{
         "project" => URI.encode_www_form(project),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Prediction.V16.Model.Output{})
  end

  @doc """
  Add new data to a trained model.

  ## Parameters

  - connection (GoogleApi.Prediction.V16.Connection): Connection to server
  - project (String): The project associated with the model.
  - id (String): The unique name for the predictive model.
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String): Data format for the response.
    - :fields (String): Selector specifying which fields to include in a partial response.
    - :key (String): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String): OAuth 2.0 token for the current user.
    - :pretty_print (Boolean): Returns response with indentations and line breaks.
    - :quota_user (String): Available to use for quota purposes for server-side applications. Can be any arbitrary string assigned to a user, but should not exceed 40 characters. Overrides userIp if both are provided.
    - :user_ip (String): IP address of the site where the request originates. Use this if you want to enforce per-user limits.
    - :body (Update): 

  ## Returns

  {:ok, %GoogleApi.Prediction.V16.Model.Insert2{}} on success
  {:error, info} on failure
  """
  @spec prediction_trainedmodels_update(Tesla.Env.client, String.t, String.t, keyword()) :: {:ok, GoogleApi.Prediction.V16.Model.Insert2.t} | {:error, Tesla.Env.t}
  def prediction_trainedmodels_update(connection, project, id, opts \\ []) do
    optional_params = %{
      :"alt" => :query,
      :"fields" => :query,
      :"key" => :query,
      :"oauth_token" => :query,
      :"prettyPrint" => :query,
      :"quotaUser" => :query,
      :"userIp" => :query,
      :"body" => :body
    }
    %{}
    |> method(:put)
    |> url("/{project}/trainedmodels/{id}", %{
         "project" => URI.encode_www_form(project),
         "id" => URI.encode_www_form(id)
       })
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> decode(%GoogleApi.Prediction.V16.Model.Insert2{})
  end
end
