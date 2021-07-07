class Application
  def call(env)
    resp = Rack::Response.new
    resp.write "Good #{Time.now.hour<12?'Morning':'Afternoon'}!"
    resp.finish
  end
end