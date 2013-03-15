# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.9.3 on 2013-03-13 15:21:06.

require 'ads_common/savon_service'
require 'dfp_api/v201302/user_team_association_service_registry'

module DfpApi; module V201302; module UserTeamAssociationService
  class UserTeamAssociationService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201302'
      super(config, endpoint, namespace, :v201302)
    end

    def create_user_team_association(*args, &block)
      return execute_action('create_user_team_association', args, &block)
    end

    def create_user_team_associations(*args, &block)
      return execute_action('create_user_team_associations', args, &block)
    end

    def get_user_team_association(*args, &block)
      return execute_action('get_user_team_association', args, &block)
    end

    def get_user_team_associations_by_statement(*args, &block)
      return execute_action('get_user_team_associations_by_statement', args, &block)
    end

    def perform_user_team_association_action(*args, &block)
      return execute_action('perform_user_team_association_action', args, &block)
    end

    def update_user_team_association(*args, &block)
      return execute_action('update_user_team_association', args, &block)
    end

    def update_user_team_associations(*args, &block)
      return execute_action('update_user_team_associations', args, &block)
    end

    private

    def get_service_registry()
      return UserTeamAssociationServiceRegistry
    end

    def get_module()
      return DfpApi::V201302::UserTeamAssociationService
    end
  end
end; end; end
