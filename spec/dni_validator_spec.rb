require "./lib/data_checker/dni_validator"

RSpec.describe DataChecker::DniValidator do
  describe "#valid?" do
    context "with a valid DNI" do
      it "returns true" do
        expect(DataChecker::DniValidator.valid?("12345678Z")).to be(true)
      end
    end

    context "with an invalid DNI" do
      it "returns false" do
        expect(DataChecker::DniValidator.valid?("invalid_dni")).to be(false)
      end
    end
  end
end
