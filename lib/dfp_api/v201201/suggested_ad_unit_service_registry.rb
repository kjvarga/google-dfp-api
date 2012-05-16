# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.0 on 2012-05-15 17:25:27.

require 'dfp_api/errors'

module DfpApi; module V201201; module SuggestedAdUnitService
  class SuggestedAdUnitServiceRegistry
    SUGGESTEDADUNITSERVICE_METHODS = {:get_suggested_ad_unit=>{:input=>[{:name=>:suggested_ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_suggested_ad_unit_response", :fields=>[{:name=>:rval, :type=>"SuggestedAdUnit", :min_occurs=>0, :max_occurs=>1}]}}, :get_suggested_ad_units_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_suggested_ad_units_by_statement_response", :fields=>[{:name=>:rval, :type=>"SuggestedAdUnitPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_suggested_ad_unit_action=>{:input=>[{:name=>:suggested_ad_unit_action, :type=>"SuggestedAdUnitAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_suggested_ad_unit_action_response", :fields=>[{:name=>:rval, :type=>"SuggestedAdUnitUpdateResult", :min_occurs=>0, :max_occurs=>1}]}}}
    SUGGESTEDADUNITSERVICE_TYPES = {:ApproveSuggestedAdUnit=>{:fields=>[], :base=>"SuggestedAdUnitAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :AdUnitSize=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:environment_type, :type=>"EnvironmentType", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SuggestedAdUnitAction=>{:fields=>[{:name=>:suggested_ad_unit_action_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :SuggestedAdUnit=>{:fields=>[{:name=>:id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:num_requests, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:path, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:target_window, :type=>"AdUnit.TargetWindow", :min_occurs=>0, :max_occurs=>1}, {:name=>:target_platform, :type=>"TargetPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:suggested_ad_unit_sizes, :type=>"AdUnitSize", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SuggestedAdUnitPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"SuggestedAdUnit", :min_occurs=>0, :max_occurs=>:unbounded}]}, :SuggestedAdUnitUpdateResult=>{:fields=>[{:name=>:new_ad_unit_ids, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :Value=>{:fields=>[{:name=>:value_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AdUnit.TargetWindow"=>{:fields=>[]}, :EnvironmentType=>{:fields=>[]}, :TargetPlatform=>{:fields=>[]}}
    SUGGESTEDADUNITSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return SUGGESTEDADUNITSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return SUGGESTEDADUNITSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return SUGGESTEDADUNITSERVICE_NAMESPACES[index]
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
