# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-08-12 14:23:43.

require 'dfp_api/errors'

module DfpApi; module V201408; module OrderService
  class OrderServiceRegistry
    ORDERSERVICE_METHODS = {:create_orders=>{:input=>[{:name=>:orders, :type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_orders_response", :fields=>[{:name=>:rval, :type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_orders_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_orders_by_statement_response", :fields=>[{:name=>:rval, :type=>"OrderPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_order_action=>{:input=>[{:name=>:order_action, :type=>"OrderAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_order_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_orders=>{:input=>[{:name=>:orders, :type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_orders_response", :fields=>[{:name=>:rval, :type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    ORDERSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApproveAndOverbookOrders=>{:fields=>[], :base=>"ApproveOrders"}, :ApproveOrders=>{:fields=>[{:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"OrderAction"}, :ApproveOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :ArchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :AudienceExtensionError=>{:fields=>[{:name=>:reason, :type=>"AudienceExtensionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :original_name=>"Authentication.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:base_custom_field_value_type, :original_name=>"BaseCustomFieldValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClickTrackingLineItemError=>{:fields=>[{:name=>:reason, :type=>"ClickTrackingLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CompanyCreditStatusError=>{:fields=>[{:name=>:reason, :type=>"CompanyCreditStatusError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ContentMetadataTargetingError=>{:fields=>[{:name=>:reason, :type=>"ContentMetadataTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeError=>{:fields=>[{:name=>:reason, :type=>"CreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomTargetingError=>{:fields=>[{:name=>:reason, :type=>"CustomTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeRangeTargetingError=>{:fields=>[{:name=>:reason, :type=>"DateTimeRangeTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DayPartTargetingError=>{:fields=>[{:name=>:reason, :type=>"DayPartTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DeleteOrders=>{:fields=>[], :base=>"OrderAction"}, :DisapproveOrders=>{:fields=>[], :base=>"OrderAction"}, :DisapproveOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ForecastError=>{:fields=>[{:name=>:reason, :type=>"ForecastError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FrequencyCapError=>{:fields=>[{:name=>:reason, :type=>"FrequencyCapError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GenericTargetingError=>{:fields=>[{:name=>:reason, :type=>"GenericTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GeoTargetingError=>{:fields=>[{:name=>:reason, :type=>"GeoTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidEmailError=>{:fields=>[{:name=>:reason, :type=>"InvalidEmailError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryTargetingError=>{:fields=>[{:name=>:reason, :type=>"InventoryTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemCreativeAssociationError=>{:fields=>[{:name=>:reason, :type=>"LineItemCreativeAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemError=>{:fields=>[{:name=>:reason, :type=>"LineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemFlightDateError=>{:fields=>[{:name=>:reason, :type=>"LineItemFlightDateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OrderAction=>{:fields=>[{:name=>:order_action_type, :original_name=>"OrderAction.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :OrderActionError=>{:fields=>[{:name=>:reason, :type=>"OrderActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Order=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:unlimited_end_date_time, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"OrderStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:external_order_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:po_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser_contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:agency_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:agency_contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:creator_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:trafficker_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_trafficker_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:salesperson_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_salesperson_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:total_impressions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_clicks_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_by_app, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_programmatic, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:programmatic_settings, :type=>"ProgrammaticSettings", :min_occurs=>0, :max_occurs=>1}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}]}, :OrderError=>{:fields=>[{:name=>:reason, :type=>"OrderError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :OrderPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Order", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PauseOrders=>{:fields=>[], :base=>"OrderAction"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgrammaticError=>{:fields=>[{:name=>:reason, :type=>"ProgrammaticError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgrammaticSettings=>{:fields=>[{:name=>:adx_buyer_network_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:buyer_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:buyer_platform, :type=>"BuyerPlatform", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_terms_type, :type=>"BillingTermsType", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ProgrammaticStatus", :min_occurs=>0, :max_occurs=>1}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredSizeError=>{:fields=>[{:name=>:reason, :type=>"RequiredSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReservationDetailsError=>{:fields=>[{:name=>:reason, :type=>"ReservationDetailsError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ResumeAndOverbookOrders=>{:fields=>[], :base=>"ResumeOrders"}, :ResumeOrders=>{:fields=>[{:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"OrderAction"}, :RetractOrders=>{:fields=>[], :base=>"OrderAction"}, :RetractOrdersWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SubmitOrdersForApproval=>{:fields=>[{:name=>:skip_inventory_check, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"OrderAction"}, :SubmitOrdersForApprovalAndOverbook=>{:fields=>[], :base=>"SubmitOrdersForApproval"}, :SubmitOrdersForApprovalWithoutReservationChanges=>{:fields=>[], :base=>"OrderAction"}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TechnologyTargetingError=>{:fields=>[{:name=>:reason, :type=>"TechnologyTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TemplateInstantiatedCreativeError=>{:fields=>[{:name=>:reason, :type=>"TemplateInstantiatedCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UnarchiveOrders=>{:fields=>[], :base=>"OrderAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :UserDomainTargetingError=>{:fields=>[{:name=>:reason, :type=>"UserDomainTargetingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Value=>{:fields=>[{:name=>:value_type, :original_name=>"Value.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AudienceExtensionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :BillingTermsType=>{:fields=>[]}, :BuyerPlatform=>{:fields=>[]}, :"ClickTrackingLineItemError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"CompanyCreditStatusError.Reason"=>{:fields=>[]}, :"ContentMetadataTargetingError.Reason"=>{:fields=>[]}, :"CreativeError.Reason"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"CustomTargetingError.Reason"=>{:fields=>[]}, :"DateTimeRangeTargetingError.Reason"=>{:fields=>[]}, :"DayPartTargetingError.Reason"=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"ForecastError.Reason"=>{:fields=>[]}, :"FrequencyCapError.Reason"=>{:fields=>[]}, :"GenericTargetingError.Reason"=>{:fields=>[]}, :"GeoTargetingError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidEmailError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"InventoryTargetingError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemCreativeAssociationError.Reason"=>{:fields=>[]}, :"LineItemError.Reason"=>{:fields=>[]}, :"LineItemFlightDateError.Reason"=>{:fields=>[]}, :"LineItemOperationError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"OrderActionError.Reason"=>{:fields=>[]}, :"OrderError.Reason"=>{:fields=>[]}, :OrderStatus=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"ProgrammaticError.Reason"=>{:fields=>[]}, :ProgrammaticStatus=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"RequiredSizeError.Reason"=>{:fields=>[]}, :"ReservationDetailsError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :"TechnologyTargetingError.Reason"=>{:fields=>[]}, :"TemplateInstantiatedCreativeError.Reason"=>{:fields=>[]}, :"UserDomainTargetingError.Reason"=>{:fields=>[]}}
    ORDERSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return ORDERSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return ORDERSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return ORDERSERVICE_NAMESPACES[index]
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
      super(exception_fault, OrderServiceRegistry)
    end
  end
end; end; end
