# spec/email_validator_spec.rb
require "./lib/data_checker/email_validator"

RSpec.describe DataChecker::EmailValidator do
  describe ".valid?" do
    context "with a valid email" do
      it "returns true" do
        expect(DataChecker::EmailValidator.valid?("user@example.com")).to be(true)
      end
    end

    context "with an invalid email" do
      it "returns false" do
        expect(DataChecker::EmailValidator.valid?("invalid_email")).to be(false)
      end
    end

    context "with a valid email containing special characters" do
      it "returns true" do
        expect(DataChecker::EmailValidator.valid?("user.name+tag@example.co.uk")).to be(true)
      end
    end

    context "with an email missing the @ symbol" do
      it "returns false" do
        expect(DataChecker::EmailValidator.valid?("userexample.com")).to be(false)
      end
    end

    context "with an email missing the domain" do
      it "returns false" do
        expect(DataChecker::EmailValidator.valid?("user@.com")).to be(false)
      end
    end
  end
end
