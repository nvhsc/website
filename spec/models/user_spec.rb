require 'rails_helper'

RSpec.describe User, :type => :model do
  it_behaves_like 'a timestamped model'

  it { is_expected.to have_db_column(:email).of_type(:string).with_options(null: false, default: "") }
  it { is_expected.to have_db_column(:encrypted_password).of_type(:string).with_options(null: false, default: "") }
  it { is_expected.to have_db_column(:reset_password_token).of_type(:string) }
  it { is_expected.to have_db_column(:reset_password_sent_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:remember_created_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:sign_in_count).of_type(:integer).with_options(default: 0, null: false) }
  it { is_expected.to have_db_column(:current_sign_in_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:last_sign_in_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:current_sign_in_ip).of_type(:inet) }
  it { is_expected.to have_db_column(:last_sign_in_ip).of_type(:inet) }
  it { is_expected.to have_db_column(:confirmation_token).of_type(:string) }
  it { is_expected.to have_db_column(:confirmed_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:confirmation_sent_at).of_type(:datetime) }
  it { is_expected.to have_db_column(:unconfirmed_email).of_type(:string) }
  it { is_expected.to have_db_column(:failed_attempts).of_type(:integer).with_options(default: 0, null: false) }
  it { is_expected.to have_db_column(:unlock_token).of_type(:string) }
  it { is_expected.to have_db_column(:locked_at).of_type(:datetime) }

  it { is_expected.to have_db_index(:email).unique }
  it { is_expected.to have_db_index(:reset_password_token).unique }
  it { is_expected.to have_db_index(:confirmation_token).unique }
  it { is_expected.to have_db_index(:unlock_token).unique }
end
