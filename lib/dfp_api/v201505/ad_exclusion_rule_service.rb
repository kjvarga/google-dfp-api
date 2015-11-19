# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:15:01.

require 'ads_common/savon_service'
require 'dfp_api/v201505/ad_exclusion_rule_service_registry'

module DfpApi; module V201505; module AdExclusionRuleService
  class AdExclusionRuleService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201505'
      super(config, endpoint, namespace, :v201505)
    end

    def create_ad_exclusion_rules(*args, &block)
      return execute_action('create_ad_exclusion_rules', args, &block)
    end

    def create_ad_exclusion_rules_to_xml(*args)
      return get_soap_xml('create_ad_exclusion_rules', args)
    end

    def get_ad_exclusion_rules_by_statement(*args, &block)
      return execute_action('get_ad_exclusion_rules_by_statement', args, &block)
    end

    def get_ad_exclusion_rules_by_statement_to_xml(*args)
      return get_soap_xml('get_ad_exclusion_rules_by_statement', args)
    end

    def perform_ad_exclusion_rule_action(*args, &block)
      return execute_action('perform_ad_exclusion_rule_action', args, &block)
    end

    def perform_ad_exclusion_rule_action_to_xml(*args)
      return get_soap_xml('perform_ad_exclusion_rule_action', args)
    end

    def update_ad_exclusion_rules(*args, &block)
      return execute_action('update_ad_exclusion_rules', args, &block)
    end

    def update_ad_exclusion_rules_to_xml(*args)
      return get_soap_xml('update_ad_exclusion_rules', args)
    end

    private

    def get_service_registry()
      return AdExclusionRuleServiceRegistry
    end

    def get_module()
      return DfpApi::V201505::AdExclusionRuleService
    end
  end
end; end; end
