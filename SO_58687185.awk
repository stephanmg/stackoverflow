BEGIN {
  avg=0; j=0
  fname = "file_output.txt"
  printf "mean\t stand.D\n" > fname
}

{
  avg = avg + $2
  values[j] = $2
  j = j + 1
  if (NR % 3 == 0) {
    printf "%f\t", avg/3 > fname
    sd = 0
    for (k = 0; k < 3; k++) {
      sd = sd + (values[k]-avg/3)*(values[k]-avg/3)
    }
    printf "%f\n", sqrt(sd/3) > fname
    avg = 0; j = 0
  }
}
