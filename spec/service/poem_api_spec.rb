require "rails_helper"

RSpec.describe PoemApiService do
  describe "Methods" do
    it "search_poems" do
      poems = PoemApiService.search_poems("Shakespeare")

      expect(poems.count).to eq(10)

      expect(poems[0][:title]).to eq("A Lover's Complaint")

      expect(poems[0][:author]).to eq("William Shakespeare")

      expect(poems[0][:lines][0]).to be_a(String)

    end
  end
end
