.class Landroid/sec/clipboard/data/ClipboardDataMgr$1;
.super Landroid/sec/clipboard/data/IClipboardDataList$Stub;
.source "ClipboardDataMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/sec/clipboard/data/ClipboardDataMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;


# direct methods
.method constructor <init>(Landroid/sec/clipboard/data/ClipboardDataMgr;)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-object p1, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-direct {p0}, Landroid/sec/clipboard/data/IClipboardDataList$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getItem(I)Landroid/sec/clipboard/data/ClipboardData;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/ClipboardDataMgr;->getItem(I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    iget-object v0, p0, Landroid/sec/clipboard/data/ClipboardDataMgr$1;->this$0:Landroid/sec/clipboard/data/ClipboardDataMgr;

    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardDataMgr;->size()I

    move-result v0

    return v0
.end method
