class AirbenderService
  def initialize
    @nation = {
      fire_nation: "Fire+Nation",
      
    }
  def default_members(nation)
    conn.get('api/v1/characters')
  end

  def conn
    Faraday.new('https://last-airbender-api.herokuapp.com')
  end
end
