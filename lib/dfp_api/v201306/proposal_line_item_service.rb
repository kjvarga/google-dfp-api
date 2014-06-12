# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:42:53.

require 'ads_common/savon_service'
require 'dfp_api/v201306/proposal_line_item_service_registry'

module DfpApi; module V201306; module ProposalLineItemService
  class ProposalLineItemService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201306'
      super(config, endpoint, namespace, :v201306)
    end

    def create_proposal_line_item(*args, &block)
      return execute_action('create_proposal_line_item', args, &block)
    end

    def create_proposal_line_items(*args, &block)
      return execute_action('create_proposal_line_items', args, &block)
    end

    def get_proposal_line_item(*args, &block)
      return execute_action('get_proposal_line_item', args, &block)
    end

    def get_proposal_line_items_by_statement(*args, &block)
      return execute_action('get_proposal_line_items_by_statement', args, &block)
    end

    def perform_proposal_line_item_action(*args, &block)
      return execute_action('perform_proposal_line_item_action', args, &block)
    end

    def update_proposal_line_item(*args, &block)
      return execute_action('update_proposal_line_item', args, &block)
    end

    def update_proposal_line_items(*args, &block)
      return execute_action('update_proposal_line_items', args, &block)
    end

    private

    def get_service_registry()
      return ProposalLineItemServiceRegistry
    end

    def get_module()
      return DfpApi::V201306::ProposalLineItemService
    end
  end
end; end; end
