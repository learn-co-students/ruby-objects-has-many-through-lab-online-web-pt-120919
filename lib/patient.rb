class Patient
  
  @@all = []
  
  attr_accessor :name
  
  def initialize(name)
    @name= name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor,date)
    Appointment.new(date,self,doctor)
  end
  
  def appointments
    Appointment.all.select{|app| app.patient.name == @name}
  end
  
  def doctors
    appointments.collect{|app| app.doctor}
  end
  
end