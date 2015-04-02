shared_examples_for 'a time-based model' do
  it { is_expected.to have_db_column(:start_at) }
  it { is_expected.to have_db_column(:end_at) }

  describe '#positive_time_flow' do
    subject(:season) { build(described_class.name.underscore.to_sym, start_at: Time.current) }
    let(:error) { 'must end after it starts' }
    it { is_expected.to allow_value(Time.current.tomorrow).for(:end_at) }
    it { is_expected.not_to allow_value(Time.current.yesterday).for(:end_at).with_message(error) }
  end
end