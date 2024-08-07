require 'json'
require 'xcov-lw/version'
require 'xcov-lw/manager'
require 'xcov-lw/options'
require 'xcov-lw/ignore_handler'
require 'xcov-lw/error_handler'
require 'xcov-lw/coveralls_handler'
require 'xcov-lw/slack_poster'
require 'xcov-lw/model/base'
require 'xcov-lw/model/report'
require 'xcov-lw/model/target'
require 'xcov-lw/model/source'
require 'xcov-lw/model/function'
require 'xcov-lw/model/line'
require 'xcov-lw/model/range'
require 'xcov-lw/project_extensions'
require 'fastlane_core'

module Xcov
  class << self

    attr_accessor :config
    attr_accessor :ignore_handler
    attr_accessor :project

    def project=(value)
      @project = value
      @project.select_scheme
    end

  end

  Helper = FastlaneCore::Helper
  UI = FastlaneCore::UI

end
