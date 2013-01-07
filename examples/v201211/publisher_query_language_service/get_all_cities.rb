#!/usr/bin/env ruby
# Encoding: utf-8
#
# Author:: api.dklimkin@gmail.com (Danial Klimkin)
#
# Copyright:: Copyright 2011, Google Inc. All Rights Reserved.
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
# This example gets first 500 cities available to target. A full list of
# available tables can be found at:
#
# https://developers.google.com/doubleclick-publishers/docs/reference/v201204/PublisherQueryLanguageService
#
# Tags: PublisherQueryLanguageService.select

require 'dfp_api'

API_VERSION = :v201211
# A string to separate columns in output. Use "," to get CSV.
COLUMN_SEPARATOR = "\t"
PAGE_SIZE = 500

def get_all_cities()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the PublisherQueryLanguageService.
  pql_service = dfp.service(:PublisherQueryLanguageService, API_VERSION)

  # Create a statement to select all targetable cities. For criteria that do not
  # have a "targetable" property, the predicate may be left off.
  statement_text =
      'SELECT * FROM City WHERE targetable = true LIMIT %d' % PAGE_SIZE

  # Set initial values for paging.
  offset, result_set, all_rows = 0, nil, 0

  # Get all cities with paging.
  begin
    # Create statement for a page.
    statement = {
        :query => statement_text + ' OFFSET %d' % offset
    }
    result_set = pql_service.select(statement)

    if result_set
      # Print out columns header.
      columns = result_set[:column_types].collect {|col| col[:label_name]}
      puts columns.join(COLUMN_SEPARATOR)

      # Print out every row.
      result_set[:rows].each do |row_set|
          row = row_set[:values].collect {|item| item[:value]}
          puts row.join(COLUMN_SEPARATOR)
      end
    end

    # Update the counters.
    offset += PAGE_SIZE
    all_rows += result_set[:rows].size
  end while result_set[:rows].size == PAGE_SIZE

  # Print a footer.
  if result_set[:rows]
    puts "Total number of rows found: %d" % all_rows
  end
end

if __FILE__ == $0
  begin
    get_all_cities()

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
