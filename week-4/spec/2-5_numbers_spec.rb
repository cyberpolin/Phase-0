require_relative "../2-5_numbers"

describe TimeConverter do

  let(:converter) { TimeConverter.new}

  describe "#convert_years_to_hours" do
    it "converts 1 year" do
      expect(converter.convert_years_to_hours(1)).to eq 8760
    end
  end

  describe "#convert_decade_to_minutes" do
    it "converts a decade into minutes" do
      expect(converter.convert_decade_to_minutes(1)).to eq 5256000
    end
  end

  describe "#age_in_seconds" do
    it "converts a given age in to seconds" do
      expect(converter.age_in_seconds(1)).to eq 31536000
    end
  end

  describe "#convert_seconds_to_year" do
    it "converts from seconds to year" do
      expect(converter.convert_seconds_to_year(31536000)).to eq 1
    end
  end

end