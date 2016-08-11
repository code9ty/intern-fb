require 'test_helper'

class UsersApplicationTest < ActionDispatch::IntegrationTest 

  test "applicant applying for intake with valid input" do
    get root_path
    get apply_path
    assert_difference 'Applicant.count', 1 do
    post apply_path params: {
      applicant: {
        first_name: "Antony",
        last_name: "Bond",
        email: "eintein@gmail.com",
        mobile_number: "0158752912",
        github: "http://github.com/r9fwbsjk"
      }
    }
    end
    assert_not flash.empty?
    assert_template 'show'

  end

  
end
