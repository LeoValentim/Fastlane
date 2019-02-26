module Fastlane
  module Actions
    module SharedValues
      GIT_CREATE_BRANCH = :GIT_CREATE_BRANCH
    end

    class GitCreateBranchAction < Action
      def self.run(params)
        name = params[:name]

        # construct our command as an array of components
        command = [
          'git',
          'branch',
          name
        ]

        # execute our command
        Actions.sh('pwd')

        Actions.sh(command.join(' '))
        UI.message("Successfully create branch #{name}.")
      end

      #####################################################
      # @!group Documentation
      #####################################################

      def self.description
        "Creates a branch on project working copy"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :name,
                                       env_name: "FL_GIT_CREATE_BRANCH",
                                       description: "The branch name that will be created",
                                       is_string: true, # true: verifies the input is a string, false: every kind of value
                                       default_value: "New_Branch")
        ]
      end

      def self.output
        [
          ['GIT_CREATE_BRANCH', 'The branch name that will be created']
        ]
      end

      def self.authors
        # So no one will ever forget your contribution to fastlane :) You are awesome btw!
        ["Leo Valentim | https://github.com/LeoValentim"]
      end

      def self.is_supported?(platform)
        true
      end
    end
  end
end
