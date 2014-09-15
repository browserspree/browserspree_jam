Rails.application.routes.draw do

  mount BcmsSpree::Engine => "/bcms_spree"

  mount_browsercms
end
