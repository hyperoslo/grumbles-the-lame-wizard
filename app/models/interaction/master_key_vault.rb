class Interaction::MasterKeyVault < Interaction
  def merge(objects)
    key = objects["master_key"]
    vault = objects["vault"]

    key.mode_node_to value

    "<strong>master_key</strong> fit in vault socket perfectly. Shell I <strong>unlock</strong> it?"
  end
end
