module Types
  class JobPostingType < Types::BaseObject
    field :id, ID, null: false do
      description "This JobPosting's ID."
    end
    field :title, String, null: true do
      description "This JobPosting's title."
    end
    field :company_name, String, null: true do
      description "This JobPosting's company's name."
    end
    field :url, String, null: true do
      description "This JobPosting's url."
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time this JobPOsting was created at."
    end
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time this JobPOsting was updated at."
    end
    field :job_applications, [JobApplicationType], null: true do
      description "This JobPosting's applications."
    end
  end
end
