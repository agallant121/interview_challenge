module Types
  class JobApplicationType < Types::BaseObject
    field :id, ID, null: false
    field :candidate_id, Integer, null: false
    field :job_posting_id, Integer, null: false
    field :is_active, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :candidate, [CandidateType], null: true
    field :job_posting, [JobPostingType], null: true
  end
end
