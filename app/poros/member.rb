class Member
  attr_reader :name, :allies, :enemies, :photoUrl, :affiliation
  
  def initialize(member_info)
    @name = member_info[:name]
    @allies = member_info[:allies]
    @enemies = member_info[:enemies]
    @photoUrl = member_info[:photoUrl]
    @affiliation = member_info[:affiliation]
  end
end
