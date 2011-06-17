#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.4.0 on 2011-06-17 15:28:21.

module DfpApi; module V201103; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationServiceRegistry
    LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS = {:update_line_item_creative_association=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_line_item_creative_association_response"}}, :create_line_item_creative_association=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_line_item_creative_association_response"}}, :update_line_item_creative_associations=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>nil, :name=>:line_item_creative_associations}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>nil, :name=>:rval}], :name=>"update_line_item_creative_associations_response"}}, :create_line_item_creative_associations=>{:input=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>nil, :name=>:line_item_creative_associations}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>nil, :name=>:rval}], :name=>"create_line_item_creative_associations_response"}}, :get_line_item_creative_association=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creative_id}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_item_creative_association_response"}}, :get_line_item_creative_associations_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"LineItemCreativeAssociationPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_line_item_creative_associations_by_statement_response"}}, :perform_line_item_creative_association_action=>{:input=>[{:type=>"LineItemCreativeAssociationAction", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_line_item_creative_association_action_response"}}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>nil, :name=>:values}]}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :LineItemCreativeAssociationAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_creative_association_action_type}], :abstract=>true}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :Stats=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:clicks_delivered}]}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :LineItemCreativeAssociation=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:line_item_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creative_id}, {:type=>"double", :min_occurs=>0, :max_occurs=>1, :name=>:manual_creative_rotation_weight}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time_type}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:destination_url}, {:type=>"Size", :min_occurs=>0, :max_occurs=>nil, :name=>:sizes}, {:type=>"LineItemCreativeAssociation.Status", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"LineItemCreativeAssociationStats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}]}, :OAuth=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:parameters}], :base=>"Authentication"}, :LineItemCreativeAssociationPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>nil, :name=>:results}]}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :Authentication=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:authentication_type}], :abstract=>true}, :LineItemCreativeAssociationStats=>{:fields=>[{:type=>"Stats", :min_occurs=>0, :max_occurs=>1, :name=>:stats}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:cost_in_order_currency}]}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"Authentication", :min_occurs=>0, :max_occurs=>1, :name=>:authentication}]}, :ClientLogin=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:token}], :base=>"Authentication"}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ActivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :DeactivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :Size=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:width}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:height}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_aspect_ratio}]}}

    def self.get_method_signature(method_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES[type_name.to_sym]
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
      @array_fields = [] if !defined?(@array_fields)
      @array_fields << 'errors'
      super(exception_fault)
    end
  end
end; end; end
