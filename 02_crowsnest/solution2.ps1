param(
    [Parameter(Mandatory)]    
    # A word
    $word
)

$article = "a"

if ($word -match "^[aeiou]") {
    $article = "an"
}

"Ahoy, Captain, {0} {1} off the larboard bow!" -f $article, $word