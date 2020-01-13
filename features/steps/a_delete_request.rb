class Spinach::Features::ADeleteRequest < Spinach::FeatureSteps
  step 'I make a DELETE request to /images/new_content.jpg' do
    @delete_response = Requests.delete("/images/new_content.jpg")
  end

  step 'my response should have status code 204' do
    expect(@delete_response.status_code).to eq(204)
  end

  step 'there should be an empty body' do
    expect(@delete_response.body).to be_empty
  end
end
