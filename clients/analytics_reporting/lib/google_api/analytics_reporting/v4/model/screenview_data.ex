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

defmodule GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData do
  @moduledoc """


  ## Attributes

  - appName (String.t): The application name. Defaults to: `null`.
  - mobileDeviceBranding (String.t): Mobile manufacturer or branded name. Eg: \&quot;Google\&quot;, \&quot;Apple\&quot; etc. Defaults to: `null`.
  - mobileDeviceModel (String.t): Mobile device model. Eg: \&quot;Pixel\&quot;, \&quot;iPhone\&quot; etc. Defaults to: `null`.
  - screenName (String.t): The name of the screen. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :appName => any(),
          :mobileDeviceBranding => any(),
          :mobileDeviceModel => any(),
          :screenName => any()
        }

  field(:appName)
  field(:mobileDeviceBranding)
  field(:mobileDeviceModel)
  field(:screenName)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end