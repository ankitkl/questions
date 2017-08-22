Given a CSV file where each row contains the name of a city and its state separated by a
comma, your task is to replace the newlines in the file with semicolons as demonstrated in the
sample.

- Input Format
```
Casablanca, Grand Casablanca.
Dubai, Dubai.
Anchorage, Alaska
Asheville, N.C.
Atlanta, Ga.
Atlantic City, N.J.
```

- Output Format

```
Casablanca, Grand Casablanca.;Dubai, Dubai.;Anchorage, Alaska;Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.
```

Solution: 
a)Create the sample CSV file with the Input Format.
b)then use the paste command and here -s is used for merging the lines. and =d for the delimiter.
      
      =========================
      paste -s -d"," sample.csv
      =========================
      =====output====
      Casablanca, Grand Casablanca.;Dubai, Dubai.;Anchorage, Alaska;Asheville, N.C.;Atlanta, Ga.;Atlantic City, N.J.

