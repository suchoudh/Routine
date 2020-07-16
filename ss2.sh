#!/bin/sh

usage() {
cat << EOF
$0 -a <a1> <a2> <a3> [-b] <b1> [-c]
    -a      First flag; takes in 3 arguments
    -b      Second flag; takes in 1 argument
    -c      Third flag; takes in no arguments
EOF
}

is_flag() {
    # Check if $1 is a flag; e.g. "-b"
    [[ "$1" =~ -.* ]] && return 0 || return 1
}

# Note:
# For a, we fool getopts into thinking a doesn't take in an argument
# For b, we can just use getopts normal behavior to take in an argument
while getopts "ab:c" opt ; do
    case "${opt}" in
        a)
            # This is the tricky part.

            # $OPTIND has the index of the _next_ parameter; so "\${$((OPTIND))}"
            # will give us, e.g., ${2}. Use eval to get the value in ${2}.
            # The {} are needed in general for the possible case of multiple digits.

            eval "a1=\${$((OPTIND))}"
            eval "a2=\${$((OPTIND+1))}"
            eval "a3=\${$((OPTIND+2))}"
            
            # Note: We need to check that we're still in bounds, and that
            # a1,a2,a3 aren't flags. e.g.
            #   ./getopts-multiple.sh -a 1 2 -b
            # should error, and not set a3 to be -b.
            if [ $((OPTIND+2)) -gt $# ] || is_flag "$a1" || is_flag "$a2" || is_flag "$a3"
            then
                usage
                echo
                echo "-a requires 3 arguments!"
                exit
            fi

            echo "-a has arguments $a1, $a2, $a3"

            # "shift" getopts' index
            OPTIND=$((OPTIND+3))
            ;;
        b)
            # Can get the argument from getopts directly
            echo "-b has argument $OPTARG"
            ;;
        c)
            # No arguments, life goes on
            echo "-c"
            ;;
    esac
done

