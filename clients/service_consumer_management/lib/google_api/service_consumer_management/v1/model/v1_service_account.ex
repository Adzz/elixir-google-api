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

defmodule GoogleApi.ServiceConsumerManagement.V1.Model.V1ServiceAccount do
  @moduledoc """
  A service account in the Identity and Access Management API.

  ## Attributes

  - email (String.t): The email address of the service account. Defaults to: `null`.
  - iamAccountName (String.t): The IAM resource name of the service account in the following format: projects/{PROJECT_ID}/serviceAccounts/{ACCOUNT}. Defaults to: `null`.
  - name (String.t): P4 SA resource name.  An example name would be: &#x60;services/serviceconsumermanagement.googleapis.com/projects/123/serviceAccounts/default&#x60; Defaults to: `null`.
  - tag (String.t): The P4 SA configuration tag. This must be defined in activation_grants. If not specified when creating the account, the tag is set to \&quot;default\&quot;. Defaults to: `null`.
  - uniqueId (String.t): The unique and stable id of the service account. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :email => any(),
          :iamAccountName => any(),
          :name => any(),
          :tag => any(),
          :uniqueId => any()
        }

  field(:email)
  field(:iamAccountName)
  field(:name)
  field(:tag)
  field(:uniqueId)
end

defimpl Poison.Decoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1ServiceAccount do
  def decode(value, options) do
    GoogleApi.ServiceConsumerManagement.V1.Model.V1ServiceAccount.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ServiceConsumerManagement.V1.Model.V1ServiceAccount do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
