class Tabnews
  include HTTParty
  base_uri 'https://www.tabnews.com.br/api/v1'

  def initialize
    @options = {}
  end

  def general
    self.class.get('/contents/barretogustavo')
  end

  def show(id)
    self.class.get("/contents/barretogustavo/#{id}")
  end
  
end
