.class Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "WebClipboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;->this$1:Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl;->this$0:Landroid/webkit/WebClipboard;

    iget-object v1, p0, Landroid/webkit/WebClipboard$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    #calls: Landroid/webkit/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Landroid/webkit/WebClipboard;->access$100(Landroid/webkit/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 463
    return-void
.end method
