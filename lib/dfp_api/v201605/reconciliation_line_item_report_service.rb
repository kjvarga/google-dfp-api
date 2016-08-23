# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.12.3 on 2016-08-09 15:51:23.

require 'ads_common/savon_service'
require 'dfp_api/v201605/reconciliation_line_item_report_service_registry'

module DfpApi; module V201605; module ReconciliationLineItemReportService
  class ReconciliationLineItemReportService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201605'
      super(config, endpoint, namespace, :v201605)
    end

    def get_reconciliation_line_item_reports_by_statement(*args, &block)
      return execute_action('get_reconciliation_line_item_reports_by_statement', args, &block)
    end

    def get_reconciliation_line_item_reports_by_statement_to_xml(*args)
      return get_soap_xml('get_reconciliation_line_item_reports_by_statement', args)
    end

    def update_reconciliation_line_item_reports(*args, &block)
      return execute_action('update_reconciliation_line_item_reports', args, &block)
    end

    def update_reconciliation_line_item_reports_to_xml(*args)
      return get_soap_xml('update_reconciliation_line_item_reports', args)
    end

    private

    def get_service_registry()
      return ReconciliationLineItemReportServiceRegistry
    end

    def get_module()
      return DfpApi::V201605::ReconciliationLineItemReportService
    end
  end
end; end; end
