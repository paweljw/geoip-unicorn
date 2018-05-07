require_relative './lib/bootstrap'

class Application
  def self.call(env)
    country = Geo.instance.lookup(env['REMOTE_ADDR'])
    response = { country: country }
    ['200', { 'Content-Type' => 'text/json' }, [response.to_json]]
  end
end

run Application
