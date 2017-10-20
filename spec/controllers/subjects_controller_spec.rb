require "rails_helper"

RSpec.describe SubjectsController, type: :controller do
  describe "GET show" do
    let!(:user) {FactoryGirl.create :user}
    let!(:course) {FactoryGirl.create :course}
    let!(:subject) {FactoryGirl.create :subject}
    it "show success" do
      get :show, params: {user_id: user.id, course_id: course.id, id: subject.id}
      expect(response).to be_present
    end
  end
end