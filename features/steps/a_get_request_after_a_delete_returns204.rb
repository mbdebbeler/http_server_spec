class Spinach::Features::AGetRequestAfterADeleteReturns204 < Spinach::FeatureSteps
  step 'I make a GET request to /images/new_content.jpg again' do
    @second_get_response = Requests.get("/images/new_content.jpg")
  end

  step 'my response should have status code 204' do
    expect(@second_get_response.status_code).to eq(204)
  end

  step 'there should be an empty body' do
    expect(@second_get_response.body).to be_empty
  end
end
