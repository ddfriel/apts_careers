require 'test_helper'

class JobsControllerTest < ActionController::TestCase
  setup do
    @job = jobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create job" do
    assert_difference('Job.count') do
      post :create, job: { apply_url: @job.apply_url, business_unit: @job.business_unit, category: @job.category, description: @job.description, job_location_country_code: @job.job_location_country_code, job_location_municipality: @job.job_location_municipality, job_location_region: @job.job_location_region, position_type: @job.position_type, posting_date: @job.posting_date, required_experience: @job.required_experience, required_skills: @job.required_skills, silkroad_job_id: @job.silkroad_job_id, title: @job.title, tracking_code: @job.tracking_code }
    end

    assert_redirected_to job_path(assigns(:job))
  end

  test "should show job" do
    get :show, id: @job
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @job
    assert_response :success
  end

  test "should update job" do
    put :update, id: @job, job: { apply_url: @job.apply_url, business_unit: @job.business_unit, category: @job.category, description: @job.description, job_location_country_code: @job.job_location_country_code, job_location_municipality: @job.job_location_municipality, job_location_region: @job.job_location_region, position_type: @job.position_type, posting_date: @job.posting_date, required_experience: @job.required_experience, required_skills: @job.required_skills, silkroad_job_id: @job.silkroad_job_id, title: @job.title, tracking_code: @job.tracking_code }
    assert_redirected_to job_path(assigns(:job))
  end

  test "should destroy job" do
    assert_difference('Job.count', -1) do
      delete :destroy, id: @job
    end

    assert_redirected_to jobs_path
  end
end
