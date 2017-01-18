class Web
  def call(env)
    request = Rack::Request.new(env)
    case request.path
    when '/working'
      Rack::Response.new('Working')
    else
      Rack::Response.new('Not Found', 404)
    end
  end
end
