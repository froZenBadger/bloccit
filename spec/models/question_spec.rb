require 'rails_helper'

RSpec.describe Question, type: :model do
  let(:question) {Question.create!(title: "New question Title", body: "New question Body", resolved: false) }

  describe "attributes" do
    it "has title and body attributes" do
      expect(question).to have_attributes(title: "New question Title", body: "New question Body", resolved: false)
    end
  end
end
