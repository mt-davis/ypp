json.extract! pform, :id, :pFirstName, :pLastName, :pPhone, :pAddress, :pCity, :pSatate, :pZipcode, :pDob, :created_at, :updated_at
json.url pform_url(pform, format: :json)