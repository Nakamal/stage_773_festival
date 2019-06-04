class Api::PeopleController < ApplicationController
  def index
    @people = Person.all

    render 'index.json.jbuilder'
  end

  def create
    if current_person && current_person.admin
      
      @people = Person.new(
                            name: params[:name],
                            email: params[:email],
                            password_digest: params[:password_digest],
                            bio: params[:bio],
                            title: params[:title],
                            staff: params[:staff],
                            phone_public: params[:phone_public],
                            email_public: params[:email_public],
                            performer: params[:performer],
                            phone: params[:phone],
                            admin: params[:admin]
                            )
      if @people.save 
        render 'show.json.jbuilder'
      else
        render json: { errors: @people.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized  
    end
  end

  def show
    @person = Person.find(params[:id])
    render 'show.json.jbuilder'
  end

  def update
    @people = Person.find(params[:id])

    @people.name = params[:name] || @people.name
    @people.email = params[:email] || @people.email
    @people.password_digest = params[:password_digest] || @people.password_digest
    @people.bio = params[:bio] || @people.bio
    @people.title = params[:title] || @people.title
    @people.staff = params[:staff] || @people.staff
    @people.phone_public = params[:phone_public] || @people.phone_public
    @people.email_public = params[:email_public] || @people.email_public
    @people.performer = params[:performer] || @people.performer
    @people.phone = params[:phone] || @people.phone
    @people.admin = params[:admin] || @people.admin

    if @people.save
      render 'show.json.jbuilder'
    else
      render json: { errors: @people.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @person = Person.find(params[:id])
    @person.destroy
    render json: {message: "Person Removed"}
  end
end
