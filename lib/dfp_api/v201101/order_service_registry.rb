#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.4.0 on 2011-06-17 15:26:29.

module DfpApi; module V201101; module OrderService
  class OrderServiceRegistry
    ORDERSERVICE_METHODS = {:create_orders=>{:input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>nil, :name=>:orders}], :output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>nil, :name=>:rval}], :name=>"create_orders_response"}}, :get_order=>{:input=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:order_id}], :output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_order_response"}}, :get_orders_by_statement=>{:input=>[{:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"OrderPage", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"get_orders_by_statement_response"}}, :perform_order_action=>{:input=>[{:type=>"OrderAction", :min_occurs=>0, :max_occurs=>1, :name=>:order_action}, {:type=>"Statement", :min_occurs=>0, :max_occurs=>1, :name=>:filter_statement}], :output=>{:fields=>[{:type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"perform_order_action_response"}}, :update_order=>{:input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}], :output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"update_order_response"}}, :create_order=>{:input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:order}], :output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>1, :name=>:rval}], :name=>"create_order_response"}}, :update_orders=>{:input=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>nil, :name=>:orders}], :output=>{:fields=>[{:type=>"Order", :min_occurs=>0, :max_occurs=>nil, :name=>:rval}], :name=>"update_orders_response"}}}
    ORDERSERVICE_TYPES = {:Statement=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:query}, {:type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>nil, :name=>:values}]}, :Money=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:micro_amount}]}, :UpdateResult=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:num_changes}]}, :ResumeAndOverbookOrders=>{:fields=>[], :base=>"ResumeOrders"}, :ApproveAndOverbookOrders=>{:fields=>[], :base=>"ApproveOrders"}, :String_ValueMapEntry=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:key}, {:type=>"Value", :min_occurs=>0, :max_occurs=>1, :name=>:value}]}, :NumberValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :ResumeOrders=>{:fields=>[], :base=>"OrderAction"}, :ApproveOrders=>{:fields=>[], :base=>"OrderAction"}, :SubmitOrdersForApproval=>{:fields=>[], :base=>"OrderAction"}, :OrderAction=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:order_action_type}], :abstract=>true}, :Value=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value_type}], :abstract=>true}, :RetractOrders=>{:fields=>[], :base=>"OrderAction"}, :ArchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :SubmitOrdersForApprovalAndOverbook=>{:fields=>[], :base=>"SubmitOrdersForApproval"}, :Order=>{:fields=>[{:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:name}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:start_date_time}, {:type=>"DateTime", :min_occurs=>0, :max_occurs=>1, :name=>:end_date_time}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:unlimited_end_date_time}, {:type=>"OrderStatus", :min_occurs=>0, :max_occurs=>1, :name=>:status}, {:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:is_archived}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:notes}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:external_id}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:currency_code}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:advertiser_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:creator_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:trafficker_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:salesperson_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_impressions_delivered}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:total_clicks_delivered}, {:type=>"Money", :min_occurs=>0, :max_occurs=>1, :name=>:total_budget}]}, :Date=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:year}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:month}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:day}]}, :SoapRequestHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:auth_token}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:network_code}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:application_name}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:o_auth_token}]}, :BooleanValue=>{:fields=>[{:type=>"boolean", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :TextValue=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:value}], :base=>"Value"}, :OrderPage=>{:fields=>[{:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:total_result_set_size}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:start_index}, {:type=>"Order", :min_occurs=>0, :max_occurs=>nil, :name=>:results}]}, :SoapResponseHeader=>{:fields=>[{:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:request_id}, {:type=>"long", :min_occurs=>0, :max_occurs=>1, :name=>:response_time}]}, :DisapproveOrders=>{:fields=>[], :base=>"OrderAction"}, :DateTime=>{:fields=>[{:type=>"Date", :min_occurs=>0, :max_occurs=>1, :name=>:date}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:hour}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:minute}, {:type=>"int", :min_occurs=>0, :max_occurs=>1, :name=>:second}, {:type=>"string", :min_occurs=>0, :max_occurs=>1, :name=>:time_zone_id}]}, :UnarchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :PauseOrders=>{:fields=>[], :base=>"OrderAction"}}

    def self.get_method_signature(method_name)
      return ORDERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ORDERSERVICE_TYPES[type_name.to_sym]
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
