class Language

  attr_accessor :id, :title, :body

  def save

    conn = Language.open_connection

    if(self.id)
      sql = "UPDATE language SET title='#{self.title}', body='#{self.body}' WHERE id = #{self.id}"
    else
      sql = "INSERT INTO language (title, body) VALUES ('#{self.title}', '#{self.body}')"
    end

    conn.exec(sql)
  end

  def self.open_connection
    conn = PG.connect(dbname: "coding")
  end

  def self.all

    conn = self.open_connection

    sql = "SELECT id,title,body FROM language ORDER BY id ASC"

    results = conn.exec(sql)

    languages = results.map do |language|
      self.hydrate(language)
    end

  end

  def self.find(id)

    conn = self.open_connection

    sql = "SELECT * FROM language WHERE id =#{id} LIMIT 1"

    languages = conn.exec(sql)

    language = self.hydrate(languages[0])

    language

  end

  def self.destroy(id)

    conn = self.open_connection

    sql = "DELETE FROM language WHERE id = #{id}"

    conn.exec(sql)

  end

  def self.hydrate(language_data)

    language = Language.new

    language.id = language_data['id']
    language.title = language_data['title']
    language.body = language_data['body']

    language
  end

end
