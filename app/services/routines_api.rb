class RoutinesAPI
  include HTTParty
  base_uri ENV['AF_ROUTINES_ENDPOINT']

  def initalize
  end

  #
  ## GET All Routines from API
  def routines(options)
    options = options
    self.class.get('/routines', options).deep_symbolize_keys
  end

  #
  ## Get Single Routine from API
  def routine(options, routine_id)
    options = options
    self.class.get("/routines/#{routine_id}", options).deep_symbolize_keys
  end

  def new_routine(options)
    options = options
    self.class.post('/routines', options).deep_symbolize_keys
  end


end

=begin
HTTParty.post("https://www.gittip.com/#{user}/tips.json",
  {
    :body => [ { "amount" => "0.25", "platform" => "gittip", "username" => "whit537" } ].to_json,
    :basic_auth => { :username => api_key },
    :headers => { 'Content-Type' => 'application/json', 'Accept' => 'application/json'}
  })
=end
