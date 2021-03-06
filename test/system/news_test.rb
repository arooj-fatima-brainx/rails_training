require "application_system_test_case"

class NewsTest < ApplicationSystemTestCase
  setup do
    @news = news(:one)
  end

  test "visiting the index" do
    visit news_url
    assert_selector "h1", text: "News"
  end

  test "creating a New" do
    visit news_url
    click_on "New New"

    click_on "Create New"

    assert_text "New was successfully created"
    click_on "Back"
  end

  test "updating a New" do
    visit news_url
    click_on "Edit", match: :first

    click_on "Update New"

    assert_text "New was successfully updated"
    click_on "Back"
  end

  test "destroying a New" do
    visit news_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "New was successfully destroyed"
  end
end
