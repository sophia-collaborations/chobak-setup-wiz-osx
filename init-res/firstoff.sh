
(
  echo
  mkdir ~/.chobak-setup-wiz 2> /dev/null
  cd ~/.chobak-setup-wiz && (
    #curl https://raw.githubusercontent.com/sophia-collaborations/chobak-setup-wiz-osx/master/init-res/main-setup.pl -o main-setup.pl
    #perl main-setup.pl || (
    #  (
    #    echo
    #    echo FAILED ATTEMPT
    #    echo
    #  ) 2> /dev/null
    #  exit 5
    #)
    rm -rf chobak-setup-wiz-osx
    git clone https://github.com/sophia-collaborations/chobak-setup-wiz-osx.git && (
      cd chobak-setup-wiz-osx/init-res && (
        perl main-setup.pl
      )
    )
  )
  echo
  echo
  echo COMPLETE
  echo && echo
)
