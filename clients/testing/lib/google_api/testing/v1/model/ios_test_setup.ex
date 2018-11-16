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

defmodule GoogleApi.Testing.V1.Model.IosTestSetup do
  @moduledoc """
  A description of how to set up an iOS device prior to a test.

  ## Attributes

  - networkProfile (String.t): Optional. The network traffic profile used for running the test. Available network profiles can be queried by using the NETWORK_CONFIGURATION environment type when calling TestEnvironmentDiscoveryService.GetTestEnvironmentCatalog. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :networkProfile => any()
        }

  field(:networkProfile)
end

defimpl Poison.Decoder, for: GoogleApi.Testing.V1.Model.IosTestSetup do
  def decode(value, options) do
    GoogleApi.Testing.V1.Model.IosTestSetup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Testing.V1.Model.IosTestSetup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end