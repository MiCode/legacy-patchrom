.class Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;
.super Ljava/lang/Object;
.source "ClippedDataPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->setOnTouchListenerToWebView(Landroid/view/View;)V
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
    .line 793
    iput-object p1, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 797
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-boolean v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mGridViewAniGoingOn:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 829
    :goto_0
    return v3

    .line 800
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 802
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 803
    .local v2, outRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 804
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 806
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 808
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, p1}, Landroid/widget/GridView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 810
    .local v1, index:I
    invoke-virtual {p1, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 813
    :try_start_0
    iget-object v3, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v3, v3, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mClipboardDataUiEvent:Landroid/sec/clipboard/IClipboardDataUiEvent;
    invoke-static {v3}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$600(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataUiEvent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter$2;->this$1:Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;

    iget-object v4, v4, Lcom/android/server/sec/ClippedDataPickerDialog$ClipAdapter;->this$0:Lcom/android/server/sec/ClippedDataPickerDialog;

    #getter for: Lcom/android/server/sec/ClippedDataPickerDialog;->mCurrentPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v4}, Lcom/android/server/sec/ClippedDataPickerDialog;->access$500(Lcom/android/server/sec/ClippedDataPickerDialog;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Landroid/sec/clipboard/IClipboardDataUiEvent;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v3, v6

    .line 822
    goto :goto_0

    .line 814
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 816
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 824
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #index:I
    .end local v2           #outRect:Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    .line 825
    invoke-virtual {p1, v6}, Landroid/view/View;->setPressed(Z)V

    :cond_2
    :goto_2
    move v3, v5

    .line 829
    goto :goto_0

    .line 826
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 827
    :cond_4
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    goto :goto_2
.end method
