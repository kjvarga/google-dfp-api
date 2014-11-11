# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.5 on 2014-10-29 15:59:28.

require 'ads_common/savon_service'
require 'dfp_api/v201411/reconciliation_report_service_registry'

module DfpApi; module V201411; module ReconciliationReportService
  class ReconciliationReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201411'
      super(config, endpoint, namespace, :v201411)
    end

    def get_reconciliation_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_reports_by_statement', args, &block)
    end

    def update_reconciliation_reports(*args, &block)
      return execute_action('update_reconciliation_reports', args, &block)
    end

    private

    def get_service_registry()
      return ReconciliationReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201411::ReconciliationReportService
    end
  end
end; end; end
