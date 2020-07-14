class SearchResults
  def self.default_members(nation)
    json = AirbenderService.new.default_members(nation)
    collect_members(json)
  end

  def self.all_members(nation)
    json = AirbenderService.new.all_members(nation)
    collect_members(json)
  end

  def self.collect_members(members_info)
    members_info.map { |member_info| Member.new(member_info) }
  end
end
