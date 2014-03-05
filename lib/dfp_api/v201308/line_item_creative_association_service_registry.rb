# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2014-02-26 15:35:26.

require 'dfp_api/errors'

module DfpApi; module V201308; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationServiceRegistry
    LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS = {:create_line_item_creative_association=>{:input=>[{:name=>:line_item_creative_association, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_line_item_creative_association_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1}]}}, :create_line_item_creative_associations=>{:input=>[{:name=>:line_item_creative_associations, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_line_item_creative_associations_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_line_item_creative_association=>{:input=>[{:name=>:line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_line_item_creative_association_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1}]}}, :get_line_item_creative_associations_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_line_item_creative_associations_by_statement_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociationPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_preview_url=>{:input=>[{:name=>:line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:site_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_preview_url_response", :fields=>[{:name=>:rval, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}}, :perform_line_item_creative_association_action=>{:input=>[{:name=>:line_item_creative_association_action, :type=>"LineItemCreativeAssociationAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_line_item_creative_association_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_line_item_creative_association=>{:input=>[{:name=>:line_item_creative_association, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_line_item_creative_association_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>1}]}}, :update_line_item_creative_associations=>{:input=>[{:name=>:line_item_creative_associations, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_line_item_creative_associations_response", :fields=>[{:name=>:rval, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES = {:ActivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :AdSenseAccountError=>{:fields=>[{:name=>:reason, :type=>"AdSenseAccountError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AssetError=>{:fields=>[{:name=>:reason, :type=>"AssetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AudienceExtensionError=>{:fields=>[{:name=>:reason, :type=>"AudienceExtensionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :original_name=>"Authentication.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeAssetMacroError=>{:fields=>[{:name=>:reason, :type=>"CreativeAssetMacroError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeError=>{:fields=>[{:name=>:reason, :type=>"CreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeSetError=>{:fields=>[{:name=>:reason, :type=>"CreativeSetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCreativeError=>{:fields=>[{:name=>:reason, :type=>"CustomCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DeactivateLineItemCreativeAssociations=>{:fields=>[], :base=>"LineItemCreativeAssociationAction"}, :EntityLimitReachedError=>{:fields=>[], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FileError=>{:fields=>[{:name=>:reason, :type=>"FileError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ImageError=>{:fields=>[{:name=>:reason, :type=>"ImageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemCreativeAssociationAction=>{:fields=>[{:name=>:line_item_creative_association_action_type, :original_name=>"LineItemCreativeAssociationAction.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :LineItemCreativeAssociation=>{:fields=>[{:name=>:line_item_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_set_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:manual_creative_rotation_weight, :type=>"double", :min_occurs=>0, :max_occurs=>1}, {:name=>:sequential_creative_rotation_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time_type, :type=>"StartDateTimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:sizes, :type=>"Size", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:status, :type=>"LineItemCreativeAssociation.Status", :min_occurs=>0, :max_occurs=>1}, {:name=>:stats, :type=>"LineItemCreativeAssociationStats", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}]}, :LineItemCreativeAssociationError=>{:fields=>[{:name=>:reason, :type=>"LineItemCreativeAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemCreativeAssociationOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemCreativeAssociationOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemCreativeAssociationPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"LineItemCreativeAssociation", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LineItemCreativeAssociationStats=>{:fields=>[{:name=>:stats, :type=>"Stats", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_set_stats, :type=>"Long_StatsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:cost_in_order_currency, :type=>"Money", :min_occurs=>0, :max_occurs=>1}]}, :LineItemError=>{:fields=>[{:name=>:reason, :type=>"LineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Long_StatsMapEntry=>{:fields=>[{:name=>:key, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Stats", :min_occurs=>0, :max_occurs=>1}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredSizeError=>{:fields=>[{:name=>:reason, :type=>"RequiredSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RichMediaStudioCreativeError=>{:fields=>[{:name=>:reason, :type=>"RichMediaStudioCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Stats=>{:fields=>[{:name=>:impressions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:clicks_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_completions_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_starts_delivered, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SwiffyConversionError=>{:fields=>[{:name=>:reason, :type=>"SwiffyConversionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TemplateInstantiatedCreativeError=>{:fields=>[{:name=>:reason, :type=>"TemplateInstantiatedCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :original_name=>"Value.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :"AdSenseAccountError.Reason"=>{:fields=>[]}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AssetError.Reason"=>{:fields=>[]}, :"AudienceExtensionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"CreativeAssetMacroError.Reason"=>{:fields=>[]}, :"CreativeError.Reason"=>{:fields=>[]}, :"CreativeSetError.Reason"=>{:fields=>[]}, :"CustomCreativeError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"FileError.Reason"=>{:fields=>[]}, :"ImageError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemCreativeAssociation.Status"=>{:fields=>[]}, :"LineItemCreativeAssociationError.Reason"=>{:fields=>[]}, :"LineItemCreativeAssociationOperationError.Reason"=>{:fields=>[]}, :"LineItemError.Reason"=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"RequiredSizeError.Reason"=>{:fields=>[]}, :"RichMediaStudioCreativeError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :StartDateTimeType=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"SwiffyConversionError.Reason"=>{:fields=>[]}, :"TemplateInstantiatedCreativeError.Reason"=>{:fields=>[]}}
    LINEITEMCREATIVEASSOCIATIONSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return LINEITEMCREATIVEASSOCIATIONSERVICE_NAMESPACES[index]
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
      super(exception_fault, LineItemCreativeAssociationServiceRegistry)
    end
  end
end; end; end
