# Concern

You know objects should be self sustaining, but sometimes they get large because there are a lot of things the object should be able to do.

This is where concerns come in. In Ruby, they are just modules.

In a Rails project you should put them under `app/models/concerns/[model name]` and `app/controllers/concerns/[controller name]`.

Check out [ActiveSupport::Concern](http://api.rubyonrails.org/classes/ActiveSupport/Concern.html) and [Exploring Concerns for Rails 4](http://blog.andywaite.com/2012/12/23/exploring-concerns-for-rails-4/).
