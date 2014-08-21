# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-08-12 14:20:17.

require 'dfp_api/errors'

module DfpApi; module V201308; module ProposalService
  class ProposalServiceRegistry
    PROPOSALSERVICE_METHODS = {:create_proposal=>{:input=>[{:name=>:proposal, :type=>"Proposal", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"create_proposal_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>1}]}}, :create_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_proposal=>{:input=>[{:name=>:proposal_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_proposal_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>1}]}}, :get_proposals_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_proposals_by_statement_response", :fields=>[{:name=>:rval, :type=>"ProposalPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_proposal_action=>{:input=>[{:name=>:proposal_action, :type=>"ProposalAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_proposal_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_proposal=>{:input=>[{:name=>:proposal, :type=>"Proposal", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"update_proposal_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>1}]}}, :update_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    PROPOSALSERVICE_TYPES = {:ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_error_type, :original_name=>"ApiError.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_exception_type, :original_name=>"ApplicationException.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApproveProposals=>{:fields=>[{:name=>:workflow_action_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ProposalAction"}, :ArchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :Authentication=>{:fields=>[{:name=>:authentication_type, :original_name=>"Authentication.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:base_custom_field_value_type, :original_name=>"BaseCustomFieldValue.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BillingError=>{:fields=>[{:name=>:reason, :type=>"BillingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClientLogin=>{:fields=>[{:name=>:token, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ForecastError=>{:fields=>[{:name=>:reason, :type=>"ForecastError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OAuth=>{:fields=>[{:name=>:parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Authentication"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PrecisionError=>{:fields=>[{:name=>:reason, :type=>"PrecisionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProductError=>{:fields=>[{:name=>:reason, :type=>"ProductError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalAction=>{:fields=>[{:name=>:proposal_action_type, :original_name=>"ProposalAction.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ProposalActionError=>{:fields=>[{:name=>:reason, :type=>"ProposalActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalCompanyAssociation=>{:fields=>[{:name=>:company_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"ProposalCompanyAssociationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Proposal=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ProposalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>1}, {:name=>:agencies, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:probability_to_close, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_cap, :type=>"BillingCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_schedule, :type=>"BillingSchedule", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_source, :type=>"BillingSource", :min_occurs=>0, :max_occurs=>1}, {:name=>:po_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_salesperson, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_salespeople, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:sales_planner_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:primary_trafficker_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_trafficker_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advertiser_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposal_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_adjustment, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:exchange_rate, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:refresh_exchange_rate, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:agency_commission, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_added_tax, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_workflow_action_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:approval_status, :type=>"ProposalApprovalStatus", :min_occurs=>0, :max_occurs=>1}]}, :ProposalError=>{:fields=>[{:name=>:reason, :type=>"ProposalError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLineItemError=>{:fields=>[{:name=>:reason, :type=>"ProposalLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RejectProposals=>{:fields=>[{:name=>:workflow_action_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"ProposalAction"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RetractProposals=>{:fields=>[], :base=>"ProposalAction"}, :SalespersonSplit=>{:fields=>[{:name=>:user_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:split, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:authentication, :type=>"Authentication", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SubmitProposalsForApproval=>{:fields=>[], :base=>"ProposalAction"}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UnarchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[{:name=>:value_type, :original_name=>"Value.Type", :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :WorkflowActionError=>{:fields=>[{:name=>:reason, :type=>"WorkflowActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :BillingCap=>{:fields=>[]}, :"BillingError.Reason"=>{:fields=>[]}, :BillingSchedule=>{:fields=>[]}, :BillingSource=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"ForecastError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemOperationError.Reason"=>{:fields=>[]}, :ProposalApprovalStatus=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PrecisionError.Reason"=>{:fields=>[]}, :"ProductError.Reason"=>{:fields=>[]}, :"ProposalActionError.Reason"=>{:fields=>[]}, :ProposalCompanyAssociationType=>{:fields=>[]}, :"ProposalError.Reason"=>{:fields=>[]}, :"ProposalLineItemError.Reason"=>{:fields=>[]}, :ProposalStatus=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :"WorkflowActionError.Reason"=>{:fields=>[]}}
    PROPOSALSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return PROPOSALSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return PROPOSALSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return PROPOSALSERVICE_NAMESPACES[index]
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
      super(exception_fault, ProposalServiceRegistry)
    end
  end
end; end; end
