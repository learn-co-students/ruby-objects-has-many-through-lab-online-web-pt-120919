class Appointment

    @@all = []

    def self.all
        @@all
    end

    attr_reader :doctor, :patient

    def initialize(date, patient, doctor)
        @date = date
        @patient = patient
        @doctor = doctor
        @@all << self
    end
end