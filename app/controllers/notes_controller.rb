class NotesController < ApplicationController
  before_action :authenticate
  before_action :load_task
  before_action :load_note, except: [:index, :new, :create]

  def index
  end

  def new
    @note = Note.new
  end

  def edit
  end

  def update
    if @note.update note_params
      redirect_to task_notes_path(@task), notice: "Note was updated"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @note.destroy
    redirect_to task_notes_path(@task), alert: "Note was removed"
  end

  def create
    @note = Note.new note_params
    if @task.notes << @note
      redirect_to task_notes_path, notice: "Note created"
    else
        render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private

  def note_params
    params.require(:note).permit(:title, :body)
  end

  def load_note
    @note = @task.notes.find params[:id]
  end

  def load_task
    @task = current_user.tasks.find params[:task_id] # task_id is getting loading throug hthe url id section: tasks/{id}/notes
  end

end
