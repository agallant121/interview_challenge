module Types
  class CandidateType < Types::BaseObject
    field :id, ID, null: false do
      description "This candidate's ID."
    end

    field :first_name, String, null: true do
      description "This candidate's first name."
    end

    field :last_name, String, null: true do
      description "This candidate's last name."
    end

    field :email, String, null: true do
      description "This candidate's email."
    end

    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this candidate was created at."
    end

    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time that this candidate was last updated at."
    end

    field :job_applications, [JobApplicationType], null: true do
      description "This candidate's job applications."
    end

    def job_applications
      object.job_applications
    end

    # field :job_app_count, Integer, null: true do
    #   description "Count of the apps for a candidate"
    # end
    #
    # def job_app_count
    #   object.job_applications.count
    # end
  end
end
