class GroupsRequest
  
  attr_accessor :url, :headers
  
  def initialize
    @url = 'https://api.groupme.com/v3/groups'
    @headers = {:content_type => :json, :params => {}}
  end
  
  def ==(other)
    self.url == other.url && self.headers == other.headers
  end
  
  def with_token(token)
    @headers[:params].merge!({'token' => token})
    self
  end
  
  def with_limit(limit)
    @headers[:params].merge!({'limit' => limit})
    self
  end
end

def build_groups_request
  GroupsRequest.new
end