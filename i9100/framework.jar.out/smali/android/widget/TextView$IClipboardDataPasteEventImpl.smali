.class Landroid/widget/TextView$IClipboardDataPasteEventImpl;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/sec/clipboard/IClipboardDataPasteEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IClipboardDataPasteEventImpl"
.end annotation


# instance fields
.field private final mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 288
    iput-object p1, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    new-instance v0, Landroid/widget/TextView$IClipboardDataPasteEventImpl$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl$1;-><init>(Landroid/widget/TextView$IClipboardDataPasteEventImpl;)V

    iput-object v0, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->mBinder:Landroid/sec/clipboard/IClipboardDataPasteEvent$Stub;

    return-object v0
.end method

.method public onClipboardDataPaste(Landroid/sec/clipboard/data/ClipboardData;)V
    .locals 3
    .parameter "data"

    .prologue
    .line 298
    move-object v0, p1

    .line 299
    .local v0, dataInner:Landroid/sec/clipboard/data/ClipboardData;
    iget-object v1, p0, Landroid/widget/TextView$IClipboardDataPasteEventImpl;->this$0:Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;

    invoke-direct {v2, p0, v0}, Landroid/widget/TextView$IClipboardDataPasteEventImpl$2;-><init>(Landroid/widget/TextView$IClipboardDataPasteEventImpl;Landroid/sec/clipboard/data/ClipboardData;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method
