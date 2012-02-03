.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnClickListenerToBodyView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;


# direct methods
.method constructor <init>(Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 770
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    if-eqz v2, :cond_0

    .line 785
    :goto_0
    return-void

    .line 773
    :cond_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, p1}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 777
    .local v1, index:I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v2, v2, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$1;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/sec/clipboard/IClipboardDataUiEvent;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 780
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
