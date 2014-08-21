# Encoding: utf-8
#
# Authors:: api.nicholaschen@gmail.com  (Nicholas Chen)
#
# Copyright:: Copyright 2014, Google Inc. All Rights Reserved.
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
# FilterStatement object to allow for simpler query pagination logic.

module DfpApiStatement

  SUGGESTED_PAGE_LIMIT = 500

  # A statement object for PQL and get*ByStatement queries.
  class FilterStatement
    # Constructor for a Filter Statement.
    def initialize(query_statement='', values=nil, limit=SUGGESTED_PAGE_LIMIT,
                   offset=0)
      @query_statement = query_statement
      @values = values
      @limit = limit
      @offset = offset
    end

    attr_accessor :limit
    attr_accessor :offset

    def toStatement()
      statement = @query_statement + ' LIMIT %d OFFSET %d' % [@limit, @offset]
      return {:query => statement, :values => @values}
    end
  end
end
