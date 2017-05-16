# frozen_string_literal: true

require "spec_helper"

RSpec.describe ExamplePage do
  subject { described_class.new("test") }

  it "returns data hash" do
    expect(subject.to_h).to eq(bar: "test", foo: "test")
  end

  it ":except" do
    expect(subject.to_h(except: :bar)).to eq(foo: "test")
  end

  it ":only" do
    expect(subject.to_h(only: :foo)).to eq(foo: "test")
  end
end
