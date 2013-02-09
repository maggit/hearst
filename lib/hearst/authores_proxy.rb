module Hearst
  class AuthoresProxy
    def initialize(hearst)
      @hearst = hearst
    end

    def self.search(hearst, options={})
    end

    def find(id)
      Hearst::Author.new(@hearst, @hearst.get("Author/search", {:id => id})['items'].first)
    end

    def search(options={})
      @hearst.get("Author/search", options)["items"].map do |json|
        Hearst::Author.new(@hearst, json)
      end
    end
  end
end