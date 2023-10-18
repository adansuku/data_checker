# spec/card_validator_spec.rb

require "./lib/data_checker/card_validator"

RSpec.describe DataChecker::CardValidator do
  describe ".valid?" do
    context "with a valid Visa card number" do
      it "returns true" do
        expect(DataChecker::CardValidator.valid?("4111 1111 1111 1111")).to be(true)
      end
    end

    context "with an invalid Visa card number" do
      it "returns false" do
        expect(DataChecker::CardValidator.valid?("4111 1111 1111 1112")).to be(false)
      end
    end

    context "with a non-digit character in the card number" do
      it "returns true" do
        expect(DataChecker::CardValidator.valid?("4111-1111-1111-1111")).to be(true)
      end
    end
  end
end
