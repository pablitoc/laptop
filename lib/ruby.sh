createtokens () {
  echo randomkey=`ruby -rsecurerandom -e "puts test=SecureRandom.base64(12)"`
}