metadata    :name        => "rest",
            :description => "rest client",
            :author      => "Jason Miller",
            :license     => "ASL 2.0",
            :version     => "0.0.1",
            :url         => "https://github.com/nocturnalwarz/mcollective-rest",
            :timeout     => 180


action "get", :description => "Do a get on a url" do
    display :always

    input   :url,
            :prompt      => "url",
            :description => "url to get",
            :type        => :string,
            :validation  => '.*',
            :maxlength   => 10 * 1024,
            :optional    => false


    output  :response,
            :description => "response to get",
            :display_as  => "response"

    output :error,
           :description => "error set by rest"
           :display_as  => "error"
end