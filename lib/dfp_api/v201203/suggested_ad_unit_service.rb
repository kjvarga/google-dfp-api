# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-06 08:33:44.

require 'ads_common/savon_service'
require 'dfp_api/v201203/suggested_ad_unit_service_registry'

module DfpApi; module V201203; module SuggestedAdUnitService
  class SuggestedAdUnitService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201203'
      super(config, endpoint, namespace, :v201203)
    end

    def get_suggested_ad_unit(*args, &block)
      return execute_action('get_suggested_ad_unit', args, &block)
    end

    def get_suggested_ad_units_by_statement(*args, &block)
      return execute_action('get_suggested_ad_units_by_statement', args, &block)
    end

    def perform_suggested_ad_unit_action(*args, &block)
      return execute_action('perform_suggested_ad_unit_action', args, &block)
    end

    private

    def get_service_registry()
      return SuggestedAdUnitServiceRegistry
    end

    def get_module()
      return DfpApi::V201203::SuggestedAdUnitService
    end
  end
end; end; end
