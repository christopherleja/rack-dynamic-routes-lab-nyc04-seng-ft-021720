class Application
  
def call
  resp = Rack::Response.new
  req = Rack::Request.new(env)
  
  if req.path =="/items"
    resp.write "#{item} costs $#{price}"
  else
    resp.write "404"
end  
  
  
end