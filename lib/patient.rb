class Patient 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  def new_appointment(doctor, date)
    new_appointment = Appointment.new(date, self, doctor)
    new_appointment
  end
  
  def doctors 
    doctors = []
    self.appointments.each do |appointment|
      doctors << appointment.doctor
    end
    doctors
  end
  
  def appointments
    Appointment.all.select{|appointment| appointment.patient == self}
  end
  
  def self.all 
    @@all.each do |patient|
      puts patient.name 
    end 
  end
end