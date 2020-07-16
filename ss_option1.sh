#!/bin/sh

usage() {
cat << EOF
$0 -y <y1> <y2> <y3> [-b] <b1> [-c]
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
# For y, we fool getopts into thinking a doesn't take in an argument
# For b, we can just use getopts normal behavior to take in an argument
while getopts "yb:c" opt ; do
    case "${opt}" in
        y)
            # This is the tricky part.

            # $OPTIND has the index of the _next_ parameter; so "\${$((OPTIND))}"
            # will give us, e.g., ${2}. Use eval to get the value in ${2}.
            # The {} are needed in general for the possible case of multiple digits.

            eval "y1=\${$((OPTIND))}"
            eval "y2=\${$((OPTIND+1))}"
            eval "y3=\${$((OPTIND+2))}"
            eval "y4=\${$((OPTIND+3))}"
            
            # Note: We need to check that we're still in bounds, and that
            # a1,a2,a3 aren't flags. e.g.
            #   ./getopts-multiple.sh -a 1 2 -b
            # should error, and not set a3 to be -b.
            if [ $((OPTIND+3)) -gt $# ] || is_flag "$y1" || is_flag "$y2" || is_flag "$y3" || is_flag "$y4"
            then
                usage
                echo
                echo "-y requires 4 arguments!"
                exit
            fi

            echo "-y has arguments $y1, $y2, $y3 $y4"
	 printf '%s\n' "$WK_DATE_TIME $y1" >> 1MadeBedin10.yn
	 printf '%s\n' "$WK_DATE_TIME $y2" >> 2ThyroxineTaken.yn
	 printf '%s\n' "$WK_DATE_TIME $y3" >> 3GetDressedAppropriately.yn
	 printf '%s\n' "$WK_DATE_TIME $y4" >> 4MorningPooja.yn




            # "shift" getopts' index
            OPTIND=$((OPTIND+4))
            ;;
        b)
            # Can get the argument from getopts directly
            echo "-b has argument $OPTARG"a
		echo " can do Today/yesterday/week/month  reporting here   " # suchoudh 2020-05-07 Thu 08:41 AM
            ;;
        c)
            # No arguments, life goes on
            echo "-c"
		echo " can do reporting in here " # suchoudh 2020-05-07 Thu 08:41 AM
            ;;
    esac
done
