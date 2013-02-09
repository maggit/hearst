$LOAD_PATH << File.dirname(__FILE__)

require "rubygems"
require "typhoeus"
require "json"
require "cgi"
require "hearst/base"
require "hearst/articles_proxy"
require "hearst/article"
require "hearst/sections_proxy"
require "hearst/section"
require "hearst/article_images_proxy"
require "hearst/article_image"
require "hearst/article_categories_proxy"
require "hearst/article_category"
require "hearst/authores_proxy"
require "hearst/author"

module Hearst
  class Error < StandardError ; end
  class InvalidAuth < Hearst::Error; end
  class ServiceUnavailable < Hearst::Error; end

  def self.verbose=(setting)
    @verbose = setting
  end

  def self.verbose?
    @verbose
  end

  def self.log(msg)
    return unless verbose?
    puts "[hearst] #{msg}"
  end

  ERRORS = {
    "param_error" => "A required parameter was missing or a parameter was malformed. This is also used if the resource ID in the path is incorrect.",
    "endpoint_error" => "The requested path does not exist.",
    "not_authorized" => "Although authentication succeeded, the acting user is not allowed to see this information due to privacy restrictions.",
    "rate_limit_exceeded" => "Rate limit for this hour exceeded.",
    "deprecated" => "Something about this request is using deprecated functionality, or the response format may be about to change.",
    "server_error" => "Server is currently experiencing issues.",
    "other" => "Some other type of error occurred."
  }
end
