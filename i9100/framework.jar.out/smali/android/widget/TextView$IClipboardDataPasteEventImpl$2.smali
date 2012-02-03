.class Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

.field final synthetic val$dataInner:Landroid/sec/clipboard/data/ClipboardData;


# direct methods
.method constructor <init>(Landroid/widget/TextView$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;->this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    iput-object p2, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;->this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    iget-object v0, v0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;->val$dataInner:Landroid/sec/clipboard/data/ClipboardData;

    #calls: Landroid/widget/TextView;->pasteCipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$000(Landroid/widget/TextView;Landroid/sec/clipboard/data/ClipboardData;)V

    .line 303
    return-void
.end method
