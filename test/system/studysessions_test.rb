require "application_system_test_case"

class StudysessionsTest < ApplicationSystemTestCase
  setup do
    @studysession = studysessions(:one)
  end

  test "visiting the index" do
    visit studysessions_url
    assert_selector "h1", text: "Studysessions"
  end

  test "creating a Studysession" do
    visit studysessions_url
    click_on "New Studysession"

    fill_in "Category", with: @studysession.category
    fill_in "Content", with: @studysession.content
    fill_in "Duration", with: @studysession.duration
    fill_in "Intensity", with: @studysession.intensity
    fill_in "Name", with: @studysession.name
    fill_in "Studytype", with: @studysession.studytype
    click_on "Create Studysession"

    assert_text "Studysession was successfully created"
    click_on "Back"
  end

  test "updating a Studysession" do
    visit studysessions_url
    click_on "Edit", match: :first

    fill_in "Category", with: @studysession.category
    fill_in "Content", with: @studysession.content
    fill_in "Duration", with: @studysession.duration
    fill_in "Intensity", with: @studysession.intensity
    fill_in "Name", with: @studysession.name
    fill_in "Studytype", with: @studysession.studytype
    click_on "Update Studysession"

    assert_text "Studysession was successfully updated"
    click_on "Back"
  end

  test "destroying a Studysession" do
    visit studysessions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Studysession was successfully destroyed"
  end
end
