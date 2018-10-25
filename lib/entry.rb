class Entry
  attr_reader :id, :title, :body

  def initialize(id: nil, title: nil, body: nil)
    @id = id
    @title = title
    @body = body
  end
end
