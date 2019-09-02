module BrazeRuby
  module REST
    class TriggerCampaignSend < Base
      attr_reader :api_key, :params

      def initialize(api_key, braze_url, **params)
        @api_key = api_key
        @params = params
        super braze_url
      end

      def perform
        http.post('/campaigns/trigger/send', {
          'api_key': api_key,
          **@params
        })
      end
    end
  end
end
