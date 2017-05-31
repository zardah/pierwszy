"noremap <C-Z> :update<CR> vnoremap <C-Z> <C-C>:update<CR> inoremap <C-Z> <C-O>:update<CR>
" szybki zapis pliku, CTRL+z. 

" noremap <Leader>e :quit<CR> noremap <Leader>E :qa!<CR>
" Szybkie zamknięcie pliku/plików. Już widzisz do czego przydaje się <Leader>.  Po wciśnięciu ",e" vim zamknie plik nad którym aktualnie pracujesz. Jeżeli użyjesz ",E" to zostanie zamknięty cały
" vim. Skrótów z <Leader> możesz używać podobnie jak tych z CTRL lub wciskać jeden po drugim. Czyli w tym przypadku wciskając klawisz "e" nie musisz trzymać klawisza ",". Analogicznie będzie w
" kolejnych skrótach z wykorzystaniem <Leader>.

"noremap <C-n> :nohl<CR> vnoremap <C-n> :nohl<CR> inoremap <C-n> :nohl<CR>
" SEARCH - Jeżeli wyszukałeś jakąś frazę, to vim ją podkreślił, jeśli chcesz pozbyć się podświetlenia wciśnij CTRL+n. 


"set tw=79 
"set nowrap 
"set fo-=t
 " komendy odpowiadaja za brak "zawijania tekstu.

" set colorcolumn=80 
" highlight ColorColumn ctermbg=233
" odpowiadają za wyświetlanie się kolumny, która jest pomocna przy kodowaniu, jeżeli " ustaliliście razem z zespołem jakąś konwencję. Dodatkowo, jeżeli jest ci naprawdę potrzebne zawinięcie jakiegoś " tekstu możesz go zaznaczyć i wcisnąć "gq". Program ci go zawinie do '79 kolumny i zacznie wypełniać wiersz poniżej, również do 79 kolumny i tak w kółko. Szczerze, bardzo rzadko z tego korzystam, ' ale przydaje się jak wrzucasz jakieś dłuższe teksy do szablonu/kodu.wcisnąć "gq"'. Program ci go zawinie do 79 kolumny i zacznie wypełniać wiersz poniżej, również do 79 kolumny i tak w kółko.  " Szczerze, bardzo rzadko z tego korzystam, ale przydaje się jak wrzucasz jakieś dłuższe teksy do szablonu/kodu.



"""""autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red au InsertLeave * match ExtraWhitespace /\s\+$/
" Podświetla na czerwono niepotrzebne białe znaki (taby/spacje). Jak korzystasz z dobrodziejstw codereview to prędzej czy później będziesz tego szukał.



"set nocompatible
" =============================== START ==========================="
" PATHOGEN
"call pathogen#infect()
execute pathogen#infect()
syntax on
" Włącza rozpoznawanie plików oraz podświetlanie składni.
filetype off 
filetype plugin indent on




set bs=2 
set mouse=a
" Ustawia normalną obsługę backspace oraz włącza obsługę myszki.

let mapleader = ","
" LEADER -  Binduje <Leader> do klawisza "," . Później zobaczysz do czego może się przydać.

map <c-j> <c-w>j map <c-k> <c-w>k map <c-l> <c-w>l map <c-h> <c-w>h
" SPLIT -  Służy do wygodniejszego poruszania się po okienkach. Zamiast wciskania CTRL+w, a później h/j/k/l, wciskasz sobie CTRL+h/j/k/l.


nnoremap <C-r> :tabprevious<CR>
nnoremap <C-y> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-r> <Esc>:tabprevious<CR>
inoremap <C-y> <Esc>:tabnext<CR>
inoremap <C-t> <Esc>:tabnew<CR>
" Tab navigation like Firefox. ctrl + r(wczesniejsze), ctrl+t(nowe), ctrl+y(nastepny)

vnoremap < <gv
vnoremap > >gv
" latwe przeniesienie blok kodu. Shift + > albo Shift + <


set number
" komenda wyświetla numer wiersza w którym się znajdujesz po lewej stronie.

set showbreak=↪ 
" ZAWINIĘCIA - znak (strzałka)

set encoding=utf-8

set history=700
set undolevels=700
" Nie trzeba tłumaczyć.

set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
" W wielkim skrócie, używa tylko i wyłącznie spacji, zero tabów. Jak gdzieś użyjesz taba to ci go zamieni na cztery spacje, dziękuję.
       
set hlsearch
set incsearch
set ignorecase
set smartcase
" Podświetla znalezioną frazę podczas szukania i rozróżnia znaki (oink to nie to samo co OinK).

nnoremap <silent> <Leader>/ :nohlsearch<CR>
" Wylacza podwietlanie wyszukanych obiektow poprzez kombinacje "Leader+/', w  tym przypadku ',+/'

set nobackup
set nowritebackup
set noswapfile
" Wyłącza pliki backup oraz swap. Nie są Ci do niczego potrzebne, a jak pracujesz z gitem czy mercurialem to tym bardziej.


augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }
" Przeladowuje plik podczas zapisu :w --> 'BufWritePost'


nmap <leader>t :NERDTree<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" NERDTree - files menager. Otwieranie '[leader] + t'. Zamykanie 'q'.

set digraph


map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h 
" Zamiast uzywac do przejscia pomiedzy plikami 'ctrl+w', to mozna uzyc 'ctrl+hjkl' - tak samo jak w owym menadrzerem okien 




" --------------------  bez widocznych aktywnych wpisow w .vimrc  -------------
" BufExplorer (plugin)
" [Leader]+bs = pobiera z buforu wybrany plik i dzieli go na istniejace okno
" [Leader]+be = pobiera wybrany plik z buforu i otwiera tylko jego
 


" Przechodzenie pomiedzy oknami
" ctrl + w



" Otwieranie kolejnych plikow
" :n /sciezka/do/pliku


" Tworzenie nowego pliku i tym samym okna wewnatrz vim
" :sp plik
" :sp path/path/plik.txt



" q:   -  histria polecen w vim w czasie rzeczywistym


" :find nawa[tab]   - szybkie szukanie pliku, a poznij mozna go uruchomic i
" otworzyc w oknie




"""" Nerdcommenter
"""  zaznaczymy visualem i ,+c+c  - dodaje
"""  zaznaczamy visualem i ,+c+b  - dodaje 
"""  zaznaczmy visualem i ,+c+spacja  - usuwa
""" zaznaczasz visualem i ,+c+u  - usuwa

"Listing(buffer) ostatnio używanych plików wraz z ich ID
":ls

"Wypisywanie ostatnio uzywanych plików
":b [tab]

"Użycie ostatnio używanego pliku po nazwie albo ID
":b nazwa/ID

"Split
":sp nazwa_pliku
":vs nazwa_pliku

"Ctrl-j move to the split below
"Ctrl-k move to the split above
"Ctrl-l move to the split to the right
"Ctrl-h move to the split to the left
"Ctrl – w move to around to next windows split


" -------------------


" ============================BAR==========================


" Bar na dole

set laststatus=2

set background=dark
colorscheme gruvbox

let g:lightline = {
\ 'active': {
\ 'left': [ [ 'mode', 'paste' ],
\ [ 'fugitive', 'filename' ] ]
\ },
\ 'component_function': {
\ 'fugitive': 'LightlineFugitive',
\ 'readonly': 'LightlineReadonly',
\ 'modified': 'LightlineModified',
\ 'filename': 'LightlineFilename'
\ },
\ 'separator': { 'left': '', 'right': '' },
\ 'subseparator': { 'left': '', 'right': '' }
\ }
function! LightlineModified()
if &filetype == "help"
return ""
elseif &modified
return "+"
elseif &modifiable
return ""
else
return ""
endif
endfunction
function! LightlineReadonly()
if &filetype == "help"
return ""
elseif &readonly
return ""
else
return ""
endif
endfunction
function! LightlineFugitive()
return exists('*fugitive#head') ? fugitive#head() : ''
endfunction
function! LightlineFilename()
return ('' != LightlineReadonly() ? LightlineReadonly() . ' ' : '') .
\ ('' != expand('%:t') ? expand('%:t') : '[No Name]') .
\ ('' != LightlineModified() ? ' ' . LightlineModified() : '')
endfunction
function! LightlineFugitive()
if exists("*fugitive#head")
let branch = fugitive#head()
return branch !=# '' ? ' '.branch : ''
endif
return ''
endfunction

