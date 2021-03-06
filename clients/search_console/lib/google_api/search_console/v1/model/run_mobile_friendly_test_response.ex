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

defmodule GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  @moduledoc """
  Mobile-friendly test response, including mobile-friendly issues and resource issues.

  ## Attributes

  - mobileFriendliness (String.t): Test verdict, whether the page is mobile friendly or not. Defaults to: `null`.
    - Enum - one of [MOBILE_FRIENDLY_TEST_RESULT_UNSPECIFIED, MOBILE_FRIENDLY, NOT_MOBILE_FRIENDLY]
  - mobileFriendlyIssues ([MobileFriendlyIssue]): List of mobile-usability issues. Defaults to: `null`.
  - resourceIssues ([ResourceIssue]): Information about embedded resources issues. Defaults to: `null`.
  - screenshot (Image): Screenshot of the requested URL. Defaults to: `null`.
  - testStatus (TestStatus): Final state of the test, can be either complete or an error. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mobileFriendliness => any(),
          :mobileFriendlyIssues => list(GoogleApi.SearchConsole.V1.Model.MobileFriendlyIssue.t()),
          :resourceIssues => list(GoogleApi.SearchConsole.V1.Model.ResourceIssue.t()),
          :screenshot => GoogleApi.SearchConsole.V1.Model.Image.t(),
          :testStatus => GoogleApi.SearchConsole.V1.Model.TestStatus.t()
        }

  field(:mobileFriendliness)

  field(
    :mobileFriendlyIssues,
    as: GoogleApi.SearchConsole.V1.Model.MobileFriendlyIssue,
    type: :list
  )

  field(:resourceIssues, as: GoogleApi.SearchConsole.V1.Model.ResourceIssue, type: :list)
  field(:screenshot, as: GoogleApi.SearchConsole.V1.Model.Image)
  field(:testStatus, as: GoogleApi.SearchConsole.V1.Model.TestStatus)
end

defimpl Poison.Decoder, for: GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  def decode(value, options) do
    GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SearchConsole.V1.Model.RunMobileFriendlyTestResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
