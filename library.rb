class Library
  attr_accessor(:books)

  def initialize(books)
    @books = books
  end

  def get_book(title)
    for b in @books
      return b if b[:title] == title
    end
  end

  def get_rental_info(title)
    for b in @books
      return b[:rental_details] if b[:title] == title
    end
  end

  def add_book(new)
    @books << new
  end

  def change_rental(title, name, date)
    for b in @books
      if b[:title] == title
        b[:rental_details][:student_name] = name
        b[:rental_details][:date] = date
      end
    end
  end

end
