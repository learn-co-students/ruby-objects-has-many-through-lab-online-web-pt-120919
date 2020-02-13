class Doctor 
  attr_accessor :name 
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end 
  
  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end
  
  def appointments 
    Appointment.all.select{|appointment| appointment.doctor == self}
  end
  
  def patients 
    patients = []
    self.appointments.each do |appointment|
      patients << appointment.patient 
    end 
    patients
  end
  
  def self.all 
    @@all.each do |doctor|
      puts doctor.name
    end 
  end 
  
  
end