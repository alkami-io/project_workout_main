class RoutinesAPI
  include HTTParty
  base_uri ENV['AF_ROUTINES_ENDPOINT']

  def initalize
  end

  def routines(options)
    options = options
    self.class.get('/routines', options).deep_symbolize_keys
  end


end
