class AirbenderService
  def initialize
    @nation = {
      'air_nomads' => 'Air Nomads',
      'earth_kingdom' => 'Earth Kingdom',
      'fire_nation' => 'Fire Nation',
      'water_tribes' => 'Water Tribes'
    }
  end

  def default_members(nation)
    response = conn.get("api/v1/characters") do |req|
      req.params['affiliation'] = @nation[nation]
    end
    
    JSON.parse(response.body, symbolize_names: true)
  end

  def all_members(nation)
    response = conn.get("api/v1/characters") do |req|
      req.params['perPage'] = 100
      req.params['affiliation'] = @nation[nation]
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end
end
