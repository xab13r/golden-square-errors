# The Golden Square Challenges - Testing Errors with Equality

Example Class:
```
# File: lib/reminder.rb

class Reminder
  def initialize(name)
	@name = name
  end

  def remind_me_to(task)
	@task = task
  end

  def remind()
	# Look here! We want to fail if there is no reminder yet.
	fail "No reminder set!" if @task.nil?
	return "#{@task}, #{@name}!"
  end
end
```

Example test for the class:
```
# File: spec/reminder_spec.rb

require 'reminder'

RSpec.describe Reminder do
  context "when no task is set" do
	it "fails" do
	  reminder = Reminder.new("Kay")
	  expect { reminder.remind() }.to raise_error "No reminder set!"
	end
  end
end
```

## Exercises

Write tests for the following methods

```
# File: lib/present.rb

class Present
  def wrap(contents)
	fail "A contents has already been wrapped." unless @contents.nil?
	@contents = contents
  end

  def unwrap
	fail "No contents have been wrapped." if @contents.nil?
	return @contents
  end
end
```

```
# File: lib/password_checker.rb

class PasswordChecker
  def check(password)
	if password.length >= 8
	  return true
	else
	  fail "Invalid password, must be 8+ characters."
	end
  end
end
```