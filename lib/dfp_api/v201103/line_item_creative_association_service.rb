#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.4.0 on 2011-06-17 15:28:21.

require 'ads_common/savon_service'
require 'dfp_api/v201103/line_item_creative_association_service_registry'

module DfpApi; module V201103; module LineItemCreativeAssociationService
  class LineItemCreativeAssociationService < AdsCommon::SavonService
    def initialize(endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201103'
      super(endpoint, namespace)
    end

    def update_line_item_creative_association(*args)
      return execute_action('update_line_item_creative_association', args)
    end

    def create_line_item_creative_association(*args)
      return execute_action('create_line_item_creative_association', args)
    end

    def update_line_item_creative_associations(*args)
      return execute_action('update_line_item_creative_associations', args)
    end

    def create_line_item_creative_associations(*args)
      return execute_action('create_line_item_creative_associations', args)
    end

    def get_line_item_creative_association(*args)
      return execute_action('get_line_item_creative_association', args)
    end

    def get_line_item_creative_associations_by_statement(*args)
      return execute_action('get_line_item_creative_associations_by_statement', args)
    end

    def perform_line_item_creative_association_action(*args)
      return execute_action('perform_line_item_creative_association_action', args)
    end

    private

    def get_service_registry()
      return LineItemCreativeAssociationServiceRegistry
    end

    def get_module()
      return DfpApi::V201103::LineItemCreativeAssociationService
    end
  end
end; end; end
