#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example deactivates all active line item custom fields. To determine
# which custom fields exist, run get_all_custom_fields.rb.
#
# Tags: CustomFieldService.getCustomFieldsByStatement
# Tags: CustomFieldService.performCustomFieldAction

require 'dfp_api'

API_VERSION = :v201204
PAGE_SIZE = 500

def deactivate_all_line_item_custom_fields()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the CustomFieldService.
  custom_field_service = dfp.service(:CustomFieldService, API_VERSION)

  # Create statement text to select active ad units.
  statement_text = 'WHERE entityType = :entity_type AND isActive = :is_active'
  statement = {
      :values => [
          {:key => 'entity_type',
           :value => {:value => 'LINE_ITEM', :xsi_type => 'TextValue'}},
          {:key => 'is_active',
           :value => {:value => true, :xsi_type => 'BooleanValue'}}
      ]
  }

  # Define initial values.
  offset = 0
  page = {}

  begin
    # Create a statement to get one page with the current offset.
    statement[:query] = statement_text +
        " LIMIT %d OFFSET %d" % [PAGE_SIZE, offset]

    # Get custom fields by statement.
    page = custom_field_service.get_custom_fields_by_statement(statement)

    if page[:results]
      # Increase query offset by page size.
      offset += PAGE_SIZE
      start_index = page[:start_index]

      page[:results].each_with_index do |custom_field, index|
        puts "%d) Custom field with ID: %d and name: '%s' will be deactivated" %
            [index + start_index, custom_field[:id], custom_field[:name]]
      end
    end
  end while offset < page[:total_result_set_size]

  # Update statement for action.
  statement[:query] = statement_text

  # Perform action.
  result = custom_field_service.perform_custom_field_action(
        {:xsi_type => 'DeactivateCustomFields'}, statement)

  # Display results.
  if result and result[:num_changes] > 0
    puts "Number of custom fields deactivated: %d" % result[:num_changes]
  else
    puts 'No custom fields were deactivated.'
  end
end

if __FILE__ == $0
  begin
    deactivate_all_line_item_custom_fields()

  # HTTP errors.
  rescue AdsCommon::Errors::HttpError => e
    puts "HTTP Error: %s" % e

  # API errors.
  rescue DfpApi::Errors::ApiException => e
    puts "Message: %s" % e.message
    puts 'Errors:'
    e.errors.each_with_index do |error, index|
      puts "\tError [%d]:" % (index + 1)
      error.each do |field, value|
        puts "\t\t%s: %s" % [field, value]
      end
    end
  end
end
