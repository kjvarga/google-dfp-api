# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2016-02-19 16:37:17.

require 'ads_common/savon_service'
require 'dfp_api/v201511/product_package_service_registry'

module DfpApi; module V201511; module ProductPackageService
  class ProductPackageService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201511'
      super(config, endpoint, namespace, :v201511)
    end

    def create_product_packages(*args, &block)
      return execute_action('create_product_packages', args, &block)
    end

    def create_product_packages_to_xml(*args)
      return get_soap_xml('create_product_packages', args)
    end

    def get_product_packages_by_statement(*args, &block)
      return execute_action('get_product_packages_by_statement', args, &block)
    end

    def get_product_packages_by_statement_to_xml(*args)
      return get_soap_xml('get_product_packages_by_statement', args)
    end

    def perform_product_package_action(*args, &block)
      return execute_action('perform_product_package_action', args, &block)
    end

    def perform_product_package_action_to_xml(*args)
      return get_soap_xml('perform_product_package_action', args)
    end

    def update_product_packages(*args, &block)
      return execute_action('update_product_packages', args, &block)
    end

    def update_product_packages_to_xml(*args)
      return get_soap_xml('update_product_packages', args)
    end

    private

    def get_service_registry()
      return ProductPackageServiceRegistry
    end

    def get_module()
      return DfpApi::V201511::ProductPackageService
    end
  end
end; end; end
