.class public Lcom/android/server/sec/ClippedDataPickerDialog;
.super Landroid/app/Dialog;
.source "ClippedDataPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;,
        Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;
    }
.end annotation


# static fields
.field static final LOGTAG:Ljava/lang/String; = "ClipBoardDialog"


# instance fields
.field mAdapter:Landroid/widget/BaseAdapter;

.field private mBroadCastListener:Landroid/content/BroadcastReceiver;

.field private mCbm:Landroid/sec/clipboard/ClipboardExManager;

.field private mClipBoardLandscapeHeight:I

.field private mClipBoardPanelLandscapeHeight:I

.field private mClipBoardPanelPortraitHeight:I

.field private mClipBoardPortraitHeight:I

.field private mClipDrawer:Landroid/widget/SlidingDrawer;

.field private mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

.field private mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

.field private mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

.field mContentPanel:Landroid/widget/LinearLayout;

.field private mCurrentOrientation:I

.field private mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

.field private mCurrentTargetDataType:I

.field mDataChangeUnderDelete:Z

.field mGrid:Landroid/widget/GridView;

.field mGridItemHeight:I

.field mGridItemWidth:I

.field mGridViewAniGoingOn:Z

.field mHTMLImageHeight:I

.field mHTMLImageWidth:I

.field private mSelectedIndex:I

.field final mTextViewMaxLineLand:I

.field final mTextViewMaxLinePort:I

.field final mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

.field final mTmpLocation:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 197
    const v0, 0x2090018

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 124
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 125
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 128
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataChangeUnderDelete:Z

    .line 131
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 132
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 134
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 135
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 137
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 140
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 141
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 142
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 143
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 147
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 152
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 153
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 154
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 155
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 158
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 159
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 304
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/sec/clipboard/ClipboardExManager;)V
    .locals 3
    .parameter "context"
    .parameter "mgr"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 202
    const v0, 0x2090018

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 124
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 125
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    .line 128
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    .line 129
    iput-boolean v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mDataChangeUnderDelete:Z

    .line 131
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 132
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 134
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 135
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 136
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLinePort:I

    .line 137
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTextViewMaxLineLand:I

    .line 140
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 141
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    .line 142
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 143
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    .line 147
    new-instance v0, Landroid/inputmethodservice/InputMethodService$Insets;

    invoke-direct {v0}, Landroid/inputmethodservice/InputMethodService$Insets;-><init>()V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpInsets:Landroid/inputmethodservice/InputMethodService$Insets;

    .line 148
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mTmpLocation:[I

    .line 152
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 153
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 154
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 155
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 156
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 158
    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 159
    iput-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 160
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 304
    new-instance v0, Lcom/android/server/sec/ClippedDataPickerDialog$3;

    invoke-direct {v0, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$3;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    iput-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    .line 204
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 205
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/ClipboardExManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/data/IClipboardDataList;)Landroid/sec/clipboard/data/IClipboardDataList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataList:Landroid/sec/clipboard/data/IClipboardDataList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/sec/ClippedDataPickerDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/sec/ClippedDataPickerDialog;Landroid/sec/clipboard/IClipboardDataUiEvent;)Landroid/sec/clipboard/IClipboardDataUiEvent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    return-object p1
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    .prologue
    .line 862
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 863
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 867
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onClipBoardDialogSizeChanged()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 875
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 876
    .local v0, cfg:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    if-eq v2, v3, :cond_0

    .line 877
    const v2, 0x2050047

    invoke-virtual {p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 878
    .local v1, clipBoardBottomPanel:Landroid/widget/LinearLayout;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentOrientation:I

    .line 879
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v2, :cond_0

    .line 880
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 881
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 882
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 883
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 890
    .end local v1           #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_0
    :goto_0
    return-void

    .line 884
    .restart local v1       #clipBoardBottomPanel:Landroid/widget/LinearLayout;
    :cond_1
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 885
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 886
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    invoke-direct {v2, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 215
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPortraitHeight:I

    .line 216
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardLandscapeHeight:I

    .line 217
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelPortraitHeight:I

    .line 218
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipBoardPanelLandscapeHeight:I

    .line 220
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x207001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    .line 222
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageWidth:I

    .line 223
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2070022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mHTMLImageHeight:I

    .line 224
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 225
    .local v0, theWindow:Landroid/view/Window;
    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 227
    const-string v1, "ClipBoardDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Width :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   Height :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridItemHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const v1, 0x2030010

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->setContentView(I)V

    .line 231
    const v1, 0x2050048

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    .line 235
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "clipboardEx"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    .line 240
    :cond_0
    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;Lcom/android/server/sec/ClippedDataPickerDialog$1;)V

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    .line 241
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardWorkingFormUiInterface:Lcom/android/server/sec/ClippedDataPickerDialog$ClipboardWorkingFormUiInterfaceImp;

    invoke-virtual {v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->RegistClipboardWorkingFormUiInterface(Landroid/sec/clipboard/IClipboardWorkingFormUiInterface;)Z

    .line 244
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$1;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 262
    const v1, 0x2050045

    invoke-virtual {p0, v1}, Lcom/android/server/sec/ClippedDataPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SlidingDrawer;

    iput-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    .line 264
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    new-instance v2, Lcom/android/server/sec/ClippedDataPickerDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/sec/ClippedDataPickerDialog$2;-><init>(Lcom/android/server/sec/ClippedDataPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 270
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->rebuildView()V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->onClipBoardDialogSizeChanged()V

    .line 273
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 332
    invoke-super {p0, p1, p2, p3}, Landroid/app/Dialog;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 333
    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    .line 334
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x20a

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 335
    const v1, 0x2080021

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 336
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p2}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    iput v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    .line 338
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 4
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 361
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 377
    invoke-super {p0, p2}, Landroid/app/Dialog;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 364
    :pswitch_0
    const-string v1, "CONTEXT_MENU"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected item  :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mSelectedIndex:I

    invoke-interface {v1, v2}, Landroid/sec/clipboard/IClipboardDataUiEvent;->removeItem(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    :goto_1
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCbm:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 375
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 368
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 361
    :pswitch_data_0
    .packed-switch 0x2050051
        :pswitch_0
    .end packed-switch
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mClipDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->open()V

    .line 284
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mBroadCastListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 300
    return-void
.end method

.method public rebuildView()V
    .locals 3

    .prologue
    .line 851
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 853
    .local v1, theWindow:Landroid/view/Window;
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 855
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x7dc

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 859
    return-void
.end method

.method public setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 3
    .parameter "type"
    .parameter "clPasteEvent"

    .prologue
    .line 836
    iget v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    if-eq v0, p1, :cond_0

    .line 837
    const-string v0, "ClipBoardDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPasteTargetViewDataType() called !  mCurrentTargetDataType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    iput p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentTargetDataType:I

    .line 840
    invoke-virtual {p0}, Lcom/android/server/sec/ClippedDataPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 846
    :cond_0
    iput-object p2, p0, Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;

    .line 847
    return-void
.end method

.method public show()V
    .locals 0

    .prologue
    .line 871
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 872
    return-void
.end method
