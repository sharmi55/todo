require 'rails_helper'

RSpec.describe Item, type: :model do
  let(:item) { Item.create!(body: "New Item") }

  describe "attributes" do
    it "responds to body" do
      expect(item).to respond_to(:body)
    end
  end
end
