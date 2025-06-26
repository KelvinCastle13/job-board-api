class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    render json: @companies
  end

  def show
    @company = Company.find_by(id: params[:id])

    render json: @company
  end

  def create
    @company = Company.new(
      name: params[:name],
      logo: params[:logo],
      description: params[:description]
    )

    if @company.save
      render json: @company
    else
      render json: { errors: @company.errors.full_messages }
    end
  end

  def update
    @company = Company.find_by(id: params[:id])

    @company.update(
      name: params[:name] || @company.name,
      logo: params[:logo] || @company.logo,
      description: params[:description] || @company.description
    )

    if @company.valid?
      render json: @company
    else
      render json: { errors: @company.errors.full_messages }
    end
  end

  def destroy
    @company = Company.find_by(id: params[:id])
    @company.destroy

    render json: { message: "Company deleted" }
  end
end
