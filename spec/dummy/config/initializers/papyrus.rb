papyrus_conf = "#{File.dirname(__FILE__)}/../papyrus.yml"
Papyrus::Settings.source papyrus_conf
Papyrus::Settings::BASE_DIR = Rails.root
Papyrus::Settings.load!

Papyrus::Settings[:config_filename] = papyrus_conf
