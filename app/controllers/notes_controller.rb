class NotesController < ApplicationController
  def new
  end

  def create
    note = Note.new(text: params[:text])
    note.save

    redirect_to notes_path
  end

  def index
    @notes = Note.all
  end
end
