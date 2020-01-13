class Spinach::Features::APostRequestReturns200 < Spinach::FeatureSteps
  step 'that I make a POST request to /images/new_content.jpg' do
    @post_response = Requests.post("/images/new_content.jpg", "Some content")
  end

  step 'my response should have status code 200' do
    expect(@post_response.status_code).to eq(200)
  end
end
