require "active_support/core_ext/class/attribute_accessors"
require "active_support/ordered_hash"
require "luhney_bin"

module CreditOfficer
  class CreditCard < Base
    PROVIDERS_AND_FORMATS = [
      ['visa'               , /^4\d{12}(\d{3})?$/],
      ['master'             , /^(5[1-5]\d{4}|677189)\d{10}$/],
      ['discover'           , /^(6011|65\d{2}|64[4-9]\d)\d{12}|(62\d{14})$/],
      ['american_express'   , /^3[47]\d{13}$/],
      ['diners_club'        , /^3(0[0-5]|[68]\d)\d{11}$/],
      ['jcb'                , /^35(28|29|[3-8]\d)\d{12}$/],
      ['switch'             , /^6759\d{12}(\d{2,3})?$/],
      ['solo'               , /^6767\d{12}(\d{2,3})?$/],
      ['dankort'            , /^5019\d{12}$/],
      ['maestro'            , /^(5[06-8]|6\d)\d{10,17}$/],
      ['forbrugsforeningen' , /^600722\d{10}$/],
      ['laser'              , /^(6304|6706|6771|6709)\d{8}(\d{4}|\d{6,7})?$/]
    ].inject(ActiveSupport::OrderedHash.new) do |ordered_hash, name_format_pair|
      ordered_hash[name_format_pair[0]] = name_format_pair[1]
      ordered_hash
    end
    
    attr_accessor :number
    attr_accessor :name_on_card
    attr_accessor :expiration_month
    attr_accessor :expiration_year
    attr_accessor :verification_value
    attr_accessor :provider_name
    
    alias_method :brand, :provider_name
    
    validates_presence_of :number
    validates_presence_of :name_on_card
    
    validates_presence_of :verification_value, 
      :if => proc{|p| p.class.verification_value_required? }
    
    validates_inclusion_of :expiration_month, 
      :in => 1..12
    
    validates_inclusion_of :provider_name,
      :in => PROVIDERS_AND_FORMATS.keys
    
    validates_presence_of :expiration_year
    
    validate :expiration_date_is_in_future
    validate :expiration_date_is_in_recent_future
    validate :number_is_valid
    
    cattr_accessor :require_verification_value
    self.require_verification_value = true

    def self.verification_value_required?
      require_verification_value
    end
    
    def expiration_date
      ExpirationDate.new(:month => expiration_month, 
        :year => expiration_year)
    end
    
    def provider_name=(provider)
      unless provider.nil?
        @provider_name = provider.downcase
      end
    end
    
    protected
    def expiration_date_is_in_future
      if expiration_date.expired?
        errors.add(:expiration_year, translate(:expired, :scope => [:credit_officer, :errors, :messages], :default => "is expired"))
      end
    end
    
    def expiration_date_is_in_recent_future
      if expiration_date.exceeds_recent_future?
        errors.add(:expiration_year, translate(:exceeds_recent_future, :scope => [:credit_officer, :errors, :messages], :default => "is not a valid year"))
      end
    end
    
    def number_is_valid
      if provider_name.present? && number.present? 
        if PROVIDERS_AND_FORMATS[provider_name].nil? || !(number =~ PROVIDERS_AND_FORMATS[provider_name]) || !checksum_valid?
          errors.add(:number, translate(:invalid_format, :scope => [:credit_officer, :errors,  :messages], :default => "is not a valid card number"))
        end
      end
    end

    def checksum_valid?
      LuhneyBin.validate(number)
    end
  end
end
