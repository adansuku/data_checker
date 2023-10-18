# email_validator.rb

require_relative "version"

module DataChecker
  class EmailValidator
    EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    def self.valid?(email)
      email.match?(EMAIL_REGEX)
    end
  end
end
