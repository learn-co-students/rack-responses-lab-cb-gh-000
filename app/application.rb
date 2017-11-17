class Application

def call(even)
  resp = Rack::Response.new
  time1 = Time.now
  if time1.hour.between?(0,12)
    resp.write "Good Morning!"
  else
    resp.write "Good Afternoon!"
  end
  resp.finish


end
end
