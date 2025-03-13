param(
    [Parameter(Mandatory)]    
    # A word
    $word
)

$article = switch ($word) {
    {$_ -match "^[aeiou]"} { 'an' }
    Default { 'a' }
}

"Ahoy, Captain, {0} {1} off the larboard bow!" -f $article, $word