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

defmodule GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction do
  @moduledoc """
  HTTPGetAction describes an action based on HTTP Get requests.

  ## Attributes

  - host (String.t): Host name to connect to, defaults to the pod IP. You probably want to set \&quot;Host\&quot; in httpHeaders instead. +optional Defaults to: `null`.
  - httpHeaders ([HttpHeader]): Custom headers to set in the request. HTTP allows repeated headers. +optional Defaults to: `null`.
  - path (String.t): Path to access on the HTTP server. +optional Defaults to: `null`.
  - port (IntOrString): Name or number of the port to access on the container. Number must be in the range 1 to 65535. Name must be an IANA_SVC_NAME. Defaults to: `null`.
  - scheme (String.t): Scheme to use for connecting to the host. Defaults to HTTP. +optional Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :host => any(),
          :httpHeaders => list(GoogleApi.CloudRun.V1alpha1.Model.HttpHeader.t()),
          :path => any(),
          :port => GoogleApi.CloudRun.V1alpha1.Model.IntOrString.t(),
          :scheme => any()
        }

  field(:host)
  field(:httpHeaders, as: GoogleApi.CloudRun.V1alpha1.Model.HttpHeader, type: :list)
  field(:path)
  field(:port, as: GoogleApi.CloudRun.V1alpha1.Model.IntOrString)
  field(:scheme)
end

defimpl Poison.Decoder, for: GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction do
  def decode(value, options) do
    GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudRun.V1alpha1.Model.HttpGetAction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
