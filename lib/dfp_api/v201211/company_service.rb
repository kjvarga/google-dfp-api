# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:40:57.

require 'ads_common/savon_service'
require 'dfp_api/v201211/company_service_registry'

module DfpApi; module V201211; module CompanyService
  class CompanyService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201211'
      super(config, endpoint, namespace, :v201211)
    end

    def create_companies(*args, &block)
      return execute_action('create_companies', args, &block)
    end

    def create_company(*args, &block)
      return execute_action('create_company', args, &block)
    end

    def get_companies_by_statement(*args, &block)
      return execute_action('get_companies_by_statement', args, &block)
    end

    def get_company(*args, &block)
      return execute_action('get_company', args, &block)
    end

    def update_companies(*args, &block)
      return execute_action('update_companies', args, &block)
    end

    def update_company(*args, &block)
      return execute_action('update_company', args, &block)
    end

    private

    def get_service_registry()
      return CompanyServiceRegistry
    end

    def get_module()
      return DfpApi::V201211::CompanyService
    end
  end
end; end; end
