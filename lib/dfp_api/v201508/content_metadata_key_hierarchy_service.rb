# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2015, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.11.2 on 2016-02-19 16:35:56.

require 'ads_common/savon_service'
require 'dfp_api/v201508/content_metadata_key_hierarchy_service_registry'

module DfpApi; module V201508; module ContentMetadataKeyHierarchyService
  class ContentMetadataKeyHierarchyService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201508'
      super(config, endpoint, namespace, :v201508)
    end

    def create_content_metadata_key_hierarchies(*args, &block)
      return execute_action('create_content_metadata_key_hierarchies', args, &block)
    end

    def create_content_metadata_key_hierarchies_to_xml(*args)
      return get_soap_xml('create_content_metadata_key_hierarchies', args)
    end

    def get_content_metadata_key_hierarchies_by_statement(*args, &block)
      return execute_action('get_content_metadata_key_hierarchies_by_statement', args, &block)
    end

    def get_content_metadata_key_hierarchies_by_statement_to_xml(*args)
      return get_soap_xml('get_content_metadata_key_hierarchies_by_statement', args)
    end

    def perform_content_metadata_key_hierarchy_action(*args, &block)
      return execute_action('perform_content_metadata_key_hierarchy_action', args, &block)
    end

    def perform_content_metadata_key_hierarchy_action_to_xml(*args)
      return get_soap_xml('perform_content_metadata_key_hierarchy_action', args)
    end

    def update_content_metadata_key_hierarchies(*args, &block)
      return execute_action('update_content_metadata_key_hierarchies', args, &block)
    end

    def update_content_metadata_key_hierarchies_to_xml(*args)
      return get_soap_xml('update_content_metadata_key_hierarchies', args)
    end

    private

    def get_service_registry()
      return ContentMetadataKeyHierarchyServiceRegistry
    end

    def get_module()
      return DfpApi::V201508::ContentMetadataKeyHierarchyService
    end
  end
end; end; end
