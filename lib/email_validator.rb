# encoding: utf-8
class EmailValidator

  VALID_EMAIL_REGEX = /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i

  def self.valid?(emails)
    # Teste para argumento nulo. Caso eu passe apenas espaço em branco, a REGEX já cobre isso.
    # should return false when given nil or empty strings
    return false if emails.nil? || emails.empty?
    # Separando os emails quando passado mais de 1.
    emails.split(',').each do |email|
      return false unless email.strip =~ VALID_EMAIL_REGEX
    end
    true
  end

end
