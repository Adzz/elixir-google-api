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

defmodule GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions do
  @moduledoc """
  Options customizing the data transfer schedule.

  ## Attributes

  - disableAutoScheduling (boolean()): If true, automatic scheduling of data transfer runs for this configuration will be disabled. The runs can be started on ad-hoc basis using StartManualTransferRuns API. When automatic scheduling is disabled, the TransferConfig.schedule field will be ignored. Defaults to: `null`.
  - endTime (DateTime.t): Defines time to stop scheduling transfer runs. A transfer run cannot be scheduled at or after the end time. The end time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option. Defaults to: `null`.
  - startTime (DateTime.t): Specifies time to start scheduling transfer runs. The first run will be scheduled at or after the start time according to a recurrence pattern defined in the schedule string. The start time can be changed at any moment. The time when a data transfer can be trigerred manually is not limited by this option. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableAutoScheduling => any(),
          :endTime => DateTime.t(),
          :startTime => DateTime.t()
        }

  field(:disableAutoScheduling)
  field(:endTime, as: DateTime)
  field(:startTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions do
  def decode(value, options) do
    GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQueryDataTransfer.V1.Model.ScheduleOptions do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
