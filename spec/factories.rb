FactoryGirl.define do
  factory(:dog) do
    name("Sky")
    breed("German Shepherd Dog")
    age("5")
    sex("Female")
    info("I want this dog")
  end

  factory(:testimonial) do
    name("Sky")
    date("1/2/2015")
    story("Sky was adopted by the Millers!")
  end

  factory :user do
    email("admin@vondubinhaus.com")
    password("admin123")
  end

  factory(:donation) do
    first_name("John")
    last_name("Doe")
    email("johndoe@email.com")
    amount("20")
    message("I support what you do")
  end
end
