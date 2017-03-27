class Api::V1::TeachersController < ApplicationController

    def index
      @teachers = Teacher.all
      render :json => {
        :data => @teachers.map{ |teacher|
          { :id => teacher.id,
            :course => teacher.courses
          }
        }
      }
    end
end
