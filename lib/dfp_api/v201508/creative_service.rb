# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:15:57.

require 'ads_common/savon_service'
require 'dfp_api/v201508/creative_service_registry'

module DfpApi; module V201508; module CreativeService
  class CreativeService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
    end

    def create_creatives(*args, &block)
      return execute_action('create_creatives', args, &block)
    end

    def create_creatives_to_xml(*args)
      return get_soap_xml('create_creatives', args)
    end

    def get_creatives_by_statement(*args, &block)
      return execute_action('get_creatives_by_statement', args, &block)
    end

    def get_creatives_by_statement_to_xml(*args)
      return get_soap_xml('get_creatives_by_statement', args)
    end

    def update_creatives(*args, &block)
      return execute_action('update_creatives', args, &block)
    end

    def update_creatives_to_xml(*args)
      return get_soap_xml('update_creatives', args)
    end

    private

    def get_service_registry()
      return CreativeServiceRegistry
    end

    def get_module()
      return DfpApi::V201508::CreativeService
    end
  end
end; end; end
