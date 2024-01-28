# rubocop: disable all
require "application_system_test_case"

class QuestionsTest < ApplicationSystemTestCase
  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in 'question', with: 'Hello?'
    click_on 'Ask!'
    take_screenshot

    assert_selector 'h5', text: "Silly question, get dressed and go to work!!!!"
  end
end
