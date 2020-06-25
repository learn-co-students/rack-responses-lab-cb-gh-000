class Application
def call(env)
  resp = Rack::Response.new
  time = Time.now.to_i
  #noon = Time.now.middle_of_day.to_i
  time2 = 5
  if time2 < 12
    resp.write  "Good Morning Afternoon!"
  elsif time > 12
    resp.write "Good Afternoon!"
  end
  resp.finish
end
end
