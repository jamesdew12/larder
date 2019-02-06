require 'test_helper'

class LarderdbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @larderdb = larderdbs(:one)
  end

  test "should get index" do
    get larderdbs_url
    assert_response :success
  end

  test "should get new" do
    get new_larderdb_url
    assert_response :success
  end

  test "should create larderdb" do
    assert_difference('Larderdb.count') do
      post larderdbs_url, params: { larderdb: { food: @larderdb.food, nutrition: @larderdb.nutrition } }
    end

    assert_redirected_to larderdb_url(Larderdb.last)
  end

  test "should show larderdb" do
    get larderdb_url(@larderdb)
    assert_response :success
  end

  test "should get edit" do
    get edit_larderdb_url(@larderdb)
    assert_response :success
  end

  test "should update larderdb" do
    patch larderdb_url(@larderdb), params: { larderdb: { food: @larderdb.food, nutrition: @larderdb.nutrition } }
    assert_redirected_to larderdb_url(@larderdb)
  end

  test "should destroy larderdb" do
    assert_difference('Larderdb.count', -1) do
      delete larderdb_url(@larderdb)
    end

    assert_redirected_to larderdbs_url
  end
end
