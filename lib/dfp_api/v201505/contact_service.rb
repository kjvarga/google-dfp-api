# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2015-11-18 12:15:05.

require 'ads_common/savon_service'
require 'dfp_api/v201505/contact_service_registry'

module DfpApi; module V201505; module ContactService
  class ContactService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201505'
      super(config, endpoint, namespace, :v201505)
    end

    def create_contacts(*args, &block)
      return execute_action('create_contacts', args, &block)
    end

    def create_contacts_to_xml(*args)
      return get_soap_xml('create_contacts', args)
    end

    def get_contacts_by_statement(*args, &block)
      return execute_action('get_contacts_by_statement', args, &block)
    end

    def get_contacts_by_statement_to_xml(*args)
      return get_soap_xml('get_contacts_by_statement', args)
    end

    def update_contacts(*args, &block)
      return execute_action('update_contacts', args, &block)
    end

    def update_contacts_to_xml(*args)
      return get_soap_xml('update_contacts', args)
    end

    private

    def get_service_registry()
      return ContactServiceRegistry
    end

    def get_module()
      return DfpApi::V201505::ContactService
    end
  end
end; end; end
