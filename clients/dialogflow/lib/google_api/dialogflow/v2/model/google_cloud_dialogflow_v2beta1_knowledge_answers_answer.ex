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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  @moduledoc """
  An answer from Knowledge Connector.

  ## Attributes

  - answer (String.t): The piece of text from the &#x60;source&#x60; knowledge base document that answers this conversational query. Defaults to: `null`.
  - faqQuestion (String.t): The corresponding FAQ question if the answer was extracted from a FAQ Document, empty otherwise. Defaults to: `null`.
  - matchConfidence (float()): The system&#39;s confidence score that this Knowledge answer is a good match for this conversational query. The range is from 0.0 (completely uncertain) to 1.0 (completely certain). Note: The confidence score is likely to vary somewhat (possibly even for identical requests), as the underlying model is under constant improvement. It may be deprecated in the future. We recommend using &#x60;match_confidence_level&#x60; which should be generally more stable. Defaults to: `null`.
  - matchConfidenceLevel (String.t): The system&#39;s confidence level that this knowledge answer is a good match for this conversational query. NOTE: The confidence level for a given &#x60;&lt;query, answer&gt;&#x60; pair may change without notice, as it depends on models that are constantly being improved. However, it will change less frequently than the confidence score below, and should be preferred for referencing the quality of an answer. Defaults to: `null`.
    - Enum - one of [MATCH_CONFIDENCE_LEVEL_UNSPECIFIED, LOW, MEDIUM, HIGH]
  - source (String.t): Indicates which Knowledge Document this answer was extracted from. Format: &#x60;projects/&lt;Project ID&gt;/knowledgeBases/&lt;Knowledge Base ID&gt;/documents/&lt;Document ID&gt;&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :answer => any(),
          :faqQuestion => any(),
          :matchConfidence => any(),
          :matchConfidenceLevel => any(),
          :source => any()
        }

  field(:answer)
  field(:faqQuestion)
  field(:matchConfidence)
  field(:matchConfidenceLevel)
  field(:source)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowV2beta1KnowledgeAnswersAnswer do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
