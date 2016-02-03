class GroupsRequestTest < Test::Unit::TestCase
  def test_build_groups_request_with_token
    request = GroupsRequest.new
    request.headers[:params].merge!({'token' => 'fake'})
    assert_equal request, build_groups_request.with_token('fake')
  end
  
  def test_build_groups_request_with_limit
    request = GroupsRequest.new
    request.headers[:params].merge!({'limit' => 1})
    assert_equal request, build_groups_request.with_limit(1)    
  end
end