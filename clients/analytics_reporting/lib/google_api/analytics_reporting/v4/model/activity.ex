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

defmodule GoogleApi.AnalyticsReporting.V4.Model.Activity do
  @moduledoc """
  An Activity represents data for an activity of a user. Note that an Activity is different from a hit. A hit might result in multiple Activity&#39;s. For example, if a hit includes a transaction and a goal completion, there will be two Activity protos for this hit, one for ECOMMERCE and one for GOAL. Conversely, multiple hits can also construct one Activity. In classic e-commerce, data for one transaction might be sent through multiple hits. These hits will be merged into one ECOMMERCE Activity.

  ## Attributes

  - activityTime (DateTime.t): Timestamp of the activity. Defaults to: `null`.
  - activityType (String.t): Type of this activity. Defaults to: `null`.
    - Enum - one of [ACTIVITY_TYPE_UNSPECIFIED, PAGEVIEW, SCREENVIEW, GOAL, ECOMMERCE, EVENT]
  - appview (ScreenviewData): This will be set if &#x60;activity_type&#x60; equals &#x60;SCREEN_VIEW&#x60;. Defaults to: `null`.
  - campaign (String.t): For manual campaign tracking, it is the value of the utm_campaign campaign tracking parameter. For AdWords autotagging, it is the name(s) of the online ad campaign(s) you use for the property. If you use neither, its value is (not set). Defaults to: `null`.
  - channelGrouping (String.t): The Channel Group associated with an end user&#39;s session for this View (defined by the View&#39;s Channel Groupings). Defaults to: `null`.
  - customDimension ([CustomDimension]): A list of all custom dimensions associated with this activity. Defaults to: `null`.
  - ecommerce (EcommerceData): This will be set if &#x60;activity_type&#x60; equals &#x60;ECOMMERCE&#x60;. Defaults to: `null`.
  - event (EventData): This field contains all the details pertaining to an event and will be set if &#x60;activity_type&#x60; equals &#x60;EVENT&#x60;. Defaults to: `null`.
  - goals (GoalSetData): This field contains a list of all the goals that were reached in this activity when &#x60;activity_type&#x60; equals &#x60;GOAL&#x60;. Defaults to: `null`.
  - hostname (String.t): The hostname from which the tracking request was made. Defaults to: `null`.
  - keyword (String.t): For manual campaign tracking, it is the value of the utm_term campaign tracking parameter. For AdWords traffic, it contains the best matching targeting criteria. For the display network, where multiple targeting criteria could have caused the ad to show up, it returns the best matching targeting criteria as selected by Ads. This could be display_keyword, site placement, boomuserlist, user_interest, age, or gender. Otherwise its value is (not set). Defaults to: `null`.
  - landingPagePath (String.t): The first page in users&#39; sessions, or the landing page. Defaults to: `null`.
  - medium (String.t): The type of referrals. For manual campaign tracking, it is the value of the utm_medium campaign tracking parameter. For AdWords autotagging, it is cpc. If users came from a search engine detected by Google Analytics, it is organic. If the referrer is not a search engine, it is referral. If users came directly to the property and document.referrer is empty, its value is (none). Defaults to: `null`.
  - pageview (PageviewData): This will be set if &#x60;activity_type&#x60; equals &#x60;PAGEVIEW&#x60;. This field contains all the details about the visitor and the page that was visited. Defaults to: `null`.
  - source (String.t): The source of referrals. For manual campaign tracking, it is the value of the utm_source campaign tracking parameter. For AdWords autotagging, it is google. If you use neither, it is the domain of the source (e.g., document.referrer) referring the users. It may also contain a port address. If users arrived without a referrer, its value is (direct). Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :activityTime => DateTime.t(),
          :activityType => any(),
          :appview => GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData.t(),
          :campaign => any(),
          :channelGrouping => any(),
          :customDimension => list(GoogleApi.AnalyticsReporting.V4.Model.CustomDimension.t()),
          :ecommerce => GoogleApi.AnalyticsReporting.V4.Model.EcommerceData.t(),
          :event => GoogleApi.AnalyticsReporting.V4.Model.EventData.t(),
          :goals => GoogleApi.AnalyticsReporting.V4.Model.GoalSetData.t(),
          :hostname => any(),
          :keyword => any(),
          :landingPagePath => any(),
          :medium => any(),
          :pageview => GoogleApi.AnalyticsReporting.V4.Model.PageviewData.t(),
          :source => any()
        }

  field(:activityTime, as: DateTime)
  field(:activityType)
  field(:appview, as: GoogleApi.AnalyticsReporting.V4.Model.ScreenviewData)
  field(:campaign)
  field(:channelGrouping)
  field(:customDimension, as: GoogleApi.AnalyticsReporting.V4.Model.CustomDimension, type: :list)
  field(:ecommerce, as: GoogleApi.AnalyticsReporting.V4.Model.EcommerceData)
  field(:event, as: GoogleApi.AnalyticsReporting.V4.Model.EventData)
  field(:goals, as: GoogleApi.AnalyticsReporting.V4.Model.GoalSetData)
  field(:hostname)
  field(:keyword)
  field(:landingPagePath)
  field(:medium)
  field(:pageview, as: GoogleApi.AnalyticsReporting.V4.Model.PageviewData)
  field(:source)
end

defimpl Poison.Decoder, for: GoogleApi.AnalyticsReporting.V4.Model.Activity do
  def decode(value, options) do
    GoogleApi.AnalyticsReporting.V4.Model.Activity.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AnalyticsReporting.V4.Model.Activity do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end