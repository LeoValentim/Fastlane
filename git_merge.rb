module Fastlane
  module Actions
    module SharedValues
      GIT_MERGE = :GIT_MERGE
    end

    class GitMergeAction < Action
      def self.run(params)

      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Merges the current branch with another specified"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :remote_branch,
                                       env_name: "FL_GIT_MERGE",
                                       description: "Name of the branch that will be merged to the current branch",
                                       is_string: true, # true: verifies the input is a string, false: every kind of value
                                       default_value: "") # the default value if the user didn't provide one
        ]
      end

      def self.output
        [
          ['GIT_MERGE', 'Name of the branch that will be merged to the current branch']
        ]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Leo Valentim"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
