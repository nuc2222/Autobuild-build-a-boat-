local currentDate = os.date("*t")
local keys = {
    [1] = "hrjehchsjenebdcmd",
    [2] = "idjxmdneiakxsmeiwkd",
    [3] = "owlsmrkeplsplsplsksk",
    [4] = "mdkanedjsbsbebsnzd",
    [5] = "oemfkdkadkdmekskd",
    [6] = "mejxjfujsnenejsjdjsns",
    [7] = "kelwopdjeksozlskadm",
  }
local currentDay = currentDate.wday
local key = keys[currentDay]
return key
