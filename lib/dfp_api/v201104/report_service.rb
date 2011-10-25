#!/usr/bin/ruby
# This is auto-generated code, changes will be overwritten.
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License,Version 2.0 (the "License").
#
# Code generated by AdsCommon library 0.5.3 on 2011-10-24 17:28:18.

require 'ads_common/savon_service'
require 'dfp_api/v201104/report_service_registry'

module DfpApi; module V201104; module ReportService
  class ReportService < AdsCommon::SavonService
    def initialize(api, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201104'
      super(api, endpoint, namespace, :v201104)
    end

    def get_report_job(*args, &block)
      return execute_action('get_report_job', args, &block)
    end

    def run_report_job(*args, &block)
      return execute_action('run_report_job', args, &block)
    end

    def get_report_download_url(*args, &block)
      return execute_action('get_report_download_url', args, &block)
    end

    private

    def get_service_registry()
      return ReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201104::ReportService
    end
  end
end; end; end
