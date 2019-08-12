class Application

  def call(env)
    resp = Rack::Response.new
    time=gets
    resp.write #(name)
    if(time>=12)
      return "good afternoon"
    if(time<12)
      return "good morning"
    resp.finish
  end

end
