class GoodnessValidator < ActiveModel::Validator
    # def validate(record)
    #   if record.first_name == "Evil"
    #     record.errors.add :base, "This person is evil"
    #   end
    # end

    # def validate(record)
    #     if options[:fields].any? { |field| record.send(field) == "Evil" }
    #       record.errors.add :base, "This person is evil"
    #     end
    #   end

    def initialize(person)
      @person = person
    end

    def validate
      if some_complex_condition_involving_ivars_and_private_methods?
        @person.errors.add :base, "This person is evil"
      end
    end

  end


class Person < ApplicationRecord
    validates :name, presence: true, length: { minimum: 2 } #or { maximum: 500 } or { in: 6..20 } or { is: 6 }--> must equal to 6
    # validates :terms_of_service, acceptance: { message: 'must be abided' }
    validates :terms_of_service, acceptance: { accept: 'yes' }
    # validates :eula, acceptance: { accept: ['TRUE', 'accepted']
    validates :email, confirmation: true
    validates :email_confirmation, presence: true, unless: Proc.new { |a| a.email.blank? }
    # validates :name, :login, :email, presence: true
    # validates :name, :login, :email, absence: true
    validates :email, uniqueness: true, on: :account_setup
    # validates :name, uniqueness: { scope: :year,
    # message: "should happen once per year" }
    # validates :name, uniqueness: { case_sensitive: false }
    validates :name, presence: { strict: true }

    # validates_with GoodnessValidator
    # validates_with GoodnessValidator, fields: [:first_name, :last_name]
    # validate do |person|
    #     GoodnessValidator.new(person).validate
    #   end

    # validates_each :name, :surname do |record, attr, value|
    #     record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower:]]/
    # end

    validates :name,
    uniqueness: {
      # object = person object being validated
      # data = { model: "Person", attribute: "Username", value: <name> }
      message: ->(object, data) do
        "Hey #{object.name}, #{data[:value]} is already taken."
      end
    }
    # validate do |person|
    #   GoodnessValidator.new(person).validate
    # end
end
