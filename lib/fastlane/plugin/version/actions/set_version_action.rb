require "fastlane/action"

module Fastlane
  module Actions
    class SetVersionAction < Action
      def self.run(params)
        plist = params[:plist]
        version = params[:version]
        build_version = params[:build_version]

        if version
          Actions::SetInfoPlistValueAction.run(
            path: plist,
            key: "CFBundleShortVersionString",
            value: version
          )
        end
        if build_version
          Actions::SetInfoPlistValueAction.run(
            path: plist,
            key: "CFBundleVersion",
            value: build_version
          )
        end
      end

      def self.description
        "Set version"
      end

      def self.authors
        ["Jason Nam"]
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :plist,
                              short_option: "-p",
                               description: "Path for the plist to update",
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :version,
                              short_option: "-v",
                               description: "Short version (CFBundleShortVersionString)",
                                  optional: true,
                                      type: String),
          FastlaneCore::ConfigItem.new(key: :build_version,
                              short_option: "-b",
                               description: "Build version (CFBundleVersion)",
                                  optional: true,
                                      type: Integer)
        ]
      end

      def self.is_supported?(platform)
        [:ios, :mac].include?(platform)
      end
    end
  end
end
