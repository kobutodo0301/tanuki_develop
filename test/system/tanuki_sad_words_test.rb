require "application_system_test_case"

class TanukiSadWordsTest < ApplicationSystemTestCase
  setup do
    @tanuki_sad_word = tanuki_sad_words(:one)
  end

  test "visiting the index" do
    visit tanuki_sad_words_url
    assert_selector "h1", text: "Tanuki Sad Words"
  end

  test "creating a Tanuki sad word" do
    visit tanuki_sad_words_url
    click_on "New Tanuki Sad Word"

    fill_in "Sad word", with: @tanuki_sad_word.sad_word
    fill_in "User", with: @tanuki_sad_word.user_id
    click_on "Create Tanuki sad word"

    assert_text "Tanuki sad word was successfully created"
    click_on "Back"
  end

  test "updating a Tanuki sad word" do
    visit tanuki_sad_words_url
    click_on "Edit", match: :first

    fill_in "Sad word", with: @tanuki_sad_word.sad_word
    fill_in "User", with: @tanuki_sad_word.user_id
    click_on "Update Tanuki sad word"

    assert_text "Tanuki sad word was successfully updated"
    click_on "Back"
  end

  test "destroying a Tanuki sad word" do
    visit tanuki_sad_words_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tanuki sad word was successfully destroyed"
  end
end
