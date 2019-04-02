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

defmodule GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails do
  @moduledoc """


  ## Attributes

  - amountDisplayString (String.t): A rendered string that displays the fund amount and currency to the user. Defaults to: `null`.
  - amountMicros (String.t): The amount purchased by the user, in micros (1,750,000 micros &#x3D; 1.75). Defaults to: `null`.
  - currency (String.t): The currency in which the purchase was made. Defaults to: `null`.
  - superStickerMetadata (SuperStickerMetadata): Information about the Super Sticker. Defaults to: `null`.
  - tier (integer()): The tier in which the amount belongs. Lower amounts belong to lower tiers. The lowest tier is 1. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :amountDisplayString => any(),
          :amountMicros => any(),
          :currency => any(),
          :superStickerMetadata => GoogleApi.YouTube.V3.Model.SuperStickerMetadata.t(),
          :tier => any()
        }

  field(:amountDisplayString)
  field(:amountMicros)
  field(:currency)
  field(:superStickerMetadata, as: GoogleApi.YouTube.V3.Model.SuperStickerMetadata)
  field(:tier)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatSuperStickerDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end