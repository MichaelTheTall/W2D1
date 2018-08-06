require('minitest/autorun')
require('minitest/rg')
require('../library.rb')

class LibraryTest < MiniTest::Test

def setup
  @lib = [{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, {:title=>"i_robot", :rental_details=>{:student_name=>"Bob", :date=>"24/06/16"}}]
end

def test_getter
  library = Library.new(
    [{
     title: "lord_of_the_rings",
     rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
     }
    },
    {
      title: "i_robot",
      rental_details: {
       student_name: "Bob",
       date: "24/06/16"
      }
    }])
  assert_equal([{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, {:title=>"i_robot", :rental_details=>{:student_name=>"Bob", :date=>"24/06/16"}}], library.books)
end

def test_get_book
  library = Library.new(
    [{
     title: "lord_of_the_rings",
     rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
     }
    },
    {
      title: "i_robot",
      rental_details: {
       student_name: "Bob",
       date: "24/06/16"
      }
    }])
  assert_equal({
    title: "i_robot",
    rental_details: {
     student_name: "Bob",
     date: "24/06/16"
    }
  }, library.get_book("i_robot"))
end

def test_get_rental_info
  library = Library.new(
    [{
     title: "lord_of_the_rings",
     rental_details: {
      student_name: "Jeff",
      date: "01/12/16"
     }
    },
    {
      title: "i_robot",
      rental_details: {
       student_name: "Bob",
       date: "24/06/16"
      }
    }])
    assert_equal({:student_name=>"Bob", :date=>"24/06/16"}, library.get_rental_info("i_robot"))
  end

  def test_add_book
    library = Library.new(
      [{
       title: "lord_of_the_rings",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
       }
      },
      {
        title: "i_robot",
        rental_details: {
         student_name: "Bob",
         date: "24/06/16"
        }
      }])

      new_book = {
        title: "starship_troopers",
        rental_details: {
         student_name: "",
         date: ""
        }
      }

      assert_equal([{:title=>"lord_of_the_rings", :rental_details=>{:student_name=>"Jeff", :date=>"01/12/16"}}, {:title=>"i_robot", :rental_details=>{:student_name=>"Bob", :date=>"24/06/16"}}, {:title=>"starship_troopers", :rental_details=>{:student_name=>"", :date=>""}}], library.add_book(new_book))
  end

  def test_change_rental
    library = Library.new(
      [{
       title: "lord_of_the_rings",
       rental_details: {
        student_name: "Jeff",
        date: "01/12/16"
       }
      },
      {
        title: "i_robot",
        rental_details: {
         student_name: "Bob",
         date: "24/06/16"
        }
      }])
      library.change_rental("i_robot", "Joe", "05/07/16")
    assert_equal({:title=>"i_robot", :rental_details=>{:student_name=>"Joe", :date=>"05/07/16"}}, library.get_book("i_robot"))
  end

end
