class Application
  
def call(env)
  resp = Rack::Response.new
  req = Rack::Request.new(env)
  
  if req.path =="/items"
    resp.write "#{item} costs $#{price}"
  else
    resp.write "route not found"
    resp.status = 404
  end
  resp.finish
end  
  
  
end