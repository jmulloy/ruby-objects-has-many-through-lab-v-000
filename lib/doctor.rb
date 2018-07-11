class Doctor

attr_accessor :name, :patient

@@all = []

 def initialize(name)
   @name = name
   @patient = patient
   self.save
 end

 def self.all
   @@all
 end

 def save
   @@all << self
 end

 def appointments
   Appointment.all.select {|appointment| appointment.doctor == self}
 end

 def new_appointment(date, patient)
    Appointment.new(date, self, patient)
  end

  def patients
end
