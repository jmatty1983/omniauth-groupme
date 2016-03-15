require 'test_helper'

module OmniAuth
  module Strategies
    class GroupmeTest < Minitest::Test
      def setup
        @strategy = OmniAuth::Strategies::Groupme.new({})
      end

      def test_its_name_is_correct
        assert_equal "groupme", @strategy.options.name
      end

      def test_client_options_sets_site
        assert_equal "https://oauth.groupme.com", @strategy.options.client_options[:site]
      end

      def test_token_params_sets_parse
        assert_equal :json, @strategy.options.token_params[:parse]
      end

      def test_sets_auth_token_params
        assert_equal :query, @strategy.options.auth_token_params[:mode]
        assert_equal :token, @strategy.options.auth_token_params[:param_name]
      end
    end
  end
end
