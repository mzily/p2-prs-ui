class DataSet::DataObject < DataSet

  verbose true if Rails.env.development?

  get :all,     "/dataSets/:data_set_id/sifDataObjects" + url_params
  get :find,    "/dataSets/:data_set_id/sifDataObjects/:id" + url_params
  put :save,    "/dataSets/:data_set_id/sifDataObjects/:id" + url_params
  post :create, "/dataSets/:data_set_id/sifDataObjects" + url_params
  delete :destroy, "/dataSets/:data_set_id/sifDataObjects/:id" + url_params

  alias_attribute :dataSetId, :data_set_id

  def filterTypeLabel
    filterType.is_a?(String) ? filterType : %w[Include Exclude][filterType]
  end

end
