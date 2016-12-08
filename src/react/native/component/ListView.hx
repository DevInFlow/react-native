package react.native.component;

@:jsRequire('react-native', 'ListView')
extern class ListView extends react.ReactComponent {
	static inline var DataSource = ListViewDataSource;
}

typedef ListViewDataSourceOfRow<TRow> = ListViewDataSource<Dynamic, Dynamic, Dynamic, Dynamic, TRow>;

@:jsRequire('react-native', 'ListView.DataSource')
extern class ListViewDataSource<TData, TSectionId, TRowId, TSection, TRow> {
	function new(options:ListViewDataSourceOptions<TData, TSectionId, TRowId, TSection, TRow>);
	function cloneWithRows(arr:Array<TRow>):ListViewDataSource<TData, TSectionId, TRowId, TSection, TRow>;
	function cloneWithRowsAndSections(data:TData, sectionIds:Array<TSectionId>, rowIds:Array<TRowId>):ListViewDataSource<TData, TSectionId, TRowId, TSection, TRow>;
}

typedef ListViewDataSourceOptions<TData, TSectionId, TRowId, TSection, TRow> = {
	?rowHasChanged:TRow->TRow->Bool,
	?getRowData:TData->TSectionId->String->TRow,
	?getSectionData:Dynamic->String->String->TSection,
	?sectionHeaderHasChanged:TSectionId->TSectionId->Bool,
}
