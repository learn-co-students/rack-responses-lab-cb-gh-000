class Application
  def call(env)
    now = Time.now()
    resp = Rack::Response.new
    if(now.hour < 12)
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end
    puts(now.hour)
    resp.finish
  end
end
