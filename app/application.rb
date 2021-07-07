class Application

  def call(env)
    resp = Rack::Response.new
    
    time = Time.now.hour < 12
    if time
      resp.write("Good Morning!")
    else
      resp.write("Good Afternoon!")
    end


    resp.finish
  end

end
