# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.7.3 on 2012-07-06 08:34:00.

require 'ads_common/savon_service'
require 'dfp_api/v201204/creative_service_registry'

module DfpApi; module V201204; module CreativeService
  class CreativeService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201204'
      super(config, endpoint, namespace, :v201204)
    end

    def create_creative(*args, &block)
      return execute_action('create_creative', args, &block)
    end

    def create_creatives(*args, &block)
      return execute_action('create_creatives', args, &block)
    end

    def get_creative(*args, &block)
      return execute_action('get_creative', args, &block)
    end

    def get_creatives_by_statement(*args, &block)
      return execute_action('get_creatives_by_statement', args, &block)
    end

    def update_creative(*args, &block)
      return execute_action('update_creative', args, &block)
    end

    def update_creatives(*args, &block)
      return execute_action('update_creatives', args, &block)
    end

    private

    def get_service_registry()
      return CreativeServiceRegistry
    end

    def get_module()
      return DfpApi::V201204::CreativeService
    end
  end
end; end; end
