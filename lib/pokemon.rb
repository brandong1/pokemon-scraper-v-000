class Pokemon
  attr_accessor :name, :type, :db, :id

  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db

    @@all << self
  end

  def self.all?
  @@all
  end

  def self.save

  end
end
