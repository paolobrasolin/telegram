module Telegram
  module Bot
    module Methods
      # Use this method to specify a url and receive incoming updates via an outgoing webhook. Whenever there is an update for the bot, we will send an HTTPS POST request to the specified url, containing a JSON-serialized Update. In case of an unsuccessful request, we will give up after a reasonable amount of attempts. Returns true.
      #
      # If you'd like to make sure that the Webhook request comes from Telegram, we recommend using a secret path in the URL, e.g. <code>https://www.example.com/&lt;token&gt;</code>. Since nobody else knows your bot‘s token, you can be pretty sure it’s us.
      #
      # *Notes**1.* You will not be able to receive updates using getUpdates for as long as an outgoing webhook is set up.*2.* To use a self-signed certificate, you need to upload your {https://core.telegram.org/bots/self-signed public key certificate} using _certificate_ parameter. Please upload as InputFile, sending a String will not work.*3.* Ports currently supported _for Webhooks_: *443, 80, 88, 8443*. *NEW!* If you're having any trouble setting up webhooks, please check out this {https://core.telegram.org/bots/webhooks amazing guide to Webhooks}.
      #
      # @param url [String] HTTPS url to send updates to. Use an empty string to remove webhook integration
      # @param certificate [InputFile] Upload your public key certificate so that the root certificate in use can be checked. See our {https://core.telegram.org/bots/self-signed self-signed guide} for details.
      # @param max_connections [Integer] Maximum allowed number of simultaneous HTTPS connections to the webhook for update delivery, 1-100. Defaults to _40_. Use lower values to limit the load on your bot‘s server, and higher values to increase your bot’s throughput.
      # @param allowed_updates [Array<String>] List the types of updates you want your bot to receive. For example, specify [“message”, “edited_channel_post”, “callback_query”] to only receive updates of these types. See Update for a complete list of available update types. Specify an empty list to receive all updates regardless of type (default). If not specified, the previous setting will be used.<br><br>Please note that this parameter doesn't affect updates created before the call to the setWebhook, so unwanted updates may be received for a short period of time.
      def self.set_webhook(
        url:,
        certificate: nil,
        max_connections: nil,
        allowed_updates: nil
      )
      end
    end
  end
end
