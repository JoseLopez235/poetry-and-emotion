require "rails_helper"

RSpec.describe IbmApiService do
  describe "Methods" do
    it "search_tones" do
      tone = IbmApiService.search_tone("I met a traveller from an antique land,
      Who said: Two vast and trunkless legs of stone,
      Stand in the desert. Near them on the sand,
      Half sunk, a shattered visage lies, whose frown,
      And wrinkled lip and sneer of cold command,
      Tell that its sculptor well those passions read,
      Which yet survive, stamped on these lifeless things,
      The hand that mocked them and the heart that fed.,
      And on the pedestal these words appear:,
      'My name is Ozymandias, King of Kings:,
      Look on my works, ye mighty, and despair!',
      Nothing beside remains. Round the decay,
      Of that colossal wreck, boundless and bare,
      The lone and level sands stretch far away\.")

      expect(tone.count).to eq(2)

      expect(tone).to be_a(Hash)

    end
  end
end
