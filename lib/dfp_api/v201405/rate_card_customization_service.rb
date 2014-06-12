# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:46:23.

require 'ads_common/savon_service'
require 'dfp_api/v201405/rate_card_customization_service_registry'

module DfpApi; module V201405; module RateCardCustomizationService
  class RateCardCustomizationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201405'
      super(config, endpoint, namespace, :v201405)
    end

    def create_rate_card_customizations(*args, &block)
      return execute_action('create_rate_card_customizations', args, &block)
    end

    def get_rate_card_customizations_by_statement(*args, &block)
      return execute_action('get_rate_card_customizations_by_statement', args, &block)
    end

    def perform_rate_card_customization_action(*args, &block)
      return execute_action('perform_rate_card_customization_action', args, &block)
    end

    def update_rate_card_customizations(*args, &block)
      return execute_action('update_rate_card_customizations', args, &block)
    end

    private

    def get_service_registry()
      return RateCardCustomizationServiceRegistry
    end

    def get_module()
      return DfpApi::V201405::RateCardCustomizationService
    end
  end
end; end; end
