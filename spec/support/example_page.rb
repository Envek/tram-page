# frozen_string_literal: true

class ExamplePage < Tram::Page
  param :foo

  section :bar
  section :foo, method: :foo_alias

  def bar
    foo
  end

  def foo_alias
    foo
  end
end
