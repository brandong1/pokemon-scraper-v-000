class Pokemon
  attr_accessor :name, :type, :db, :id

  @@all =[]

  def initialize(name:, type:, db:, id:)
    @name = name
    @type = type
    @db = db
    @id = id
    @@all << self
  end

  def self.all?
  @@all
  end

  def self.save(name, type, db, id)
    db.execute("INSERT INTO pokemon (name, type, id) VALUES (?, ?, ?)",name, type, id)
  end
end
