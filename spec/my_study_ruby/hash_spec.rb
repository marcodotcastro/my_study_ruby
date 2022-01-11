# frozen_string_literal: true

RSpec.describe Hash do
  describe "base" do
    it "filter" do
      hash = { foo: 0, bar: 1, baz: 2 }

      result = hash.filter { |_key, value| value < 2 }

      expect(result).to eq({ foo: 0, bar: 1 })
    end

    it "compact" do
      hash = { foo: 0, bar: nil, baz: 2, bat: nil }

      result = hash.compact!

      expect(result).to eq({ foo: 0, baz: 2 })
    end

    it "merge" do
      hash = { foo: 0, bar: 1, baz: 2 }
      hash1 = { bat: 3, bar: 4 }

      result = hash.merge!(hash1)

      expect(result).to eq({ foo: 0, bar: 4, baz: 2, bat: 3 })
    end

    it "replace" do
      hash = { foo: 0, bar: 1, baz: 2 }

      result = hash.replace({ bat: 3, bam: 4 })

      expect(result).to eq({ bat: 3, bam: 4 })
    end
  end

  describe "practice" do
    it "filter + compact + merge" do
      hash = { foo: 0, bar: 1, baz: 2, bat: nil }
      hash.filter! { |_key, value| value.to_i <= 1 }
      hash.compact!
      hash.merge!({ fod: 3 })

      expect(hash).to eq({ foo: 0, bar: 1, fod: 3 })
    end
  end
end
