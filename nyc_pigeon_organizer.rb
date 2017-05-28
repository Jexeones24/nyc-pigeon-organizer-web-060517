require 'pry'
#def nyc_pigeon_organizer(data)
#  pigeon_hash = {}
#  data.map do |k, v|
#
#end

=begin
-use conditionals
-get names
-consolidate names, retain symbols pointing to them
-set as keys of hash
-convert to string
-keys in hash will be three symbols
-values are arrays of string values


pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
=end
def nyc_pigeon_organizer(pigeon_data)
  pigeon_list = {}
  pigeon_data.each do |attribute, hash|
    hash.each do |value, names|
      names.map do |name|
        if pigeon_list[name]
          if pigeon_list[name][attribute.to_sym]
            #binding.pry
            pigeon_list[name][attribute.to_sym] << value.to_s
            #binding.pry
          else
            pigeon_list[name][attribute.to_sym] = [value.to_s]
            #binding.pry
          end
        else
          pigeon_list[name] = {attribute.to_sym => [value.to_s]}
          #binding.pry
        end
      end
    end
  end
  pigeon_list
end
