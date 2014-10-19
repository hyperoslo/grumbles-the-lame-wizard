class Interaction::MasterKeyVault < Interaction
  def merge(objects)
    key = objects["master_key"]
    vault = objects["vault"]

    key.move_node_to vault

    "The <strong>master_key</strong> fits the vault keyhole perfectly. Shall I unlock it?"
  end
end
