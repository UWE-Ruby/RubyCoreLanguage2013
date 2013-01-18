##
# class to manage list of contacts
#
class Contacts

  ##
  # create a Contacts object from string of pipe delimited ("|") fields, one record per line
  # e.g. "Brandon Faloona|Seattle|WA|bfaloona@uw.edu\nBarack Obama|Washington|DC|president@wh.gov"
  #
  def initialize data
    @raw_entries = data.split("\n")
    @contacts = @raw_entries.collect do |line|
      field_values = line.split("|")
      { full_name: field_values[0],
        city: field_values[1],
        state: field_values[2],
        email: field_values[3]  }
    end
  end

  def raw_entries
    @raw_entries
  end

  ##
  # return a comma separated list of formatted email addresses
  #
  def email_list
    @raw_entries.collect do |line|
      name, city, state, email = line.split("|")
      format_email_address name, email.chomp
    end.join(", ")
  end

  ##
  # returns "Display Name" <email@address> given name and email
  #
  def format_email_address name, email
    %{\"#{name}\" <#{email}>}
  end

  #########

  def num_entries
    @raw_entries.length
  end

  def fields
    [:full_name, :city, :state, :email]
  end

  def contact index
    @contacts[index.to_i]
  end

  def format_contact contact
  end

  def all
  end

  def formatted_list
  end

  def full_names
  end

  def cities
  end

  def append_contact contact
  end

  def delete_contact index
  end

  def search string
  end

  def all_sorted_by field
  end
  
end
