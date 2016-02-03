class MessagesTest < Test::Unit::TestCase
  def test_build_message_request_with_limit
    request = MessagesRequest.new
    request.headers[:params].merge!({'limit' => 1})
    assert_equal request, build_messages_request.with_limit(1)
  end
  
  def test_build_message_request_with_token
    request = MessagesRequest.new
    request.headers[:params].merge!({'token' => 'fake'})
    assert_equal request, build_messages_request.with_token('fake')
  end
  
  def test_build_message_request_with_before_id
    request = MessagesRequest.new
    request.headers[:params].merge!({'before_id' => '75'})
    assert_equal request, build_messages_request.with_before_id('75')
  end
  
  def test_build_message_request_with_group_id
    request = MessagesRequest.new
    request.url = "https://api.groupme.com/v3/groups/17/messages"
    assert_equal request, build_messages_request.with_group_id('17')
  end
  
  def test_build_message_request_with_group_id_and_headers
    request = MessagesRequest.new
    request.url = "https://api.groupme.com/v3/groups/17/messages"
    request.headers[:params].merge!({'limit' => 1, 'token' => 'fake', 'before_id' => '75'})
    assert_equal request, build_messages_request.with_limit(1).with_token('fake').
      with_before_id('75').with_group_id('17')
  end
end