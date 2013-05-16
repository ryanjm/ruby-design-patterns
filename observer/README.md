# Observer

> Defines a one-to-many dependency between objects so that when one object changes state, all its dependents are notified and updated automatically.

Pretty simple. Watch a value and if it updates trigger an action. Ruby make this easy. Check out the [Ruby Docs](http://ruby-doc.org/stdlib-1.9.3/libdoc/observer/rdoc/Observable.html). Also ActiveRecord has an [Observer](http://api.rubyonrails.org/classes/ActiveRecord/Observer.html) class whcih can impliment your callbacks.
