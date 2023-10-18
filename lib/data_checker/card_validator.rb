# card_validator.rb

module CardValidator
  class Visa
    def self.valid?(card_number)
      # Remove whitespace and dashes
      card_number = card_number.gsub(/\s+|-/, '')

      # Check that the card number contains only digits
      return false unless card_number.match?(/^\d+$/)

      # Get individual digits from the card number into an array
      digits = card_number.chars.map(&:to_i)

      # Reverse the array for easier processing
      digits.reverse!

      # Apply the Luhn algorithm
      sum = 0
      digits.each_with_index do |digit, index|
        if index.odd?
          doubled_digit = digit * 2
          sum += (doubled_digit > 9) ? doubled_digit - 9 : doubled_digit
        else
          sum += digit
        end
      end

      # The card is valid if the total sum is divisible by 10
      sum % 10 == 0
    end
  end
end
