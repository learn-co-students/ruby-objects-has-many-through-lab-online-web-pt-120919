require 'pry'
class Doctor

    @@all = []

    attr_reader :name 

    def self.all
        @@all 
    end

    def initialize(name)
        @name = name
        @@all << self 
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self 
        end
    end

    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end

    def patients
       @patients = []
       appointments.each do |appointment|
            if !@patients.include?(appointment.patient)
                @patients << appointment.patient
            end
       end
       @patients
    end
end