class Spinach::Features::ExecutingAnImageDeleteRequest < Spinach::FeatureSteps
  step 'I make a GET request to /images/delete_test.jpg' do
    @first_get_response = Requests.get("/images/delete_test.jpg")
  end

  step 'my response should have status code 200' do
    expect(@first_get_response.status_code).to eq(200)
  end

  step 'there should be a body that is an image' do
    expect(@first_get_response.content_type).to include("image")
  end

  step 'I make a DELETE request to /images/delete_test.jpg' do
    @delete_response = Requests.delete("/images/delete_test.jpg")
  end

  step 'my response should have status code 204' do
    expect(@delete_response.status_code).to eq(204)
  end

  step 'I make a GET request to /images/delete_test.jpg again' do
    @second_get_response = Requests.get("/images/delete_test.jpg")
    puts "#{@second_get_response.inspect}"
  end

  step 'my response should have status code 204' do
    expect(@second_get_response.status_code).to eq(204)
  end

  step 'there should be an empty body' do
    expect(@second_get_response.body).to be_empty
  end

end
