require "application_system_test_case"

class MedicalHistoriesTest < ApplicationSystemTestCase
  setup do
    @medical_history = medical_histories(:one)
  end

  test "visiting the index" do
    visit medical_histories_url
    assert_selector "h1", text: "Medical histories"
  end

  test "should create medical history" do
    visit medical_histories_url
    click_on "New medical history"

    fill_in "Consultation date", with: @medical_history.consultation_date
    fill_in "Diagnosis", with: @medical_history.diagnosis
    fill_in "Notes", with: @medical_history.notes
    fill_in "Patient", with: @medical_history.patient_id
    click_on "Create Medical history"

    assert_text "Medical history was successfully created"
    click_on "Back"
  end

  test "should update Medical history" do
    visit medical_history_url(@medical_history)
    click_on "Edit this medical history", match: :first

    fill_in "Consultation date", with: @medical_history.consultation_date
    fill_in "Diagnosis", with: @medical_history.diagnosis
    fill_in "Notes", with: @medical_history.notes
    fill_in "Patient", with: @medical_history.patient_id
    click_on "Update Medical history"

    assert_text "Medical history was successfully updated"
    click_on "Back"
  end

  test "should destroy Medical history" do
    visit medical_history_url(@medical_history)
    click_on "Destroy this medical history", match: :first

    assert_text "Medical history was successfully destroyed"
  end
end
