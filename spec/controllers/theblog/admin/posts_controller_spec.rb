require 'rails_helper'

module Theblog
  describe Admin::PostsController, type: :controller do
    routes { Theblog::Engine.routes }

    let(:account) { FactoryGirl.create(:confirmed_account) }
    let(:content_node) { FactoryGirl.create(:post) }
    let(:content_node_key) { :post }

    before { sign_in account }

    it_behaves_like :admin_content_nodes_controller_update
    it_behaves_like :admin_content_nodes_controller_create

  end
end
