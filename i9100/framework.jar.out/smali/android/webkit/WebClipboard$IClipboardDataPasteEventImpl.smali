.class Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "WebClipboard.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebClipboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/webkit/WebClipboard;


# direct methods
.method constructor <init>(Landroid/webkit/WebClipboard;)V
    .locals 1
    .parameter

    .prologue
    .line 447
    iput-object p1, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->this$0:Landroid/webkit/WebClipboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    new-instance v0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$1;-><init>(Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 457
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v2, "onClipboardDataPaste"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    move-object v0, p1

    .line 460
    .local v0, dataInner:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->this$0:Landroid/webkit/WebClipboard;

    #getter for: Landroid/webkit/WebClipboard;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/webkit/WebClipboard;->access$200(Landroid/webkit/WebClipboard;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;-><init>(Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 469
    return-void
.end method
