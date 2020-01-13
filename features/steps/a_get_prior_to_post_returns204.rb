class Spinach::Features::AGetPriorToPostReturns204 < Spinach::FeatureSteps
  step 'that I make a GET request /images/new_content.jpg' do
    @first_get_response = Requests.get("/images/new_content.jpg")
  end

  step 'my response should have status code 204' do
    expect(@first_get_response.status_code).to eq(204)
  end
end
