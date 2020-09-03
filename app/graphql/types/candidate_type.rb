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
    field :job_application, JobApplicationType, null: true do
      description "This candidate's job applications."
    end
  end
end
