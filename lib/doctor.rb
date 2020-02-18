class Doctor
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(patient,date)
    Appointment.new(date,patient,self)
  end
  
  def appointments
    Appointment.all.select{|app| app.doctor.name == @name}
  end
  
  def patients
    self.appointments.collect{|app| app.patient}
  end
  
end