﻿#pragma checksum "..\..\frm_PhanCongGV.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "037F5CCB5070EB83834F1AAAC06D4473"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using DevExpress.Core;
using DevExpress.Xpf.Core;
using DevExpress.Xpf.Core.ConditionalFormatting;
using DevExpress.Xpf.Core.DataSources;
using DevExpress.Xpf.Core.Serialization;
using DevExpress.Xpf.Core.ServerMode;
using DevExpress.Xpf.Grid;
using DevExpress.Xpf.Grid.ConditionalFormatting;
using DevExpress.Xpf.Grid.LookUp;
using DevExpress.Xpf.Grid.TreeList;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace DATN.TTS.TVMH {
    
    
    /// <summary>
    /// frm_PhanCongGV
    /// </summary>
    public partial class frm_PhanCongGV : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 24 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Border BrdBtnWrap;
        
        #line default
        #line hidden
        
        
        #line 26 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnSave;
        
        #line default
        #line hidden
        
        
        #line 27 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button btnrefresh;
        
        #line default
        #line hidden
        
        
        #line 31 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Grid Body_Area;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Grid.GridControl grd;
        
        #line default
        #line hidden
        
        
        #line 34 "..\..\frm_PhanCongGV.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal DevExpress.Xpf.Grid.TableView grdView;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/DATN.TTS.TVMH;component/frm_phanconggv.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\frm_PhanCongGV.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 2:
            this.BrdBtnWrap = ((System.Windows.Controls.Border)(target));
            return;
            case 3:
            this.btnSave = ((System.Windows.Controls.Button)(target));
            
            #line 26 "..\..\frm_PhanCongGV.xaml"
            this.btnSave.Click += new System.Windows.RoutedEventHandler(this.BtnSave_OnClick);
            
            #line default
            #line hidden
            return;
            case 4:
            this.btnrefresh = ((System.Windows.Controls.Button)(target));
            
            #line 27 "..\..\frm_PhanCongGV.xaml"
            this.btnrefresh.Click += new System.Windows.RoutedEventHandler(this.Btnrefresh_OnClick);
            
            #line default
            #line hidden
            return;
            case 5:
            this.Body_Area = ((System.Windows.Controls.Grid)(target));
            return;
            case 6:
            this.grd = ((DevExpress.Xpf.Grid.GridControl)(target));
            
            #line 32 "..\..\frm_PhanCongGV.xaml"
            this.grd.MouseDoubleClick += new System.Windows.Input.MouseButtonEventHandler(this.Grd_OnMouseDoubleClick);
            
            #line default
            #line hidden
            return;
            case 7:
            this.grdView = ((DevExpress.Xpf.Grid.TableView)(target));
            
            #line 36 "..\..\frm_PhanCongGV.xaml"
            this.grdView.FocusedRowChanged += new DevExpress.Xpf.Grid.FocusedRowChangedEventHandler(this.GrdView_OnFocusedRowChanged);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 13 "..\..\frm_PhanCongGV.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.btndelete_Click);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

