def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  pigeon_names = data[:gender].collect {|gender, names| names}.flatten
  pigeon_names.each{|name| pigeon_list[name] = {color: [], gender: [], lives: []}}
  pigeon_list.each do |name, properties|
    data[:color].each do |color, names|
      if names.include?(name)
        properties[:color] << color.to_s
      end
    end
  end
  pigeon_list.each do |name, properties|
    data[:gender].each do |gender, names|
      if names.include?(name)
        properties[:gender] << gender.to_s
      end
    end
  end  
  pigeon_list.each do |name, properties|
    data[:lives].each do |lives, names|
      if names.include?(name)
        properties[:lives] << lives.to_s
      end
    end
  end  

  pigeon_list
end