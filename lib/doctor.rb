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

 

 def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
