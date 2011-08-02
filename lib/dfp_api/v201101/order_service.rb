#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.0 on 2011-08-02 15:32:27.

require 'ads_common/savon_service'
require 'dfp_api/v201101/order_service_registry'

module DfpApi; module V201101; module OrderService
  class OrderService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201101'
      super(api, endpoint, namespace, :v201101)
    end

    def get_orders_by_statement(*args)
      return execute_action('get_orders_by_statement', args)
    end

    def perform_order_action(*args)
      return execute_action('perform_order_action', args)
    end

    def update_order(*args)
      return execute_action('update_order', args)
    end

    def create_order(*args)
      return execute_action('create_order', args)
    end

    def update_orders(*args)
      return execute_action('update_orders', args)
    end

    def create_orders(*args)
      return execute_action('create_orders', args)
    end

    def get_order(*args)
      return execute_action('get_order', args)
    end

    private

    def get_service_registry()
      return OrderServiceRegistry
    end

    def get_module()
      return DfpApi::V201101::OrderService
    end
  end
end; end; end
