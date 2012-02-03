.class Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;
.super Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataUiEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public removeItem(I)V
    .locals 1
    .parameter "arg0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->removeItem(I)V

    .line 97
    return-void
.end method

.method public selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V
    .locals 1
    .parameter "index"
    .parameter "clPasteEvent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp$1;->this$1:Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/sec/InternalClipboardExService$ClipBoardDataUiEventImp;->selectItem(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 103
    return-void
.end method
