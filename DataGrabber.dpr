{$SetPEFlags 1} // strip relocation info

program DataGrabber;

uses
  Forms,
  DataGrabber.Resources in 'DataGrabber.Resources.pas',
  DataGrabber.DataInspector in 'DataGrabber.DataInspector.pas' {frmDataInspector},
  DataGrabber.Utils in 'DataGrabber.Utils.pas',
  DataGrabber.Settings in 'DataGrabber.Settings.pas',
  DataGrabber.Settings.Dialog in 'DataGrabber.Settings.Dialog.pas' {frmSettingsDialog},
  DataGrabber.FieldInspector in 'DataGrabber.FieldInspector.pas' {frmFieldInspector},
  DataGrabber.DataView.cxGrid in 'DataView\DataGrabber.DataView.cxGrid.pas' {frmcxGrid: TFrame},
  DataGrabber.DataView.GridView in 'DataView\DataGrabber.DataView.GridView.pas' {frmGridView},
  DataGrabber.RegisterServices in 'DataGrabber.RegisterServices.pas',
  DataGrabber.ConnectionProfiles in 'DataGrabber.ConnectionProfiles.pas',
  DataGrabber.ConnectionView in 'DataGrabber.ConnectionView.pas' {frmConnectionView},
  DataGrabber.ConnectionViewManager in 'DataGrabber.ConnectionViewManager.pas' {dmConnectionViewManager: TDataModule},
  DataGrabber.EditorView in 'DataGrabber.EditorView.pas' {frmEditorView},
  DataGrabber.FormSettings in 'DataGrabber.FormSettings.pas',
  DataGrabber.Factories in 'DataGrabber.Factories.pas',
  DataGrabber.Interfaces in 'DataGrabber.Interfaces.pas',
  DataGrabber.MainForm in 'DataGrabber.MainForm.pas' {frmMain},
  DDuce.DynamicRecord in '..\..\libraries\dduce\Source\DDuce.DynamicRecord.pas',
  DDuce.RandomData in '..\..\libraries\dduce\Source\DDuce.RandomData.pas',
  DDuce.Reflect in '..\..\libraries\dduce\Source\DDuce.Reflect.pas',
  DDuce.ScopedReference in '..\..\libraries\dduce\Source\DDuce.ScopedReference.pas',
  DDuce.WinIPC.Client in '..\..\libraries\dduce\Source\DDuce.WinIPC.Client.pas',
  DDuce.WinIPC.Server in '..\..\libraries\dduce\Source\DDuce.WinIPC.Server.pas',
  DDuce.Components.DBGridView in '..\..\libraries\dduce\Source\Components\DDuce.Components.DBGridView.pas',
  DDuce.Components.Factories in '..\..\libraries\dduce\Source\Components\DDuce.Components.Factories.pas',
  DDuce.Components.GridView in '..\..\libraries\dduce\Source\Components\DDuce.Components.GridView.pas',
  DDuce.Components.Inspector in '..\..\libraries\dduce\Source\Components\DDuce.Components.Inspector.pas',
  DDuce.Components.LogTree in '..\..\libraries\dduce\Source\Components\DDuce.Components.LogTree.pas',
  DDuce.Components.PropertyInspector.CollectionEditor in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.CollectionEditor.pas' {frmCollectionEditor},
  DDuce.Components.PropertyInspector in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.pas',
  DDuce.Components.PropertyInspector.StringsEditor in '..\..\libraries\dduce\Source\Components\DDuce.Components.PropertyInspector.StringsEditor.pas' {StringsEditorDialog},
  DDuce.Components.XMLTree.Editors in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.Editors.pas',
  DDuce.Components.XMLTree.NodeAttributes in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.NodeAttributes.pas',
  DDuce.Components.XMLTree in '..\..\libraries\dduce\Source\Components\DDuce.Components.XMLTree.pas',
  VirtualTrees.Actions in '..\..\components\Virtual-TreeView\Source\VirtualTrees.Actions.pas',
  VirtualTrees.Classes in '..\..\components\Virtual-TreeView\Source\VirtualTrees.Classes.pas',
  VirtualTrees.ClipBoard in '..\..\components\Virtual-TreeView\Source\VirtualTrees.ClipBoard.pas',
  VirtualTrees.Export in '..\..\components\Virtual-TreeView\Source\VirtualTrees.Export.pas',
  VirtualTrees in '..\..\components\Virtual-TreeView\Source\VirtualTrees.pas',
  VirtualTrees.StyleHooks in '..\..\components\Virtual-TreeView\Source\VirtualTrees.StyleHooks.pas',
  VirtualTrees.Utils in '..\..\components\Virtual-TreeView\Source\VirtualTrees.Utils.pas',
  VirtualTrees.WorkerThread in '..\..\components\Virtual-TreeView\Source\VirtualTrees.WorkerThread.pas',
  VTAccessibility in '..\..\components\Virtual-TreeView\Source\VTAccessibility.pas',
  VTAccessibilityFactory in '..\..\components\Virtual-TreeView\Source\VTAccessibilityFactory.pas',
  VTHeaderPopup in '..\..\components\Virtual-TreeView\Source\VTHeaderPopup.pas',
  DDuce.Logger.Base in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Base.pas',
  DDuce.Logger.Channels.Base in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.Base.pas',
  DDuce.Logger.Channels.LogFile in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.LogFile.pas',
  DDuce.Logger.Channels.WinIPC in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.WinIPC.pas',
  DDuce.Logger.Channels.ZeroMQ in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Channels.ZeroMQ.pas',
  DDuce.Logger.Factories in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Factories.pas',
  DDuce.Logger.Interfaces in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.Interfaces.pas',
  DDuce.Logger in '..\..\libraries\dduce\Source\Modules\Logger\DDuce.Logger.pas',
  DSharp.Bindings.Collections in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.Collections.pas',
  DSharp.Bindings.CollectionView in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.CollectionView.pas',
  DSharp.Bindings.Notifications in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Bindings.Notifications.pas',
  DSharp.Collections.ObservableCollection in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Collections.ObservableCollection.pas',
  DSharp.Core.Collections in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Collections.pas',
  DSharp.Core.DataTemplates.Default in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.Default.pas',
  DSharp.Core.DataTemplates in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DataTemplates.pas',
  DSharp.Core.DependencyProperty in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.DependencyProperty.pas',
  DSharp.Core.Expressions in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Expressions.pas',
  DSharp.Core.Framework in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Framework.pas',
  DSharp.Core.PropertyChangedBase in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.PropertyChangedBase.pas',
  DSharp.Core.Reflection in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Reflection.pas',
  DSharp.Core.Utils in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Core.Utils.pas',
  DSharp.Windows.ColumnDefinitions.ControlTemplate in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.ControlTemplate.pas',
  DSharp.Windows.ColumnDefinitions in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ColumnDefinitions.pas',
  DSharp.Windows.ControlTemplates in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.ControlTemplates.pas',
  DSharp.Windows.CustomPresenter in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.pas',
  DSharp.Windows.CustomPresenter.Types in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.CustomPresenter.Types.pas',
  DSharp.Windows.TreeViewPresenter in '..\..\libraries\dduce\Source\Dependencies\DSharp\DSharp.Windows.TreeViewPresenter.pas',
  DDuce.ObjectInspector.zObjectInspector in '..\..\libraries\dduce\Source\Modules\ObjectInspector\DDuce.ObjectInspector.zObjectInspector.pas' {frmComponentInspectorzObjectInspector},
  DDuce.Factories in '..\..\libraries\dduce\Source\Modules\DDuce.Factories.pas',
  DDuce.FormSettings in '..\..\libraries\dduce\Source\Modules\DDuce.FormSettings.pas',
  BCEditor.Consts in '..\..\components\TBCEditor\Source\BCEditor.Consts.pas',
  BCEditor.Editor.ActiveLine in '..\..\components\TBCEditor\Source\BCEditor.Editor.ActiveLine.pas',
  BCEditor.Editor.Base in '..\..\components\TBCEditor\Source\BCEditor.Editor.Base.pas',
  BCEditor.Editor.Caret.MultiEdit.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.MultiEdit.Colors.pas',
  BCEditor.Editor.Caret.MultiEdit in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.MultiEdit.pas',
  BCEditor.Editor.Caret.NonBlinking.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.NonBlinking.Colors.pas',
  BCEditor.Editor.Caret.NonBlinking in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.NonBlinking.pas',
  BCEditor.Editor.Caret.Offsets in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.Offsets.pas',
  BCEditor.Editor.Caret in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.pas',
  BCEditor.Editor.Caret.Styles in '..\..\components\TBCEditor\Source\BCEditor.Editor.Caret.Styles.pas',
  BCEditor.Editor.CodeFolding.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Colors.pas',
  BCEditor.Editor.CodeFolding.Hint.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Hint.Colors.pas',
  BCEditor.Editor.CodeFolding.Hint.Form in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Hint.Form.pas',
  BCEditor.Editor.CodeFolding.Hint.Indicator.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Hint.Indicator.Colors.pas',
  BCEditor.Editor.CodeFolding.Hint.Indicator in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Hint.Indicator.pas',
  BCEditor.Editor.CodeFolding.Hint in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Hint.pas',
  BCEditor.Editor.CodeFolding in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.pas',
  BCEditor.Editor.CodeFolding.Ranges in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Ranges.pas',
  BCEditor.Editor.CodeFolding.Regions in '..\..\components\TBCEditor\Source\BCEditor.Editor.CodeFolding.Regions.pas',
  BCEditor.Editor.CompletionProposal.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.CompletionProposal.Colors.pas',
  BCEditor.Editor.CompletionProposal.Columns in '..\..\components\TBCEditor\Source\BCEditor.Editor.CompletionProposal.Columns.pas',
  BCEditor.Editor.CompletionProposal in '..\..\components\TBCEditor\Source\BCEditor.Editor.CompletionProposal.pas',
  BCEditor.Editor.CompletionProposal.PopupWindow in '..\..\components\TBCEditor\Source\BCEditor.Editor.CompletionProposal.PopupWindow.pas',
  BCEditor.Editor.CompletionProposal.Trigger in '..\..\components\TBCEditor\Source\BCEditor.Editor.CompletionProposal.Trigger.pas',
  BCEditor.Editor.DB in '..\..\components\TBCEditor\Source\BCEditor.Editor.DB.pas',
  BCEditor.Editor.Directories in '..\..\components\TBCEditor\Source\BCEditor.Editor.Directories.pas',
  BCEditor.Editor.Glyph in '..\..\components\TBCEditor\Source\BCEditor.Editor.Glyph.pas',
  BCEditor.Editor.InternalImage in '..\..\components\TBCEditor\Source\BCEditor.Editor.InternalImage.pas',
  BCEditor.Editor.KeyCommands in '..\..\components\TBCEditor\Source\BCEditor.Editor.KeyCommands.pas',
  BCEditor.Editor.LeftMargin.Bookmarks in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.Bookmarks.pas',
  BCEditor.Editor.LeftMargin.Border in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.Border.pas',
  BCEditor.Editor.LeftMargin.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.Colors.pas',
  BCEditor.Editor.LeftMargin.LineNumbers in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.LineNumbers.pas',
  BCEditor.Editor.LeftMargin.LineState in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.LineState.pas',
  BCEditor.Editor.LeftMargin.Marks in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.Marks.pas',
  BCEditor.Editor.LeftMargin.MarksPanel in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.MarksPanel.pas',
  BCEditor.Editor.LeftMargin in '..\..\components\TBCEditor\Source\BCEditor.Editor.LeftMargin.pas',
  BCEditor.Editor.Marks in '..\..\components\TBCEditor\Source\BCEditor.Editor.Marks.pas',
  BCEditor.Editor.MatchingPair.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.MatchingPair.Colors.pas',
  BCEditor.Editor.MatchingPair in '..\..\components\TBCEditor\Source\BCEditor.Editor.MatchingPair.pas',
  BCEditor.Editor.Minimap.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Minimap.Colors.pas',
  BCEditor.Editor.Minimap.Indicator in '..\..\components\TBCEditor\Source\BCEditor.Editor.Minimap.Indicator.pas',
  BCEditor.Editor.Minimap in '..\..\components\TBCEditor\Source\BCEditor.Editor.Minimap.pas',
  BCEditor.Editor.Minimap.Shadow in '..\..\components\TBCEditor\Source\BCEditor.Editor.Minimap.Shadow.pas',
  BCEditor.Editor in '..\..\components\TBCEditor\Source\BCEditor.Editor.pas',
  BCEditor.Editor.PopupWindow in '..\..\components\TBCEditor\Source\BCEditor.Editor.PopupWindow.pas',
  BCEditor.Editor.Replace in '..\..\components\TBCEditor\Source\BCEditor.Editor.Replace.pas',
  BCEditor.Editor.RightMargin.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.RightMargin.Colors.pas',
  BCEditor.Editor.RightMargin in '..\..\components\TBCEditor\Source\BCEditor.Editor.RightMargin.pas',
  BCEditor.Editor.Scroll.Hint in '..\..\components\TBCEditor\Source\BCEditor.Editor.Scroll.Hint.pas',
  BCEditor.Editor.Scroll in '..\..\components\TBCEditor\Source\BCEditor.Editor.Scroll.pas',
  BCEditor.Editor.Scroll.Shadow in '..\..\components\TBCEditor\Source\BCEditor.Editor.Scroll.Shadow.pas',
  BCEditor.Editor.Search.Highlighter.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.Highlighter.Colors.pas',
  BCEditor.Editor.Search.Highlighter in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.Highlighter.pas',
  BCEditor.Editor.Search.InSelection in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.InSelection.pas',
  BCEditor.Editor.Search.Map.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.Map.Colors.pas',
  BCEditor.Editor.Search.Map in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.Map.pas',
  BCEditor.Editor.Search in '..\..\components\TBCEditor\Source\BCEditor.Editor.Search.pas',
  BCEditor.Editor.Selection.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.Selection.Colors.pas',
  BCEditor.Editor.Selection in '..\..\components\TBCEditor\Source\BCEditor.Editor.Selection.pas',
  BCEditor.Editor.SkipRegions in '..\..\components\TBCEditor\Source\BCEditor.Editor.SkipRegions.pas',
  BCEditor.Editor.SpecialChars.EndOfLine in '..\..\components\TBCEditor\Source\BCEditor.Editor.SpecialChars.EndOfLine.pas',
  BCEditor.Editor.SpecialChars in '..\..\components\TBCEditor\Source\BCEditor.Editor.SpecialChars.pas',
  BCEditor.Editor.SpecialChars.Selection in '..\..\components\TBCEditor\Source\BCEditor.Editor.SpecialChars.Selection.pas',
  BCEditor.Editor.SyncEdit.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.SyncEdit.Colors.pas',
  BCEditor.Editor.SyncEdit in '..\..\components\TBCEditor\Source\BCEditor.Editor.SyncEdit.pas',
  BCEditor.Editor.Tabs in '..\..\components\TBCEditor\Source\BCEditor.Editor.Tabs.pas',
  BCEditor.Editor.Undo.Item in '..\..\components\TBCEditor\Source\BCEditor.Editor.Undo.Item.pas',
  BCEditor.Editor.Undo.List in '..\..\components\TBCEditor\Source\BCEditor.Editor.Undo.List.pas',
  BCEditor.Editor.Undo in '..\..\components\TBCEditor\Source\BCEditor.Editor.Undo.pas',
  BCEditor.Editor.UnknownChars in '..\..\components\TBCEditor\Source\BCEditor.Editor.UnknownChars.pas',
  BCEditor.Editor.Utils in '..\..\components\TBCEditor\Source\BCEditor.Editor.Utils.pas',
  BCEditor.Editor.WordWrap.Colors in '..\..\components\TBCEditor\Source\BCEditor.Editor.WordWrap.Colors.pas',
  BCEditor.Editor.WordWrap in '..\..\components\TBCEditor\Source\BCEditor.Editor.WordWrap.pas',
  BCEditor.Encoding in '..\..\components\TBCEditor\Source\BCEditor.Encoding.pas',
  BCEditor.Export.HTML in '..\..\components\TBCEditor\Source\BCEditor.Export.HTML.pas',
  BCEditor.Highlighter.Attributes in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Attributes.pas',
  BCEditor.Highlighter.Colors in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Colors.pas',
  BCEditor.Highlighter.Comments in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Comments.pas',
  BCEditor.Highlighter.Import.JSON in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Import.JSON.pas',
  BCEditor.Highlighter.Info in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Info.pas',
  BCEditor.Highlighter in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.pas',
  BCEditor.Highlighter.Rules in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Rules.pas',
  BCEditor.Highlighter.Token in '..\..\components\TBCEditor\Source\BCEditor.Highlighter.Token.pas',
  BCEditor.JsonDataObjects in '..\..\components\TBCEditor\Source\BCEditor.JsonDataObjects.pas',
  BCEditor.KeyboardHandler in '..\..\components\TBCEditor\Source\BCEditor.KeyboardHandler.pas',
  BCEditor.Language in '..\..\components\TBCEditor\Source\BCEditor.Language.pas',
  BCEditor.Lines in '..\..\components\TBCEditor\Source\BCEditor.Lines.pas',
  BCEditor.MacroRecorder in '..\..\components\TBCEditor\Source\BCEditor.MacroRecorder.pas',
  BCEditor.PaintHelper in '..\..\components\TBCEditor\Source\BCEditor.PaintHelper.pas',
  BCEditor.Print.HeaderFooter in '..\..\components\TBCEditor\Source\BCEditor.Print.HeaderFooter.pas',
  BCEditor.Print.Margins in '..\..\components\TBCEditor\Source\BCEditor.Print.Margins.pas',
  BCEditor.Print in '..\..\components\TBCEditor\Source\BCEditor.Print.pas',
  BCEditor.Print.Preview in '..\..\components\TBCEditor\Source\BCEditor.Print.Preview.pas',
  BCEditor.Print.PrinterInfo in '..\..\components\TBCEditor\Source\BCEditor.Print.PrinterInfo.pas',
  BCEditor.Print.Types in '..\..\components\TBCEditor\Source\BCEditor.Print.Types.pas',
  BCEditor.Search in '..\..\components\TBCEditor\Source\BCEditor.Search.pas',
  BCEditor.Search.RegularExpressions in '..\..\components\TBCEditor\Source\BCEditor.Search.RegularExpressions.pas',
  BCEditor.Search.Wildcard in '..\..\components\TBCEditor\Source\BCEditor.Search.Wildcard.pas',
  BCEditor.StyleHooks in '..\..\components\TBCEditor\Source\BCEditor.StyleHooks.pas',
  BCEditor.Types in '..\..\components\TBCEditor\Source\BCEditor.Types.pas',
  BCEditor.Utils in '..\..\components\TBCEditor\Source\BCEditor.Utils.pas',
  uCustomImageDrawHook in 'uCustomImageDrawHook.pas',
  ZeroMQ.API in '..\..\libraries\Delphi-ZeroMQ\ZeroMQ.API.pas',
  ZeroMQ in '..\..\libraries\Delphi-ZeroMQ\ZeroMQ.pas',
  DataGrabber.ConnectionProfileValueManager in 'DataGrabber.ConnectionProfileValueManager.pas',
  zBase in '..\..\components\zcontrols\Source\zBase.pas',
  zCanvasStack in '..\..\components\zcontrols\Source\zCanvasStack.pas',
  zCollectionEditor in '..\..\components\zcontrols\Source\zCollectionEditor.pas' {zCollectionEditorDialog},
  zControlsReg in '..\..\components\zcontrols\Source\zControlsReg.pas',
  zGraphicDialog in '..\..\components\zcontrols\Source\zGraphicDialog.pas' {GraphicDialog},
  zObjInspDialogs in '..\..\components\zcontrols\Source\zObjInspDialogs.pas',
  zObjInspector in '..\..\components\zcontrols\Source\zObjInspector.pas',
  zObjInspList in '..\..\components\zcontrols\Source\zObjInspList.pas',
  zRecList in '..\..\components\zcontrols\Source\zRecList.pas',
  zStringsDialog in '..\..\components\zcontrols\Source\zStringsDialog.pas' {StringsDialog},
  zUtils in '..\..\components\zcontrols\Source\zUtils.pas',
  FloatConv.Double in '..\..\components\zcontrols\Source\FloatConv\FloatConv.Double.pas',
  FloatConv.Extended in '..\..\components\zcontrols\Source\FloatConv\FloatConv.Extended.pas',
  FloatConv in '..\..\components\zcontrols\Source\FloatConv\FloatConv.pas',
  FloatConv.Single in '..\..\components\zcontrols\Source\FloatConv\FloatConv.Single.pas',
  JsonDataObjects in '..\..\libraries\JsonDataObjects\Source\JsonDataObjects.pas',
  DataGrabber.DataView.KGrid in 'DataView\DataGrabber.DataView.KGrid.pas',
  DDuce.Editor.Factories in '..\..\libraries\dduce\Source\Modules\Editor\DDuce.Editor.Factories.pas',
  DDuce.ObjectInspector in '..\..\libraries\dduce\Source\Modules\ObjectInspector\DDuce.ObjectInspector.pas' {frmComponentInspector},
  zValueManager in '..\..\components\zcontrols\Source\zValueManager.pas',
  zObjInspTypes in '..\..\components\zcontrols\Source\zObjInspTypes.pas',
  DDuce.Factories.VirtualTrees in '..\..\libraries\dduce\Source\Factories\DDuce.Factories.VirtualTrees.pas',
  DDuce.Factories.zObjInspector in '..\..\libraries\dduce\Source\Factories\DDuce.Factories.zObjInspector.pas',
  DataGrabber.Data.FireDAC in 'DataGrabber.Data.FireDAC.pas' {dmDataFireDAC: TDataModule},
  DataGrabber.ConnectionSettings in 'DataGrabber.ConnectionSettings.pas';

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;
  Application.Initialize;
  Application.Title := 'DataGrabber 2';
  RegisterServices;
  Application.CreateForm(TfrmMain, frmMain);
  frmMain.Font.Name := 'Segoe UI';
  Application.Run;
end.
