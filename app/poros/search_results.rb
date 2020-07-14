class SearchResults
  def self.default_members(nation)
    json = AirbenderService.new.members(nation)
  end

  def self.all_members(nation)
    json = AirbenderService.new.all_members(nation)
  end
end
