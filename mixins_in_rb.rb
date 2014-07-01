#!/usr/bin/env ruby
module AtomicSpider
  def sling_web
    puts "A gooey spiderweb filament flies forth from #{full_name}: *SPLADOW*"
  end

  def kiss_mary_jane
    nil
  end

  def full_name
  "#{@first_name} #{@last_name}"
  end
end

class Person
  def initialize(name)
    @first_name, @last_name  = name.split(/\s+/)
  end

  def self.extended(mod)
    "Mixing in this powers of an #{mod.class_name.to_s} to #{@first_name}: a normal Brooklynite"
  end
end

class SuperHeroCreater
  def self.mutate!(thing_that_was_normal_this_morning, superpower_holder)
    thing_that_was_normal_this_morning.extend superpower_holder
    thing_that_was_normal_this_morning
  end
end

pp = Person.new("Peter Parker")
spiderman = SuperHeroCreater.mutate!(pp, AtomicSpider)
spiderman.sling_web
