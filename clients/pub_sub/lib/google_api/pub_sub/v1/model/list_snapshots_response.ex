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

defmodule GoogleApi.PubSub.V1.Model.ListSnapshotsResponse do
  @moduledoc """
  Response for the &#x60;ListSnapshots&#x60; method.

  ## Attributes

  - nextPageToken (String.t): If not empty, indicates that there may be more snapshot that match the request; this value should be passed in a new &#x60;ListSnapshotsRequest&#x60;. Defaults to: `null`.
  - snapshots ([Snapshot]): The resulting snapshots. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => any(),
          :snapshots => list(GoogleApi.PubSub.V1.Model.Snapshot.t())
        }

  field(:nextPageToken)
  field(:snapshots, as: GoogleApi.PubSub.V1.Model.Snapshot, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.ListSnapshotsResponse do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.ListSnapshotsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.ListSnapshotsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
