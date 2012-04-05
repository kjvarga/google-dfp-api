# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.6.3 on 2012-04-03 18:01:51.

require 'dfp_api/errors'

module DfpApi; module V201203; module PlacementService
  class PlacementServiceRegistry
    PLACEMENTSERVICE_METHODS = {:create_placement=>{:input=>[{:name=>:placement, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_placement_response", :fields=>[{:name=>:rval, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}]}}, :create_placements=>{:input=>[{:name=>:placements, :type=>"Placement", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_placements_response", :fields=>[{:name=>:rval, :type=>"Placement", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_placement=>{:input=>[{:name=>:placement_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_placement_response", :fields=>[{:name=>:rval, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}]}}, :get_placements_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_placements_by_statement_response", :fields=>[{:name=>:rval, :type=>"PlacementPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_placement_action=>{:input=>[{:name=>:placement_action, :type=>"PlacementAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_placement_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_placement=>{:input=>[{:name=>:placement, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_placement_response", :fields=>[{:name=>:rval, :type=>"Placement", :min_occurs=>0, :max_occurs=>1}]}}, :update_placements=>{:input=>[{:name=>:placements, :type=>"Placement", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_placements_response", :fields=>[{:name=>:rval, :type=>"Placement", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    PLACEMENTSERVICE_TYPES = {:ActivatePlacements=>{:fields=>[], :base=>"PlacementAction"}, :ArchivePlacements=>{:fields=>[], :base=>"PlacementAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivatePlacements=>{:fields=>[], :base=>"PlacementAction"}, :AdUnitSize=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :PlacementAction=>{:fields=>[{:name=>:placement_action_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :Placement=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:placement_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"InventoryStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_ad_sense_targeting_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_ad_planner_targeting_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_sense_targeting_locale, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeted_ad_unit_ids, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"SiteTargetingInfo"}, :PlacementPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Placement", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SiteTargetingInfo=>{:fields=>[{:name=>:targeting_description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeting_site_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeting_ad_location, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:site_targeting_info_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :EnvironmentType=>{:fields=>[]}, :InventoryStatus=>{:fields=>[]}}
    PLACEMENTSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return PLACEMENTSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return PLACEMENTSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return PLACEMENTSERVICE_NAMESPACES[index]
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
