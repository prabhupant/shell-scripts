POSITIONAL_ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    -e|--env)
      env="$2"
      shift
      shift
      ;;
    --arg1)
      arg1="$2"
      shift
      shift
      ;;
    --arg2)
      arg2="$2"
      shift
      shift
      ;;
    --arg3)
      arg3="$2"
      shift
      shift
      ;;
    -*|--*)
      echo "Unknown option $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1") # save positional arg
      shift
      ;;
  esac
done
