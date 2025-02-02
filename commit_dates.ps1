# Array of date sets (in the format: "YYYY-MM-DDTHH:MM:SS")
$dates = @(
  "2024-01-03T08:15:00",
  "2024-02-15T14:30:00",
  "2024-03-10T12:45:00",
  "2024-04-21T09:00:00",
  "2024-05-07T18:10:00",
  "2024-06-02T07:20:00",
  "2024-07-18T19:30:00",
  "2024-08-26T13:40:00",
  "2024-09-12T16:25:00",
  "2024-10-05T10:15:00",
  "2024-11-09T20:30:00",
  "2024-12-24T15:00:00",
  "2024-01-29T11:05:00",
  "2024-02-14T22:45:00",
  "2024-03-31T09:50:00",
  "2024-04-10T16:10:00",
  "2024-05-18T12:20:00",
  "2024-06-29T14:35:00",
  "2024-07-03T08:55:00",
  "2024-08-20T19:10:00",
  "2024-09-08T10:50:00",
  "2024-10-22T18:40:00",
  "2024-11-01T09:30:00",
  "2024-12-17T16:20:00",
  "2024-01-12T14:00:00",
  "2024-02-28T19:50:00",
  "2024-03-14T07:45:00",
  "2024-04-08T13:25:00",
  "2024-05-21T15:10:00",
  "2024-06-15T21:55:00"
)

# Loop through each date and commit
$i = 1
foreach ($date in $dates) {
  $env:GIT_AUTHOR_DATE = $date
  $env:GIT_COMMITTER_DATE = $date
  git commit -m "Commit $i"
  $i++
}

# Push all commits to GitHub
git push origin main
