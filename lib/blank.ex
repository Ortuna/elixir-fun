defprotocol Blank do
  def blank?(data)
end

defimpl Blank, for: BitString do
  def blank?(""), do: true
  def blank?(_), do: false
end
