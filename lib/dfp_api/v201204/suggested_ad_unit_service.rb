# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.0 on 2012-08-21 13:58:31.

require 'ads_common/savon_service'
require 'dfp_api/v201204/suggested_ad_unit_service_registry'

module DfpApi; module V201204; module SuggestedAdUnitService
  class SuggestedAdUnitService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201204'
      super(config, endpoint, namespace, :v201204)
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
      return DfpApi::V201204::SuggestedAdUnitService
    end
  end
end; end; end
