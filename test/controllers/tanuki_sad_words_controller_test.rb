require 'test_helper'

class TanukiSadWordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tanuki_sad_word = tanuki_sad_words(:one)
  end

  test "should get index" do
    get tanuki_sad_words_url
    assert_response :success
  end

  test "should get new" do
    get new_tanuki_sad_word_url
    assert_response :success
  end

  test "should create tanuki_sad_word" do
    assert_difference('TanukiSadWord.count') do
      post tanuki_sad_words_url, params: { tanuki_sad_word: { sad_word: @tanuki_sad_word.sad_word, user_id: @tanuki_sad_word.user_id } }
    end

    assert_redirected_to tanuki_sad_word_url(TanukiSadWord.last)
  end

  test "should show tanuki_sad_word" do
    get tanuki_sad_word_url(@tanuki_sad_word)
    assert_response :success
  end

  test "should get edit" do
    get edit_tanuki_sad_word_url(@tanuki_sad_word)
    assert_response :success
  end

  test "should update tanuki_sad_word" do
    patch tanuki_sad_word_url(@tanuki_sad_word), params: { tanuki_sad_word: { sad_word: @tanuki_sad_word.sad_word, user_id: @tanuki_sad_word.user_id } }
    assert_redirected_to tanuki_sad_word_url(@tanuki_sad_word)
  end

  test "should destroy tanuki_sad_word" do
    assert_difference('TanukiSadWord.count', -1) do
      delete tanuki_sad_word_url(@tanuki_sad_word)
    end

    assert_redirected_to tanuki_sad_words_url
  end
end
