" File: lightline-seoul265.vim
" Description: lightline.vim theme for seoul265 colorscheme
" Author: shinchu <shinchu@outlook.com>
" Source: https://github.com/shinchu/lightline-seoul265

let s:is_dark=(&background == 'dark')

if s:is_dark
	let s:mono0   = '#4b4b4b'
	let s:mono1   = '#565656'
	let s:mono2   = '#616161'
	let s:mono3   = '#6b6b6b'
	let s:mono4   = '#757575'
	let s:mono5   = '#bfbfbf'
	let s:c_mono0 = 234
	let s:c_mono1 = 0
	let s:c_mono2 = 236
	let s:c_mono3 = 8
	let s:c_mono4 = 7
	let s:c_mono5 = 15

	let s:red      = '#be7572'
	let s:green    = '#98bc99'
	let s:blue     = '#98bcbd'
	let s:orange   = '#e19972'
	let s:c_red    = 9
	let s:c_green  = 10
	let s:c_blue   = 12
	let s:c_orange = 3
else
	let s:mono0   = '#e1e1e1'
	let s:mono1   = '#d9d9d9'
	let s:mono2   = '#d1d1d1'
	let s:mono3   = '#c8c8c8'
	let s:mono4   = '#bfbfbf'
	let s:mono5   = '#757575'
	let s:c_mono0 = 234
	let s:c_mono1 = 0
	let s:c_mono2 = 236
	let s:c_mono3 = 8
	let s:c_mono4 = 7
	let s:c_mono5 = 15

	let s:red      = '#9a7372'
	let s:green    = '#bdbb72'
	let s:blue     = '#719899'
	let s:orange   = '#be9873'
	let s:c_red    = 9
	let s:c_green  = 10
	let s:c_blue   = 12
	let s:c_orange = 3
endif

let s:p = {
			\ 'normal':   {},
			\ 'inactive': {},
			\ 'insert':   {},
			\ 'replace':  {},
			\ 'visual':   {},
			\ 'tabline':  {}}

let s:style = exists('g:lightline_seoul256_style')
			\ ? g:lightline_seoul256_style
			\ : ''

if s:style == 'plain'
	let s:p.normal.middle = [
				\ [s:mono3, s:mono4, s:c_mono3, s:c_mono4]]
	let s:p.normal.left = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
else
	let s:p.normal.middle = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.normal.left = [
				\ [s:mono0, s:green, s:c_mono0, s:c_green],
				\ [s:mono5, s:mono3, s:c_mono5, s:c_mono3]]
	let s:p.normal.right = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
endif

let s:p.inactive.middle = [
			\ [s:mono4, s:mono2, s:c_mono4, s:c_mono2]]
let s:p.inactive.right = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]
let s:p.inactive.left = [
			\ s:p.inactive.middle[0],
			\ s:p.inactive.middle[0]]

let s:p.insert.left = [
			\ [s:mono0, s:blue, s:c_mono0, s:c_blue],
			\ s:p.normal.left[1]]
let s:p.replace.left = [
			\ [s:mono0, s:red, s:c_mono0, s:c_red],
			\ s:p.normal.left[1]]
let s:p.visual.left = [
			\ [s:mono0, s:orange, s:c_mono0, s:c_orange],
			\ s:p.normal.left[1]]

if s:style == 'plain'
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.right = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.left = [
				\ [s:mono0, s:mono5, s:c_mono0, s:c_mono5]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
else
	let s:p.tabline.middle = [
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.right = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1],
				\ [s:mono0, s:mono4, s:c_mono0, s:c_mono4]]
	let s:p.tabline.left = [
				\ [s:mono4, s:mono1, s:c_mono4, s:c_mono1]]
	let s:p.tabline.tabsel = [
				\ [s:mono5, s:mono0, s:c_mono5, s:c_mono0]]
endif

let g:lightline#colorscheme#seoul256#palette = s:p
