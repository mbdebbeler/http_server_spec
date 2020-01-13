class Spinach::Features::AGetRequestPriorToADelete < Spinach::FeatureSteps
  step 'I make a GET request to /images/new_content.jpg' do
    @first_get_response = Requests.get("/images/new_content.jpg")
  end

  step 'my response should have status code 200' do
    expect(@first_get_response.status_code).to eq(200)
  end

  step 'there should be a body that is an image' do
    expect(@first_get_response.content_type).to include("image")
  end
end
