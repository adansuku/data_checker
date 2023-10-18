# frozen_string_literal: true

require_relative 'version'

module DataChecker
  class DniValidator
    def self.valid?(dni)
      dni_format = /^[0-9]{8}[A-Z]$/i

      if dni.match?(dni_format)
        number_part = dni[0..7].to_i
        letter_part = dni[8].upcase

        # Allowed letters
        control_letters = 'TRWAGMYFPDXBNJZSQVHLCKE'.chars

        # Calculate the letter
        expected_letter = control_letters[number_part % 23]

        # Check if it's ok
        return expected_letter == letter_part
      end

      false  # Retorna false si el formato no es válido
    end
  end
end
