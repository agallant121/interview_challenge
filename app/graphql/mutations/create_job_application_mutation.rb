module Mutations
  class CreateJobApplicationMutation < BaseMutation
    field :job_application, Types::JobApplicationType, null: false
    field :errors, [String], null: false

    argument :jobPosting, Integer, required: true do
      description "This is the ID of the job posting for this application."
    end

    argument :candidate, Integer, required: true do
      description "This is the ID of the candidate on the job application."
    end

    argument :isActive, Boolean, required: true do
      description "This is the current status of the job application"
    end

    def resolve(jobPosting:, candidate:, isActive:)
      job_application = JobApplication.new(jobPosting: JobPosting.find_by_id(jobPosting),
                                            candidate: Candidate.find_by_id(candidate),
                                            isActive: isActive)

      if job_application.save
        {
          jobApplication: job_application,
          errors: []
     } else
        {
          jobApplication: nil,
          errors: job_application.errors.full_messages
        }
      end
    end
  end
end
