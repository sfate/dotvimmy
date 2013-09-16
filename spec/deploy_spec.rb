$plugin_path = File.expand_path('../..', __FILE__)

describe 'deploy script' do
  it 'should run and return success code' do
    Dir.chdir($plugin_path)
    expect(system('bash ./deploy.sh')).to be_true
  end
end
