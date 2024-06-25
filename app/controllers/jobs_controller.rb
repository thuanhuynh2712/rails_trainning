class JobsController < ApplicationController
  def index
    @jobs = Job.where(created_by_id: current_user.id)
    render json: {
      jobs: @jobs
    }, status: :created
  end

  def create
    job_param = job_params.merge(created_by_id: current_user.id)

    @job = Job.new(job_param)
    if @job.save
      render json: {
        job: @job
      }, status: :created
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  private
    def job_params
      params.require(:job).permit(:status, :title, :share_link, :salary_from, :salary_to)
    end
end