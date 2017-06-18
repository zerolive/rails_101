class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy]

  def new
    @note = Note.new
  end

  def create
    note = Note.new(note_params)
    note.save

    redirect_to notes_path
  end

  def index
    @notes = Note.all
  end

  def show
  end

  def edit
  end

  def update
    @note.update(note_params)

    redirect_to note_path(@note.id)
  end

  def destroy
    @note.destroy

    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:text)
  end

  def set_note
    @note = Note.find(params[:id])
  end
end
