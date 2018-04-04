class Pokemon
 def initialize(name, type, db)
   @name = name
   @type = type
   @db = db
   @@all << self
   end

   def self.all
   @@all   
   end

   def save(name, type, db, database_connection)
     database_connection.execute("INSERT INTO Pokemon (name, type, db) VALUES (?, ?, ?)",name, type, db)
  end
end
end
