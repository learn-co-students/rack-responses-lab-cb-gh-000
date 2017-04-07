class Application

  def call(env)
    resp = Rack::Response.new


    result = Time.now.hour >= 12 ? "Afternoon" : "Morning"

    resp.write result

    resp.finish
  end

end
