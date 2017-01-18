class Web
  def call(env)
    request = Rack::Request.new(env)
    case request.path
    when '/working'
      Rack::Response.new('Working')
    when '/hello'
      Rack::Response.new('Hello World')
    else
      Rack::Response.new('Not Fount', 404)
    end
  end
end
