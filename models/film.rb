require_relative('../db/sql_runner')

class Film

  attr_reader :id, :title

  def initialize(options)
    @id = options['id'].to_i
    @title = options['title']
  end

  def save()
    sql = "INSERT INTO films
    (
      title
    )
    VALUES
    (
      $1
    )
    RETURNING *"
    values = [@title]
    film = SqlRunner.run(sql, values).first
    @id = film['id'].to_i
  end

  def self.all()
    sql = "SELECT * FROM films"
    film_data = SqlRunner.run(sql)
    return Film.map_items(film_data)
  end

  def self.map_items(film_data)
    result = film_data.map { |film| Film.new( film ) }
    return result
  end

  def self.find()
    sql = "SELECT FROM films WHERE id = $1"
    values = [@id]
return result
end
end
