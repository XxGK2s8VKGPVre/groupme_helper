class MessagesRequest
  attr_accessor :url, :headers
  BASE_URL = ''
  
  def initialize()
    self.url = "https://api.groupme.com/v3/groups/1/messages"
    self.headers = {:content_type => :json, :params => {}}
  end
  
  def with_limit(limit)
    @headers[:params].merge!({'limit' => limit})
    self
  end
  
  def with_token(token)
    @headers[:params].merge!('token' => token)
    self
  end
  
  def with_before_id(before_id)
    @headers[:params].merge!('before_id' => before_id)
    self
  end
  
  def with_group_id(group_id)
    @url = "https://api.groupme.com/v3/groups/#{group_id}/messages"
    self
  end
  
  def ==(other)
    @url == other.url && @headers == other.headers
  end
end

def build_messages_request
  MessagesRequest.new
end