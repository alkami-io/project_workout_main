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

  #
  ## Add New Routine to RoutineAPI
  def add_routine(options)
    options = options
    self.class.post('/routines', options)
  end

end
