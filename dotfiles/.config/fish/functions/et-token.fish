function et-token
    set -l USERNAME 'kai.wells@exploretech.ai'
    set -l KC_SERVICE 'ExploreTech Engine'
    cognito-token -u $USERNAME -p (security find-generic-password -s $KC_SERVICE -a $USERNAME -w) -h
end
