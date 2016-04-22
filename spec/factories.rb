FactoryGirl.define do
  factory :dog do
    name("Sky")
    breed("German Shepherd Dog")
    age("5")
    sex("Female")
    info("I want this dog")
  end

  factory :invalid_dog, parent: :dog do
    name(nil)
    breed("German Shepherd Dog")
    age("5")
    sex("Female")
    info("I want this dog")
  end

  factory :testimonial do
    name("Sky")
  end

  factory :invalid_testimonial, parent: :testimonial do
    name(nil)
  end

  factory :user do
    email("admin@vondubinhaus.com")
    password("admin123")
  end

  factory(:donation) do
    first_name("John")
    last_name("Doe")
    email("johndoe@email.com")
    amount("$20")
    message("I support what you do")
  end

  factory :invalid_donation, parent: :donation do
    first_name(nil)
    last_name("Doe")
    email("johndoe@email.com")
    amount("$20")
    message("I support what you do")
  end

  factory(:applicant) do
    dog("Sky")
    first_name("John")
    last_name("Doe")
    phone("(222)222-2222")
    email("johndoe@email.com")
    address("123 Bark Road")
    city("Portland")
    state("Oregon")
    zip("97219")
    about("I can give this dog a good life")
  end

  factory :invalid_applicant, parent: :applicant do
    dog("Sky")
    first_name("John")
    last_name(nil)
    phone("(222)222-2222")
    email("johndoe@email.com")
    address("123 Bark Road")
    city("Portland")
    state("Oregon")
    zip("97219")
    about("I can give this dog a good life")
  end

  factory :comment, parent: :dog do
    name("John Doe")
    comment("Is this dog neutered?")
  end

  factory :invalid_comment, parent: :comment do
    name(nil)
    comment("Is this dog neutered?")
  end
end
