class Interaction::MasterKeyVault < Interaction
  def merge(objects)
    key = objects["master_key"]
    vault = objects["vault"]

    key.move_node_to vault

    "<strong>master_key</strong> fits in vault socket perfectly. Shell I <strong>unlock</strong> it?"
  end
end
