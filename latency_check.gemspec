Gem::Specification.new do |s|
  s.name          = "latency_check"
  s.version       = "0.1.1"
  s.date          = "2018-02-21"
  s.authors       = ["michelle"]
  s.email         = ["mverone@gmail.com"]
  s.summary       = %q{A gem that checks the status of https://gitlab.com and reports an average response time after probing the site for 60s}
  s.license       = "MIT"
  s.files         = ["lib/latency_check/request.rb", "lib/latency_check/param_parser.rb", "lib/latency_check/request_manager.rb"]
  s.executables   = ["latency_check"]
end
