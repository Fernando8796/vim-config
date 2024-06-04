"""""""""""" Plugins (Vim-plug) """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

Plug 'vim-airline/vim-airline'   " Vim-airline
Plug 'ryanoasis/vim-devicons'    " Vim-Devicons (With Hack nerd font)
Plug 'preservim/nerdtree'        " NerdTree
Plug 'sainnhe/sonokai'           " Tema Sonokai
Plug 'jiangmiao/auto-pairs'      " Auto pairs

call plug#end()

""""""""""""" Configuraçôes globais """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on            " Abilita a sintaxe
set nu               " Abilita os números
set tabstop=4        " Mostra um tab existente com 4 espaços
set softtabstop=4    " Mostra um tab existente com 4 espaços
set shiftwidth=4     " Quando identar com '>', usar 4 espaços
set expandtab        " Ao pressionat tab, inserir 4 espaços
set smarttab         " Inserir tabs no início da linha de acordo com o shiftwidth
set smartindent      " Inserir automaticamente um nível extra de identação em alguns casos
set hidden           " Esconde o buffer atual quando um novo arquivo é aberto
set incsearch        " Busca incremental
set ignorecase       " Ignorar case na busca
set smartcase        " Considerar case se tiver um caractere maiúsculo
set scrolloff=6      " Número mínimo de linhas para ficar embaixo do cursor
set signcolumn=yes   " Adiciona uma coluna na esquerda. Útil para linters
set cmdheight=2      " Dar mais espaço no cmd para mostrar mensagens
set updatetime=200   " Tempo em milissegundos para considerar mudanças
set encoding=utf-8   " Utilizar o código utf-8 para ativar os ícones de fonte
set nobackup         " Sem arquivos de backup
set nowritebackup    " Sem arquivos de backup
set splitright       " Cria um split vertical para a direita
set splitbelow       " Cria um split horizontal para baixo
set autoread         " Atualizar um arquivo Neovim aberto depois de sair
set mouse=a          " Abilitar o suporte ao mouse
filetype on          " Detectar e setar a opção do tipo de arquivo no FileType Event
filetype plugin on   " Carregar o plugin para o tipo de arquivo, se tiver
filetype indent on   " Carregar a identação para o tipo de arquivo, se tiver



""""""""""""" Remaps """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-s> :w<CR>
nnoremap <C-q> :wq<CR>



""""""""""""" Temas """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""" Tema Sonokai 'Andromeda'
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:sonokai_style = 'andromeda'
let g:sonokai_enable_italic = 1
let g:sonokai_disable_italic_comment = 0
let g:sonokai_diagnostic_line_highlight = 1
let g:sonokai_current_word = 'bold'
colorscheme sonokai


" Configurações dos diretórios do NERDTree
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"
