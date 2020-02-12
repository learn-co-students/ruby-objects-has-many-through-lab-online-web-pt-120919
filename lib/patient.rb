class Patient

    @@all = []

    def self.all
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self 
    end

    def new_appointment(doctor, date)
        Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self 
        end
    end

    def doctors
        docs = []
        appointments.each do |appointment|
            docs << appointment.doctor if !docs.include?(appointment.doctor)
        end
        docs
    end
end