##
# class to manipulate csv student list
#
class ClassRoster

  ##
  # expect csv filename, which includes header row
  #
  def initialize filename
    lines = File.open(filename,'r').readlines
    @entries = lines[1..-1]
  end

  ##
  # comma separated list of email addresses
  #
  def email_list
    @entries.collect do |line|
      name, email = line.split(",")
      format_email_address name, email.chomp
    end.join(", ")
  end

  ##
  # returns "Display Name" <email@address> given name and email
  #
  def format_email_address name, email
    %{\"#{name}\" <#{email}>}
  end

end
