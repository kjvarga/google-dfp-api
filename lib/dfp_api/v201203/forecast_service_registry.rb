# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-06 08:32:45.

require 'dfp_api/errors'

module DfpApi; module V201203; module ForecastService
  class ForecastServiceRegistry
    FORECASTSERVICE_METHODS = {:get_forecast=>{:input=>[{:name=>:line_item, :type=>"LineItem", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_forecast_response", :fields=>[{:name=>:rval, :type=>"Forecast", :min_occurs=>0, :max_occurs=>1}]}}, :get_forecast_by_id=>{:input=>[{:name=>:line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_forecast_by_id_response", :fields=>[{:name=>:rval, :type=>"Forecast", :min_occurs=>0, :max_occurs=>1}]}}}
    FORECASTSERVICE_TYPES = {:AdUnitTargeting=>{:fields=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_descendants, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :TechnologyTargeting=>{:fields=>[{:name=>:bandwidth_group_targeting, :type=>"BandwidthGroupTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_targeting, :type=>"BrowserTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_language_targeting, :type=>"BrowserLanguageTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_targeting, :type=>"DeviceManufacturerTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carrier_targeting, :type=>"MobileCarrierTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_targeting, :type=>"MobileDeviceTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_submodel_targeting, :type=>"MobileDeviceSubmodelTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_targeting, :type=>"OperatingSystemTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_version_targeting, :type=>"OperatingSystemVersionTargeting", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BandwidthGroup=>{:fields=>[], :base=>"Technology"}, :BandwidthGroupTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:bandwidth_groups, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Browser=>{:fields=>[{:name=>:major_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :BrowserLanguage=>{:fields=>[], :base=>"Technology"}, :BrowserLanguageTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_languages, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BrowserTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browsers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CityLocation=>{:fields=>[{:name=>:city_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:region_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Location"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :ContentTargeting=>{:fields=>[{:name=>:targeted_content_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_video_category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_video_category_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CountryLocation=>{:fields=>[{:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Location"}, :CreativePlaceholder=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:expected_creative_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_size_type, :type=>"CreativeSizeType", :min_occurs=>0, :max_occurs=>1}]}, :CustomCriteria=>{:fields=>[{:name=>:key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:operator, :type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}], :base=>"CustomCriteriaLeaf"}, :CustomCriteriaSet=>{:fields=>[{:name=>:logical_operator, :type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:children, :type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaNode"}, :CustomCriteriaLeaf=>{:fields=>[], :abstract=>true, :base=>"CustomCriteriaNode"}, :CustomCriteriaNode=>{:fields=>[{:name=>:custom_criteria_node_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AudienceSegmentCriteria=>{:fields=>[{:name=>:operator, :type=>"AudienceSegmentCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:audience_segment_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DayPart=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}]}, :DayPartTargeting=>{:fields=>[{:name=>:day_parts, :type=>"DayPart", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:time_zone, :type=>"DeliveryTimeZone", :min_occurs=>0, :max_occurs=>1}]}, :DeliveryData=>{:fields=>[{:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeliveryIndicator=>{:fields=>[{:name=>:expected_delivery_percentage, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:actual_delivery_percentage, :type=>"double", :min_occurs=>0, :max_occurs=>1}]}, :DeviceManufacturer=>{:fields=>[], :base=>"Technology"}, :DeviceManufacturerTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Forecast=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:unit_type, :type=>"UnitType", :min_occurs=>0, :max_occurs=>1}, {:name=>:available_units, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivered_units, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:matched_units, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:possible_units, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:reserved_units, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :FrequencyCap=>{:fields=>[{:name=>:max_impressions, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_time_units, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_unit, :type=>"TimeUnit", :min_occurs=>0, :max_occurs=>1}]}, :GeoTargeting=>{:fields=>[{:name=>:targeted_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}]}, :InventoryTargeting=>{:fields=>[{:name=>:targeted_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_placement_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :AdUnitSize=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LineItem=>{:fields=>[{:name=>:targeting, :type=>"Targeting", :min_occurs=>0, :max_occurs=>1}], :base=>"LineItemSummary"}, :LineItemSummary=>{:fields=>[{:name=>:order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:order_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time_type, :type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:auto_extension_days, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:unlimited_end_date_time, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_rotation_type, :type=>"CreativeRotationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_rate_type, :type=>"DeliveryRateType", :min_occurs=>0, :max_occurs=>1}, {:name=>:roadblocking_type, :type=>"RoadblockingType", :min_occurs=>0, :max_occurs=>1}, {:name=>:frequency_caps, :type=>"FrequencyCap", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:line_item_type, :type=>"LineItemType", :min_occurs=>0, :max_occurs=>1}, {:name=>:priority, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:unit_type, :type=>"UnitType", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"LineItemSummary.Duration", :min_occurs=>0, :max_occurs=>1}, {:name=>:units_bought, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:cost_type, :type=>"CostType", :min_occurs=>0, :max_occurs=>1}, {:name=>:discount_type, :type=>"LineItemDiscountType", :min_occurs=>0, :max_occurs=>1}, {:name=>:discount, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:contracted_units_bought, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_placeholders, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_platform, :type=>"TargetPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companion_delivery_option, :type=>"CompanionDeliveryOption", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_persistence_type, :type=>"CreativePersistenceType", :min_occurs=>0, :max_occurs=>1}, {:name=>:allow_overbook, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:reserve_at_creation, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"Stats", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_indicator, :type=>"DeliveryIndicator", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_data, :type=>"DeliveryData", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ComputedStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:reservation_status, :type=>"LineItemSummary.ReservationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:web_property_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:disable_same_advertiser_competitive_exclusion, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_by_app, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:line_item_summary_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Location=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:location_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MetroLocation=>{:fields=>[{:name=>:metro_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Location"}, :MobileCarrier=>{:fields=>[], :base=>"Technology"}, :MobileCarrierTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carriers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDevice=>{:fields=>[{:name=>:manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodel=>{:fields=>[{:name=>:mobile_device_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodelTargeting=>{:fields=>[{:name=>:targeted_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDeviceTargeting=>{:fields=>[{:name=>:targeted_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :OperatingSystem=>{:fields=>[], :base=>"Technology"}, :OperatingSystemTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_systems, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :OperatingSystemVersion=>{:fields=>[{:name=>:major_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :OperatingSystemVersionTargeting=>{:fields=>[{:name=>:targeted_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PostalCodeLocation=>{:fields=>[{:name=>:postal_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:country_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Location"}, :RegionLocation=>{:fields=>[{:name=>:region_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Location"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Stats=>{:fields=>[{:name=>:impressions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Targeting=>{:fields=>[{:name=>:geo_targeting, :type=>"GeoTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:inventory_targeting, :type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:day_part_targeting, :type=>"DayPartTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:technology_targeting, :type=>"TechnologyTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_targeting, :type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_domain_targeting, :type=>"UserDomainTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_targeting, :type=>"ContentTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_position_targeting, :type=>"VideoPositionTargeting", :min_occurs=>0, :max_occurs=>1}]}, :Technology=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:technology_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TimeOfDay=>{:fields=>[{:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}]}, :UserDomainTargeting=>{:fields=>[{:name=>:domains, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :VideoPositionTargeting=>{:fields=>[{:name=>:targeted_video_positions, :type=>"VideoPositionTargetingType", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CompanionDeliveryOption=>{:fields=>[]}, :ComputedStatus=>{:fields=>[]}, :CostType=>{:fields=>[]}, :CreativeRotationType=>{:fields=>[]}, :CreativeSizeType=>{:fields=>[]}, :"CustomCriteria.ComparisonOperator"=>{:fields=>[]}, :"CustomCriteriaSet.LogicalOperator"=>{:fields=>[]}, :"AudienceSegmentCriteria.ComparisonOperator"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :DeliveryTimeZone=>{:fields=>[]}, :DeliveryRateType=>{:fields=>[]}, :EnvironmentType=>{:fields=>[]}, :LineItemDiscountType=>{:fields=>[]}, :"LineItemSummary.Duration"=>{:fields=>[]}, :"LineItemSummary.ReservationStatus"=>{:fields=>[]}, :LineItemType=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :CreativePersistenceType=>{:fields=>[]}, :RoadblockingType=>{:fields=>[]}, :StartDateTimeType=>{:fields=>[]}, :TargetPlatform=>{:fields=>[]}, :TimeUnit=>{:fields=>[]}, :UnitType=>{:fields=>[]}, :VideoPositionTargetingType=>{:fields=>[]}}
    FORECASTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return FORECASTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return FORECASTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return FORECASTSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < DfpApi::Errors::ApiException
    attr_reader :message  # string
    attr_reader :application_exception_type  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
