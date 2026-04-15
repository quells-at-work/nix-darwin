function et-auth
    set -l USERNAME 'kai.wells@exploretech.ai'
    set -l KC_SERVICE 'ExploreTech Engine'
    set -l TOKEN (cognito-token -u $USERNAME -p (security find-generic-password -s $KC_SERVICE -a $USERNAME -w) -h)
    echo "Authorization: $TOKEN"
end

