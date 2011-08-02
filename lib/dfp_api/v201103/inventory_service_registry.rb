#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-02 15:34:17.

module DfpApi; module V201103; module InventoryService
  class InventoryServiceRegistry
    INVENTORYSERVICE_METHODS = {:get_ad_unit=>{:input=>[{:type=>"string", :min_occurs=>0, :name=>:ad_unit_id, :max_occurs=>1}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"get_ad_unit_response"}}, :get_ad_units_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :name=>:filter_statement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"AdUnitPage", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"get_ad_units_by_statement_response"}}, :perform_ad_unit_action=>{:input=>[{:type=>"AdUnitAction", :min_occurs=>0, :name=>:ad_unit_action, :max_occurs=>1}, {:type=>"Statement", :min_occurs=>0, :name=>:filter_statement, :max_occurs=>1}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"perform_ad_unit_action_response"}}, :update_ad_unit=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:ad_unit, :max_occurs=>1}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"update_ad_unit_response"}}, :create_ad_unit=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:ad_unit, :max_occurs=>1}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:rval, :max_occurs=>1}], :name=>"create_ad_unit_response"}}, :update_ad_units=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:ad_units, :max_occurs=>:unbounded}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:rval, :max_occurs=>:unbounded}], :name=>"update_ad_units_response"}}, :create_ad_units=>{:input=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:ad_units, :max_occurs=>:unbounded}], :output=>{:fields=>[{:type=>"AdUnit", :min_occurs=>0, :name=>:rval, :max_occurs=>:unbounded}], :name=>"create_ad_units_response"}}}
    INVENTORYSERVICE_TYPES = {:Size=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:width, :max_occurs=>1}, {:type=>"int", :min_occurs=>0, :name=>:height, :max_occurs=>1}, {:type=>"boolean", :min_occurs=>0, :name=>:is_aspect_ratio, :max_occurs=>1}]}, :Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:query, :max_occurs=>1}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :name=>:values, :max_occurs=>:unbounded}]}, :AdSenseSettings=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :name=>:ad_sense_enabled, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:border_color, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:title_color, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:background_color, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:text_color, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:url_color, :max_occurs=>1}, {:type=>"AdSenseSettings.AdType", :min_occurs=>0, :name=>:ad_type, :max_occurs=>1}, {:type=>"AdSenseSettings.BorderStyle", :min_occurs=>0, :name=>:border_style, :max_occurs=>1}, {:type=>"AdSenseSettings.FontFamily", :min_occurs=>0, :name=>:font_family, :max_occurs=>1}, {:type=>"AdSenseSettings.FontSize", :min_occurs=>0, :name=>:font_size, :max_occurs=>1}, {:type=>"Size_StringMapEntry", :min_occurs=>0, :name=>:afc_formats, :max_occurs=>:unbounded}]}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:num_changes, :max_occurs=>1}]}, :OAuth=>{:base=>"Authentication", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:parameters, :max_occurs=>1}]}, :ActivateAdUnits=>{:base=>"AdUnitAction", :fields=>[]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:key, :max_occurs=>1}, {:type=>"Value", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :AdSenseSettingsInheritedProperty=>{:fields=>[{:type=>"AdSenseSettings", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :NumberValue=>{:base=>"Value", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :ArchiveAdUnits=>{:base=>"AdUnitAction", :fields=>[]}, :AdUnitAction=>{:abstract=>true, :fields=>[{:type=>"string", :min_occurs=>0, :name=>:ad_unit_action_type, :max_occurs=>1}]}, :Authentication=>{:abstract=>true, :fields=>[{:type=>"string", :min_occurs=>0, :name=>:authentication_type, :max_occurs=>1}]}, :Value=>{:abstract=>true, :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value_type, :max_occurs=>1}]}, :AssignAdUnitsToPlacement=>{:base=>"AdUnitAction", :fields=>[{:type=>"long", :min_occurs=>0, :name=>:placement_id, :max_occurs=>1}]}, :AdUnit=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:id, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:parent_id, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:name, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:description, :max_occurs=>1}, {:type=>"AdUnit.TargetWindow", :min_occurs=>0, :name=>:target_window, :max_occurs=>1}, {:type=>"InventoryStatus", :min_occurs=>0, :name=>:status, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:ad_unit_code, :max_occurs=>1}, {:type=>"Size", :min_occurs=>0, :name=>:sizes, :max_occurs=>:unbounded}, {:type=>"boolean", :min_occurs=>0, :name=>:explicitly_targeted, :max_occurs=>1}, {:type=>"AdSenseSettingsInheritedProperty", :min_occurs=>0, :name=>:inherited_ad_sense_settings, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:network_code, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:application_name, :max_occurs=>1}, {:type=>"Authentication", :min_occurs=>0, :name=>:authentication, :max_occurs=>1}]}, :DeactivateAdUnits=>{:base=>"AdUnitAction", :fields=>[]}, :ClientLogin=>{:base=>"Authentication", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:token, :max_occurs=>1}]}, :BooleanValue=>{:base=>"Value", :fields=>[{:type=>"boolean", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :AdUnitPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :name=>:total_result_set_size, :max_occurs=>1}, {:type=>"int", :min_occurs=>0, :name=>:start_index, :max_occurs=>1}, {:type=>"AdUnit", :min_occurs=>0, :name=>:results, :max_occurs=>:unbounded}]}, :TextValue=>{:base=>"Value", :fields=>[{:type=>"string", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :name=>:request_id, :max_occurs=>1}, {:type=>"long", :min_occurs=>0, :name=>:response_time, :max_occurs=>1}]}, :Size_StringMapEntry=>{:fields=>[{:type=>"Size", :min_occurs=>0, :name=>:key, :max_occurs=>1}, {:type=>"string", :min_occurs=>0, :name=>:value, :max_occurs=>1}]}}
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
