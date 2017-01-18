require_relative '../lib/web.rb'
require_relative 'test_helper.rb'

class AppTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Web.new
  end

  def test_working_returns_success
    get '/working'
    assert last_response.ok?
  end

  def test_not_found_page
    get '/invalid-page'
    assert last_response.status == 404
  end
end
