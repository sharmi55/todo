require 'rails_helper'

RSpec.describe List, type: :model do
  let(:list) { List.create!(title: "New List Title", body: "New List Body") }

  describe "attributes" do
    it "responds to title" do
        expect(list).to respond_to(:title)
    end

    it "reponds to body" do
      expect(list).to respond_to(:body)
    end
  end
end
