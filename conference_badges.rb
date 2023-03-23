def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
   badges=[]
    attendees.collect { |name| badges <<  "Hello, my name is #{name}." }
    badges
end

def assign_rooms(speakers)
    room_assignments = []
    room_num = 0

    speakers.each_with_index { |speaker| room_assignments << "Hello, #{speaker}! You'll be assigned to room #{room_num +=1}!" } 
    
    room_assignments  
end

def printer(attendees)
  batch_badge_results = batch_badge_creator(attendees)
  batch_badge_results.each { |line| puts line }

  assign_rooms_result = assign_rooms(attendees)
  assign_rooms_result.each {|line| puts line }
end