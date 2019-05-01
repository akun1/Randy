Pod::Spec.new do |s|

  s.name         = "Randy"
  s.version      = "1.1.2"
  s.summary      = "Random value generation made easy."
  s.license      = { :type => 'MIT' }

  s.description  = <<-DESC
This library provides easy to use functions that generate random values that you can use to test your app or speed up the development process.
                   DESC

  s.homepage     = "https://github.com/akun1/Randy"
  s.author             = { "Akash Kundu" => "dev.akashkundu@gmail.com" }

  s.platform     = :ios, "9.0"
  s.swift_version = "5.0"

  s.source       = { :git => "https://github.com/akun1/Randy.git", :tag => "#{s.version}" }

  s.source_files  = "Randy/Classes/**/*"
  s.exclude_files = "Classes/Exclude"

end
