# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'rubygame/versions'

Gem::Specification.new do |s|
  s.name     = "rubygame"
  s.version  = Rubygame::VERSIONS[:rubygame].join('.')
  s.author   = "John Croisant"
  s.email    = "jacius@gmail.com"
  s.homepage = "http://rubygame.org/"
  s.summary  = "Clean and powerful library for game programming"
  s.license  = "LGPL v2.1"
  s.rubyforge_project = "rubygame"

  s.files = Dir.glob("{lib,samples,doc}/**/*")
  s.has_rdoc = true
  s.extra_rdoc_files = Dir.glob("**/*.rdoc") + ["LICENSE.txt"]

  s.required_ruby_version = ">= 1.8"
  s.add_dependency( "rake", ">=0.7.0" )
  s.add_dependency( "ruby-sdl-ffi", ">=0.4.0" )
  s.requirements = ["SDL       >= 1.2.7",
                    "SDL_gfx   >= 2.0.10 (optional)",
                    "SDL_image >= 1.2.3  (optional)",
                    "SDL_mixer >= 1.2.7  (optional)",
                    "SDL_ttf   >= 2.0.6  (optional)"]
end
