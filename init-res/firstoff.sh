
(
  echo
  mkdir ~/.chobak-setup-wiz 2> /dev/null
  cd ~/.chobak-setup-wiz && (
    curl https://raw.githubusercontent.com/sophia-collaborations/chobak-setup-wiz-osx/master/init-res/main-setup.pl -o main-setup.pl
    perl main-setup.pl | die "
    FAILED ATTEMPT
    "
  )
  echo && echo
)
