
# output:
we can get the output values after applying the changes:

  * terraform apply
  * open the tfstate file
  * terrafom output <output_name>


# set:
Pass a list value to toset to convert it to a set, which will remove any duplicate elements and discard the ordering of the elements.:

 > toset(["c", "b", "b"])
[
  "b",
  "c",
]
