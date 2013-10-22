" Command that will automatically turn a line like foo(a, b, c, d) into
" foo(
"   a,
"   b,
"   c,
"   d)
function AutoIndentVarList()
  " Assume that you start this command right at the beginning of where you
  " want to make newlines
  "
  " Start by inserting a newline and one tab
  normal i  

  " Need to go down to beginning of new line
  "normal j
  let originalpos = winsaveview()
  let firstline = originalpos['lnum']

  " Replace ,\s* with ,\n
  s/, /,/
  noh
  let endpos = winsaveview()

  " Go back to original line
  call winrestview(originalpos)

  " Move to first non-whitespace character and get column number
  normal ^
  let indentcol = winsaveview()['col']

  let shiftamount = indentcol / 2

  " Insert extra spaces
  let lastline = endpos['lnum']
  "echo firstline
  "echo lastline
  let linestoshift = lastline - firstline

  let shifts = ""
  while shiftamount > 0
    let shifts .= ">"
    let shiftamount -= 1
  endwhile
  "echo linestoshift
  "echo shifts

  "let cmd = "normal j" . linestoshift . shifts
  let cmd = "+1,+" . linestoshift . shifts
  echo cmd
  exe cmd


endfunction
