.class Landroid/widget/TextView$IClipboardDataPasteEventImpl$1;
.super Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$IClipboardDataPasteEventImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;


# direct methods
.method constructor <init>(Landroid/widget/TextView$IClipboardDataPasteEventImpl;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$1;->this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-direct {p0}, Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 1
    .parameter "data"

    .prologue
    .line 292
    iget-object v0, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$1;->this$1:Landroid/widget/TextView$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, p1}, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V

    .line 293
    return-void
.end method
