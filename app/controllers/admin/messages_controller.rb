class Admin::MessagesController < Admin::AdminController
before_action :page, only: [:new, :edit]

def new
  @message = Message.new
end

def create
  @message = Message.new(message_params)
  if @message.save
    redirect_to(new_admin_message_path)
  else
    render :new
  end
end

def edit
  @message = Message.find(params[:id])
end

def update
  @message = Message.find(params[:id])
  if @message.update(message_params)
    redirect_to(new_admin_message_path)
  else
    render :edit
  end
end

def destroy
  @message = Message.find(params[:id])
  @message.destroy
end

private

def message_params
  params.require(:message).permit(:title, :description, :date)
end

def page
  params[:page] ? page = params[:page].to_i : page = 1
  page == 1 ? offset = 0 : offset = (page - 1) * 5
  temp = Message.all.size
  (temp % 5) > 0 ? temp2 = 1 : temp2 = 0
  @pages = temp / 5 + temp2
  @messages = Message.all.offset(offset).limit(5)
end
end
