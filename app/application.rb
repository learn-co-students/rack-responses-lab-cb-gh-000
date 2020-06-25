
class Application

  def call(env)

    resp =  Rack::Response.new
     time =  Time.now
     hr = time.strftime("%H").to_i


     if hr<=12
       resp.write "Good Morning!"
     else
       resp.write "Good Afternoon!"
     end
     resp.finish

   end
end
