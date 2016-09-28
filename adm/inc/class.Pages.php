<?php
/* ����� ��� �������� �� ��������� */

	class Pages {
		var $rowsPerPage;	// ���������� ��������� �� ��������
		var $numRows;		// ����� ���������� ���������
		var $currentPage;	// ������� ��������
		var $pageVarName;	// ��� ���������� PAGE
		var $pagesRegion;	// �������� ����������� �������
		
		// CSS �����
		var $styleTitle   = 'pages_title';
		var $stylePage    = 'pager_link';
		var $styleCurrent = 'pager_curpage';
		var $styleArrows  = 'pager_link';

		// HTML �������
		var $tplHeader = '';
		var $tplFooter = '';
		
		// �����������
		function Pages($numRows = 30, $rowsPerPage = 30, $pageVarName = 'page') {
			$this->numRows = $numRows;
			$this->rowsPerPage = $rowsPerPage;
			$this->pageVarName = $pageVarName;
			if (!isset($GLOBALS['_GET'][$pageVarName])) {
				$this->currentPage = 1;
			} else {
				if ($GLOBALS['_GET'][$pageVarName] <= 0 || $GLOBALS['_GET'][$pageVarName] > $this->getPagesCount()) {
					$this->currentPage = 1;
				} else {
					$this->currentPage = $GLOBALS['_GET'][$pageVarName];
				}
			}
			
			$this->pagesRegion = 300;
		}

		// ���������� ���������� ����� �� ��������
		function getRowsPerPage() {
			return $this->rowsPerPage;
		}

		// ���������� ���������� �����
		function getNumRows() {
			return $this->numRows;
		}

		// ���������� ������� ��������
		function getCurrentPage() {
			if (isset($GLOBALS['_GET'][$this->pageVarName]))
				$this->currentPage = $GLOBALS['_GET'][$this->pageVarName];
			else $this->currentPage = 1;
			
			return $this->currentPage;
		}

		// ���������� ���������� �������
		function getPagesCount() {
			$result = $this->numRows / $this->rowsPerPage;
			if ($result != floor($result)) $result++;
			$result = floor($result);
			return $result;
		}

		// ���������� ����������� ������
		function getMinRow($page = '') {
			if (!$page) $page = $this->currentPage;
			return ($this->rowsPerPage*($page-1) + 1);
		}

		// ���������� ������������ ������
		function getMaxRow($page = '') {
			if (!$page)	$page = $this->currentPage;
			if (($maxRow = $this->getMinRow($page) + $this->rowsPerPage - 1) > $this->numRows)
				return $this->numRows;
			else
				return $maxRow;
		}

		// ���������� ��������� ��������
		function getNextPage($page = '') {
			if (!$page) $page = $this->currentPage;
			if ($page < $this->getPagesCount())
				return $page + 1;
			else
				return $this->getPagesCount();
		}

		// ���������� ���������� ��������
		function getPrevPage($page = '') {
			if (!$page)	$page = $this->currentPage;
			if ($page > 1)
				return $page - 1;
			else
				return 1;
		}

		// ���������� �������� ��� SQL ������� LIMIT
		function getLimit($page = '') {
			$this->currentPage = $this->getCurrentPage();
			return ($this->getMinRow($this->currentPage)-1 . ", " . $this->rowsPerPage);
		}

		// ���������� �������� ��� SQL ������� LIMIT
		function getRealLimit($page = '') {
			$this->currentPage = $this->getCurrentPage();
			if ((($this->getMinRow($this->currentPage)-1)+ $this->rowsPerPage ) > $this->numRows )
				return ($this->getMinRow($this->currentPage)-1 . ", " . ($this->numRows-($this->getMinRow($this->currentPage)-1)));
			else
				return ($this->getMinRow($this->currentPage)-1 . ", " . $this->rowsPerPage);
		}

		// ���������� ��������� ������, ��������� �� ���������
		function getPageLinks($href) {
			if (($pagesCount = $this->getPagesCount()) > 1) {
				$str = '';
				
				if (($startPage = $this->currentPage - $this->pagesRegion) < 1)	$startPage = 1;
				if (($endPage = $this->currentPage + $this->pagesRegion) > $pagesCount) $endPage = $pagesCount;
				
				for ($i = $startPage; $i <= $endPage; $i++) {
					if ($i == $this->currentPage) $str.= '<b class="s-sr2">'.$i.'</b> ';
					else $str.= $this->getPageLink($i, $i, $href);
				}
				
				// ������ ��������
				//$str = '<a href="'.str_replace("{PAGE}", 1, $href).'" class="'.$class.'">������</a>'.$str;
				
				/*
				// �����
				if (($this->currentPage > 1) && ($this->currentPage <= $pagesCount+1)) {
					$page_num = $this->currentPage - 1;
					$str = '<a href="'.str_replace("{PAGE}", $page_num, $href).'" class="'.$this->styleArrows.'">&laquo;</a>'.$str;
				}
				
				// ������
				if ($this->currentPage < $pagesCount) {
					$page_num = $this->currentPage + 1;
					$str.= '<a href="'.str_replace("{PAGE}", $page_num, $href).'" class="'.$this->styleArrows.'">&raquo;</a>';
				}
				*/
				// ��������� ��������
				//$str = $str.'<a href="'.str_replace("{PAGE}", $pagesCount, $href).'" class="'.$class.'">���������</a>';
				
				return $str;
			} else {
				return '';
			}
		}

		// ���������� ������ �� ��������
		function getPageLink($page, $title, $href) {
			if($page==1){
				$href = str_replace("?page={PAGE}", '', $href);
				$page_link = '<a href="'.getCodeBaseURL($href).'" class="s-sr1">'.$title.'</a> ';
			}
			else{
				$page_link = '<a href="'.getCodeBaseURL(str_replace("{PAGE}", $page, $href)).'" class="s-sr1">'.$title.'</a> ';
			}
			return $page_link;
		}

		// ���������� ����� ������ � ��������� ������, � ����� ����� ����������
		function getRowsInfo($page = '') {
			if (!$page)
				$page = $currentPage;
			return $this->getMinRow($page) . " - " . $this->getMaxRow($page) . " / " . $this->numRows;
		}

		// ���������� ����� ������� �������� � ����� ���������� �������
		function getPagesInfo($page = '') {
			if (!$page)
				$page = $currentPage;
			return $currentPage . " / " . $this->getPagesCount();
		}

		// ���������� URL �������������� �� ������� ����������
		function getParamUrl($param_array) {
			$url = '';
			while (list($key, $val) = each($param_array)) {
				$url.= '&'.$key.'='.$val;
			}
			return $url;
		}

		// ���������� ������� ������� ��������� �� ��������� � ����� [ $assign_to ]
		function parse($url, $title = '', $assign_to = 'PAGES') {
			global $tpl;
			
			if (empty($url)) $url = $_SERVER['PHP_SELF'].'?page_id='.PAGE_ID.'&lang='.LANG_ID.'&page={PAGE}';
			
			if ($this->getPagesCount() > 1) {
				if (!empty($title)) {
					$view = '<tr><td id="sr6"><div id="sr9">'.$title.":</div>".$this->getPageLinks($url).'</td></tr>';
				} else {
					$view = $this->getPageLinks($url);
				}
				
				$view = $this->tplHeader.$view.$this->tplFooter;
				$tpl->assign($assign_to, $view);
			} else { 
				$tpl->assign($assign_to, "");
			}
		}
	}
?>