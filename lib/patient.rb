class Patient

attr_accessor :name, :appointment, :doctor

@@all = []

def initialize(name)
  @name = name
  @appointment = appointment
  @doctor = doctor
  self.save
  # binding.pry
end

# def self.create
# new_variable = Song.new(@name)
# new_variable.save
# new_variable
# end

  def self.all
    @@all
  end

  def save
  @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end
  


end
