shared_examples_for "an icon concern" do
  it { is_expected.to have_db_column(:icon_file_name).of_type(:string) }
  it { is_expected.to have_db_column(:icon_content_type).of_type(:string) }
  it { is_expected.to have_db_column(:icon_file_size).of_type(:integer) }
  it { is_expected.to have_db_column(:icon_updated_at).of_type(:datetime) }

  it { is_expected.to have_attached_file(:icon) }

  it { is_expected.to validate_attachment_presence(:icon) }
  it { is_expected.to validate_attachment_content_type(:icon).allowing('image/png', 'image/gif').rejecting('text/plain', 'text/xml') }
end