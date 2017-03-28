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
      def show
        @teacher = Teacher.find( params[:id] )

        render :json => {
          :id=> @teacher.id,
          :courses => @teacher.courses
        }
      end

    def destroy
       @teacher = Teacher.find( params[:id] )
       @teacher.destroy

       render :json => { :message => "已取消定位" }
     end
end
