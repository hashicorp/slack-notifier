# frozen_string_literal: true
# Copyright IBM Corp. 2013, 2019
# SPDX-License-Identifier: MIT


module Slack
  class Notifier
    module Util
      module Escape
        HTML_REGEXP  = /[&><]/
        HTML_REPLACE = { "&" => "&amp;", ">" => "&gt;", "<" => "&lt;" }.freeze

        def self.html string
          string.gsub(HTML_REGEXP, HTML_REPLACE)
        end
      end
    end
  end
end
