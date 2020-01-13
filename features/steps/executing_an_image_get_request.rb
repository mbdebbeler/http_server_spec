class Spinach::Features::ExecutingAnImageGetRequest < Spinach::FeatureSteps
  step 'I make a GET request to "/images/big-test.jpg"' do
    @response = Requests.get("/images/big-test.jpg")
  end

  step 'my response should have status code 200' do
    expect(@response.status_code).to eq(200)
  end

  step 'my response body should be type image' do
    expect(@response.content_type).to include("image")
  end

  step 'my response should have an image sent back in the body' do
    expect(@response.body).to_not be_empty
  end
end
