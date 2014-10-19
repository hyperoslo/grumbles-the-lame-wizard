class Item::GameManual < Item

  def describe
    <<-HTML
    <dl class="game-manual">
      <dt>SEARCH <em>resource</em></dt>
      <dd>List items in <em>resource</em>. Quite handy at times. Try <strong>SEARCH me</strong></dd>
      <dt>TRACE <em>resource</em></dt>
      <dd>Inspect <em>resource</em> with a keen eye. Or at least look at it closer. Try <strong>TRACE me</strong></dd>
      <dt>GET <em>resource</em></dt>
      <dd>Pick up <em>resource</em>. But only if it’s anywhere near you, obviously.</dd>
      <dt>MOVE <em>location</em></dt>
      <dd>Travel to <em>location</em>. But you can’t travel far, though.</dd>
      <dt>COPY <em>resource</em></dt>
      <dd>Copies the <em>resource</em> into your inventory. If you can.</dd>
      <dt>LOCK <em>resource</em></dt>
      <dd>Locks the <em>resource</em>. Duh!</dd>
      <dt>UNLOCK <em>resource</em></dt>
      <dd>We’ll leave this one for you to figure out.</dd>
      <dt>MERGE <em>resource1</em> <em>resource2</em></dt>
      <dd>Combine compatible resources, for better or for worse. Can you afford taking that chance?</dd>
      <dt>REPORT <em>listener</em></dt>
      <dd>Also known as throwing words at <em>listener</em>. Also known as talking to <em>listener</em>. But will he listen?</dd>
      <dt>PATCH <em>resource</em></dt>
      <dd>Patch <em>resource</em> and make it less broken or more fixed.</dd>
      <dt>DELETE <em>resource</em></dt>
      <dd>Throw <em>resource</em> on the ground and step on it multiple times until it’s completely gone.</dd>
    </dl>
    HTML
  end


end
