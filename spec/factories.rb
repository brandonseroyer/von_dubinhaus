FactoryGirl.define do
  factory(:dog) do
    name("Sky")
    breed("German Shephrd Dog")
    age("5")
    sex("Female")
    info("I want this dog")
  end

  factory(:testimonial) do
    name("Sky")
    date("1/2/2015")
    story("Sky was adopted by the Millers!")
  end
end
