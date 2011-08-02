#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-02 15:32:55.

module DfpApi; module V201101; module PlacementService
  class PlacementServiceRegistry
    PLACEMENTSERVICE_METHODS = {:perform_placement_action=>{:input=>[{:type=>"PlacementAction", :min_occurs=>0, :name=>:placement_action, :max_occurs=>1}, {:type=>"Statement", :min_occurs=>0, :name=>:filter_statement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"perform_placement_action_response"}}, :update_placement=>{:input=>[{:type=>"Placement", :min_occurs=>0, :name=>:placement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"Placement", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"update_placement_response"}}, :create_placement=>{:input=>[{:type=>"Placement", :min_occurs=>0, :name=>:placement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"Placement", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"create_placement_response"}}, :update_placements=>{:input=>[{:type=>"Placement", :min_occurs=>0, :name=>:placements, :max_occurs=>:unbounded}], :output=>{:fields=>[{:type=>"Placement", :min_occurs=>0, :name=>:rval, :max_occurs=>:unbounded}], :name=>"update_placements_response"}}, :create_placements=>{:input=>[{:type=>"Placement", :min_occurs=>0, :name=>:placements, :max_occurs=>:unbounded}], :output=>{:fields=>[{:type=>"Placement", :min_occurs=>0, :name=>:rval, :max_occurs=>:unbounded}], :name=>"create_placements_response"}}, :get_placement=>{:input=>[{:type=>"long", :min_occurs=>0, :name=>:placement_id, :max_occurs=>1}], :output=>{:fields=>[{:type=>"Placement", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"get_placement_response"}}, :get_placements_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :name=>:filter_statement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"PlacementPage", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"get_placements_by_statement_response"}}}
    PLACEMENTSERVICE_TYPES = {:PlacementPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:total_result_set_size, :max_occurs=>1}, {:type=>"int", :min_occurs=>0, :name=>:start_index, :max_occurs=>1}, {:type=>"Placement", :min_occurs=>0, :name=>:results, :max_occurs=>:unbounded}]}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:query, :max_occurs=>1}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :name=>:values, :max_occurs=>:unbounded}]}, :ArchivePlacements=>{:base=>"PlacementAction", :fields=>[]}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:num_changes, :max_occurs=>1}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:key, :max_occurs=>1}, {:type=>"Value", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :NumberValue=>{:base=>"Value", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :DeactivatePlacements=>{:base=>"PlacementAction", :fields=>[]}, :PlacementAction=>{:abstract=>true, :fields=>[{:type=>"string", :min_occurs=>0, :name=>:placement_action_type, :max_occurs=>1}]}, :Value=>{:abstract=>true, :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value_type, :max_occurs=>1}]}, :Placement=>{:base=>"SiteTargetingInfo", :fields=>[{:type=>"long", :min_occurs=>0, :name=>:id, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:name, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:description, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:placement_code, :max_occurs=>1}, {:type=>"InventoryStatus", :min_occurs=>0, :name=>:status, :max_occurs=>1}, {:type=>"boolean", :min_occurs=>0, :name=>:is_ad_sense_targeting_enabled, :max_occurs=>1}, {:type=>"boolean", :min_occurs=>0, :name=>:is_ad_planner_targeting_enabled, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:ad_sense_targeting_locale, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:targeted_ad_unit_ids, :max_occurs=>:unbounded}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:auth_token, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:network_code, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:application_name, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:o_auth_token, :max_occurs=>1}]}, :BooleanValue=>{:base=>"Value", :fields=>[{:type=>"boolean", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :SiteTargetingInfo=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:targeting_description, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:targeting_site_name, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:targeting_ad_location, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:site_targeting_info_type, :max_occurs=>1}]}, :TextValue=>{:base=>"Value", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:request_id, :max_occurs=>1}, {:type=>"long", :min_occurs=>0, :name=>:response_time, :max_occurs=>1}]}, :ActivatePlacements=>{:base=>"PlacementAction", :fields=>[]}}
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
