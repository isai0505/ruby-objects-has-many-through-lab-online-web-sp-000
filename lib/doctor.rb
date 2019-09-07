class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |appointment|
    appointment.doctor == self
  end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    genres = []
    songs.each do |song|
      genres << song.genre
    end
    genres
  end

end
