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

defmodule GoogleApi.Compute.V1.Model.NodeGroup do
  @moduledoc """
  A NodeGroup resource.

  ## Attributes

  - creationTimestamp (String.t): [Output Only] Creation timestamp in RFC3339 text format. Defaults to: `null`.
  - description (String.t): An optional description of this resource. Provide this property when you create the resource. Defaults to: `null`.
  - id (String.t): [Output Only] The unique identifier for the resource. This identifier is defined by the server. Defaults to: `null`.
  - kind (String.t): [Output Only] The type of the resource. Always compute#nodeGroup for node group. Defaults to: `null`.
  - name (String.t): The name of the resource, provided by the client when initially creating the resource. The resource name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression &#x60;[a-z]([-a-z0-9]*[a-z0-9])?&#x60; which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash. Defaults to: `null`.
  - nodeTemplate (String.t): The URL of the node template to which this node group belongs. Defaults to: `null`.
  - selfLink (String.t): [Output Only] Server-defined URL for the resource. Defaults to: `null`.
  - size (integer()): [Output Only] The total number of nodes in the node group. Defaults to: `null`.
  - status (String.t):  Defaults to: `null`.
    - Enum - one of [CREATING, DELETING, INVALID, READY]
  - zone (String.t): [Output Only] The name of the zone where the node group resides, such as us-central1-a. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :creationTimestamp => any(),
          :description => any(),
          :id => any(),
          :kind => any(),
          :name => any(),
          :nodeTemplate => any(),
          :selfLink => any(),
          :size => any(),
          :status => any(),
          :zone => any()
        }

  field(:creationTimestamp)
  field(:description)
  field(:id)
  field(:kind)
  field(:name)
  field(:nodeTemplate)
  field(:selfLink)
  field(:size)
  field(:status)
  field(:zone)
end

defimpl Poison.Decoder, for: GoogleApi.Compute.V1.Model.NodeGroup do
  def decode(value, options) do
    GoogleApi.Compute.V1.Model.NodeGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Compute.V1.Model.NodeGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end