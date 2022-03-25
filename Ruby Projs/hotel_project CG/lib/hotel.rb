require_relative "room"

class Hotel
    def initialize(name, capacities)
        @name = name
        @rooms = {}
        capacities.each {|room_name, capacity| @rooms[room_name] = Room.new(capacity)}
        
    end

    def name
        title = @name.split(" ").map(&:capitalize)
        return title.join(" ")
    end

    def rooms
        @rooms
    end

    def room_exists?(room_name)
        if @rooms.has_key?(room_name)
            return true
        end

    false
    end

    def check_in(person, room)
        if self.room_exists?(room)
           if @rooms[room].add_occupant(person)
                p 'check in successful'
           else
            p 'sorry, room is full'
           end
        else
           p 'sorry, room does not exist'
        end
    end

    def has_vacancy?
        @rooms.values.any? {|room| room.available_space > 0}
    end

    def list_rooms
         @rooms.each do |room_name, room|

            puts "#{room_name}: #{room.available_space}"

        end
    end
end
