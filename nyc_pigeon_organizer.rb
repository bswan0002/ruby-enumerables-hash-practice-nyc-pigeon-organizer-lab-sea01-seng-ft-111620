

def nyc_pigeon_organizer(pigeon_data)
  myHash = {}
  
  pigeon_data[:gender].each_value do |arrNames|
    arrNames.each do |name|
      myHash[name] = {
      :color => pigeon_data[:color].keys.map { |key| key.to_s if pigeon_data[:color][key].include?(name)}.compact,
      :gender => pigeon_data[:gender].keys.map { |key| key.to_s if pigeon_data[:gender][key].include?(name)}.compact,
      :lives => pigeon_data[:lives].keys.map { |key| key.to_s if pigeon_data[:lives][key].include?(name)}.compact
      }
    end
  end
  myHash
end


def nyc_pigeon_organizer(data)
  
 organized_list={}
 
 data.each do |outer_key,values|  #Access lvl1
  values.each do |inner_key,p_names|  #Access lvl2
   p_names.each do |name| #Access lvl3
    if organized_list[name] ||={}  #using||= to check for nil assign empty hash
     if organized_list[name][outer_key] ||= []  #using||= to check for nil assign empty array
      organized_list[name][outer_key]<< (inner_key.to_s)  #Convert symbol to strings
    end
    end
   end
   end
 end
 organized_list
end