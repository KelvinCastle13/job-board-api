class JobsController < ApplicationController
  def index
    @jobs = Job.all

    render json: @jobs
  end

  def show
    @job = Job.find(params[:id])

    render json: @job
  end

  def create
    @job = Job.create(
    company_id: params[:company_id],
    title: params[:title],
    description: params[:description],
    url: params[:url],
    location: params[:location],
    active: params[:active],
    salary_range: params[:salary_range]
    )

    render json: { message: "Job created!" }
  end

  def update
    @job = Job.find(params[:id])

    @job.update(
    company_id: params[:company_id] || @job.company_id,
    title: params[:title] || @job.title,
    description: params[:description] || @job.description,
    url: params[:url] || @job.url,
    location: params[:location] || @job.location,
    active: params[:active] || @job.active,
    salary_range: params[:salary_range] || @job.salary_range
    )

    render json: { message: "Job updated!" }
  end

  def destroy
    @job = Job.find(params[:id])

    @job.destroy

    render json: { message: "Job Deleted!" }
  end
end
