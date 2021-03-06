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

defmodule GoogleApi.TagManager.V2.Model.Trigger do
  @moduledoc """
  Represents a Google Tag Manager Trigger

  ## Attributes

  - accountId (String.t): GTM Account ID. Defaults to: `null`.
  - autoEventFilter ([Condition]): Used in the case of auto event tracking. Defaults to: `null`.
  - checkValidation (Parameter): Whether or not we should only fire tags if the form submit or link click event is not cancelled by some other event handler (e.g. because of validation). Only valid for Form Submission and Link Click triggers. Defaults to: `null`.
  - containerId (String.t): GTM Container ID. Defaults to: `null`.
  - continuousTimeMinMilliseconds (Parameter): A visibility trigger minimum continuous visible time (in milliseconds). Only valid for AMP Visibility trigger. Defaults to: `null`.
  - customEventFilter ([Condition]): Used in the case of custom event, which is fired iff all Conditions are true. Defaults to: `null`.
  - eventName (Parameter): Name of the GTM event that is fired. Only valid for Timer triggers. Defaults to: `null`.
  - filter ([Condition]): The trigger will only fire iff all Conditions are true. Defaults to: `null`.
  - fingerprint (String.t): The fingerprint of the GTM Trigger as computed at storage time. This value is recomputed whenever the trigger is modified. Defaults to: `null`.
  - horizontalScrollPercentageList (Parameter): List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled horizontally. Only valid for AMP scroll triggers. Defaults to: `null`.
  - interval (Parameter): Time between triggering recurring Timer Events (in milliseconds). Only valid for Timer triggers. Defaults to: `null`.
  - intervalSeconds (Parameter): Time between Timer Events to fire (in seconds). Only valid for AMP Timer trigger. Defaults to: `null`.
  - limit (Parameter): Limit of the number of GTM events this Timer Trigger will fire. If no limit is set, we will continue to fire GTM events until the user leaves the page. Only valid for Timer triggers. Defaults to: `null`.
  - maxTimerLengthSeconds (Parameter): Max time to fire Timer Events (in seconds). Only valid for AMP Timer trigger. Defaults to: `null`.
  - name (String.t): Trigger display name. Defaults to: `null`.
  - notes (String.t): User notes on how to apply this trigger in the container. Defaults to: `null`.
  - parameter ([Parameter]): Additional parameters. Defaults to: `null`.
  - parentFolderId (String.t): Parent folder id. Defaults to: `null`.
  - path (String.t): GTM Trigger&#39;s API relative path. Defaults to: `null`.
  - selector (Parameter): A click trigger CSS selector (i.e. \&quot;a\&quot;, \&quot;button\&quot; etc.). Only valid for AMP Click trigger. Defaults to: `null`.
  - tagManagerUrl (String.t): Auto generated link to the tag manager UI Defaults to: `null`.
  - totalTimeMinMilliseconds (Parameter): A visibility trigger minimum total visible time (in milliseconds). Only valid for AMP Visibility trigger. Defaults to: `null`.
  - triggerId (String.t): The Trigger ID uniquely identifies the GTM Trigger. Defaults to: `null`.
  - type (String.t): Defines the data layer event that causes this trigger. Defaults to: `null`.
    - Enum - one of [always, ampClick, ampScroll, ampTimer, ampVisibility, click, customEvent, domReady, elementVisibility, eventTypeUnspecified, firebaseAppException, firebaseAppUpdate, firebaseCampaign, firebaseFirstOpen, firebaseInAppPurchase, firebaseNotificationDismiss, firebaseNotificationForeground, firebaseNotificationOpen, firebaseNotificationReceive, firebaseOsUpdate, firebaseSessionStart, firebaseUserEngagement, formSubmission, historyChange, jsError, linkClick, pageview, scrollDepth, timer, triggerGroup, windowLoaded, youTubeVideo]
  - uniqueTriggerId (Parameter): Globally unique id of the trigger that auto-generates this (a Form Submit, Link Click or Timer listener) if any. Used to make incompatible auto-events work together with trigger filtering based on trigger ids. This value is populated during output generation since the tags implied by triggers don&#39;t exist until then. Only valid for Form Submit, Link Click and Timer triggers. Defaults to: `null`.
  - verticalScrollPercentageList (Parameter): List of integer percentage values for scroll triggers. The trigger will fire when each percentage is reached when the view is scrolled vertically. Only valid for AMP scroll triggers. Defaults to: `null`.
  - visibilitySelector (Parameter): A visibility trigger CSS selector (i.e. \&quot;#id\&quot;). Only valid for AMP Visibility trigger. Defaults to: `null`.
  - visiblePercentageMax (Parameter): A visibility trigger maximum percent visibility. Only valid for AMP Visibility trigger. Defaults to: `null`.
  - visiblePercentageMin (Parameter): A visibility trigger minimum percent visibility. Only valid for AMP Visibility trigger. Defaults to: `null`.
  - waitForTags (Parameter): Whether or not we should delay the form submissions or link opening until all of the tags have fired (by preventing the default action and later simulating the default action). Only valid for Form Submission and Link Click triggers. Defaults to: `null`.
  - waitForTagsTimeout (Parameter): How long to wait (in milliseconds) for tags to fire when &#39;waits_for_tags&#39; above evaluates to true. Only valid for Form Submission and Link Click triggers. Defaults to: `null`.
  - workspaceId (String.t): GTM Workspace ID. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => any(),
          :autoEventFilter => list(GoogleApi.TagManager.V2.Model.Condition.t()),
          :checkValidation => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :containerId => any(),
          :continuousTimeMinMilliseconds => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :customEventFilter => list(GoogleApi.TagManager.V2.Model.Condition.t()),
          :eventName => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :filter => list(GoogleApi.TagManager.V2.Model.Condition.t()),
          :fingerprint => any(),
          :horizontalScrollPercentageList => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :interval => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :intervalSeconds => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :limit => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :maxTimerLengthSeconds => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :name => any(),
          :notes => any(),
          :parameter => list(GoogleApi.TagManager.V2.Model.Parameter.t()),
          :parentFolderId => any(),
          :path => any(),
          :selector => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :tagManagerUrl => any(),
          :totalTimeMinMilliseconds => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :triggerId => any(),
          :type => any(),
          :uniqueTriggerId => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :verticalScrollPercentageList => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :visibilitySelector => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :visiblePercentageMax => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :visiblePercentageMin => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :waitForTags => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :waitForTagsTimeout => GoogleApi.TagManager.V2.Model.Parameter.t(),
          :workspaceId => any()
        }

  field(:accountId)
  field(:autoEventFilter, as: GoogleApi.TagManager.V2.Model.Condition, type: :list)
  field(:checkValidation, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:containerId)
  field(:continuousTimeMinMilliseconds, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:customEventFilter, as: GoogleApi.TagManager.V2.Model.Condition, type: :list)
  field(:eventName, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:filter, as: GoogleApi.TagManager.V2.Model.Condition, type: :list)
  field(:fingerprint)
  field(:horizontalScrollPercentageList, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:interval, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:intervalSeconds, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:limit, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:maxTimerLengthSeconds, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:name)
  field(:notes)
  field(:parameter, as: GoogleApi.TagManager.V2.Model.Parameter, type: :list)
  field(:parentFolderId)
  field(:path)
  field(:selector, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:tagManagerUrl)
  field(:totalTimeMinMilliseconds, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:triggerId)
  field(:type)
  field(:uniqueTriggerId, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:verticalScrollPercentageList, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:visibilitySelector, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:visiblePercentageMax, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:visiblePercentageMin, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:waitForTags, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:waitForTagsTimeout, as: GoogleApi.TagManager.V2.Model.Parameter)
  field(:workspaceId)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.Trigger do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.Trigger.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.Trigger do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
