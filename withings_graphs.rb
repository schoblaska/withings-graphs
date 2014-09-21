class WithingsGraphs < Sinatra::Base
  use Rack::Session::Cookie, expire_after: 60 * 60 * 24 * 365,
                             secret: ENV["SESSION_SECRET"]

  use OmniAuth::Builder do
    provider :withings, ENV["WITHINGS_KEY"], ENV["WITHINGS_SECRET"]
  end

  get "/" do
    "Hello!"
  end

  get "/auth/:name/callback" do
    "Done"
  end
end
