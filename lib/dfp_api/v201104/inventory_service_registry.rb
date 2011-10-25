#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:28:31.

require 'dfp_api/errors'

module DfpApi; module V201104; module InventoryService
  class InventoryServiceRegistry
    INVENTORYSERVICE_METHODS = {:update_ad_unit=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_ad_unit_response"}}, :create_ad_units=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_units}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"create_ad_units_response"}}, :update_ad_units=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:ad_units}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:rval}], :name=>"update_ad_units_response"}}, :get_ad_unit=>{:input=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit_id}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_ad_unit_response"}}, :get_ad_units_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"AdUnitPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_ad_units_by_statement_response"}}, :perform_ad_unit_action=>{:input=>[{:type=>"AdUnitAction", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_ad_unit_action_response"}}, :create_ad_unit=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_ad_unit_response"}}}
    INVENTORYSERVICE_TYPES = {:ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :AdSenseSettingsInheritedProperty=>{:fields=>[{:type=>"AdSenseSettings", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :DeactivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :AdUnitAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit_action_type}], :abstract=>true}, :Size_StringMapEntry=>{:fields=>[{:type=>"Size", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :AdUnit=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parent_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:description}, {:type=>"AdUnit.TargetWindow", :min_occurs=>0, :max_occurs=>1, :name=>:target_window}, {:type=>"InventoryStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:ad_unit_code}, {:type=>"Size", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:sizes}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:explicitly_targeted}, {:type=>"AdSenseSettingsInheritedProperty", :min_occurs=>0, :max_occurs=>1, :name=>:inherited_ad_sense_settings}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :AdUnitPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"AdUnit", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:results}]}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :ActivateAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :Size=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_aspect_ratio}]}, :ArchiveAdUnits=>{:fields=>[], :base=>"AdUnitAction"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :AdSenseSettings=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:ad_sense_enabled}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:border_color}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:title_color}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:background_color}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:text_color}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:url_color}, {:type=>"AdSenseSettings.AdType", :min_occurs=>0, :max_occurs=>1, :name=>:ad_type}, {:type=>"AdSenseSettings.BorderStyle", :min_occurs=>0, :max_occurs=>1, :name=>:border_style}, {:type=>"AdSenseSettings.FontFamily", :min_occurs=>0, :max_occurs=>1, :name=>:font_family}, {:type=>"AdSenseSettings.FontSize", :min_occurs=>0, :max_occurs=>1, :name=>:font_size}, {:type=>"Size_StringMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:afc_formats}]}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded, :name=>:values}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :AssignAdUnitsToPlacement=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:placement_id}], :base=>"AdUnitAction"}}
    INVENTORYSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return INVENTORYSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return INVENTORYSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return INVENTORYSERVICE_NAMESPACES[index]
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
