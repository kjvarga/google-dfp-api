# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.6 on 2014-05-19 16:43:58.

require 'ads_common/savon_service'
require 'dfp_api/v201311/activity_service_registry'

module DfpApi; module V201311; module ActivityService
  class ActivityService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201311'
      super(config, endpoint, namespace, :v201311)
    end

    def create_activities(*args, &block)
      return execute_action('create_activities', args, &block)
    end

    def create_activity(*args, &block)
      return execute_action('create_activity', args, &block)
    end

    def get_activities_by_statement(*args, &block)
      return execute_action('get_activities_by_statement', args, &block)
    end

    def get_activity(*args, &block)
      return execute_action('get_activity', args, &block)
    end

    def update_activities(*args, &block)
      return execute_action('update_activities', args, &block)
    end

    def update_activity(*args, &block)
      return execute_action('update_activity', args, &block)
    end

    private

    def get_service_registry()
      return ActivityServiceRegistry
    end

    def get_module()
      return DfpApi::V201311::ActivityService
    end
  end
end; end; end
