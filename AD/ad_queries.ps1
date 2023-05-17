dsquery user -name * | dsget user -samid -fn -ln -display -desc | where {$_ -like '*NAME*'}

dsquery user -samid user | dsget user -memberof -expand | where {$_ -like '*GROUP*'}

dsquery group -samid "GROUP" | dsget group -members -expand  | dsget user -samid -fn -ln 

Get-ADDomainController -Discover

Get-ADDomainController -Identity "DC"

Get-ADUser -Identity 'USER' | select *

get-adgroup -Identity 'GROUP' | select *
