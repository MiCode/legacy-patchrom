.class Lcom/android/server/sec/InternalClipboardExService$1;
.super Landroid/os/Handler;
.source "InternalClipboardExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sec/InternalClipboardExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sec/InternalClipboardExService;


# direct methods
.method constructor <init>(Lcom/android/server/sec/InternalClipboardExService;)V
    .locals 0
    .parameter

    .prologue
    .line 572
    iput-object p1, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 575
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 603
    const-string v0, "ClipboardServiceEx"

    const-string v1, "handler msg : default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 606
    :cond_0
    :goto_0
    return-void

    .line 581
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 582
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->dismiss()V

    .line 585
    :cond_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    new-instance v1, Lcom/android/server/sec/ClippedDataPickerDialog;

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$400(Lcom/android/server/sec/InternalClipboardExService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0, v1}, Lcom/android/server/sec/InternalClipboardExService;->access$302(Lcom/android/server/sec/InternalClipboardExService;Lcom/android/server/sec/ClippedDataPickerDialog;)Lcom/android/server/sec/ClippedDataPickerDialog;

    .line 588
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 591
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sec/ClippedDataPickerDialog;->show()V

    goto :goto_0

    .line 599
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mCBPickerDialog:Lcom/android/server/sec/ClippedDataPickerDialog;
    invoke-static {v0}, Lcom/android/server/sec/InternalClipboardExService;->access$300(Lcom/android/server/sec/InternalClipboardExService;)Lcom/android/server/sec/ClippedDataPickerDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mEnableFormatId:I
    invoke-static {v1}, Lcom/android/server/sec/InternalClipboardExService;->access$500(Lcom/android/server/sec/InternalClipboardExService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/sec/InternalClipboardExService$1;->this$0:Lcom/android/server/sec/InternalClipboardExService;

    #getter for: Lcom/android/server/sec/InternalClipboardExService;->mClPasteEvent:Landroid/sec/clipboard/IClipboardDataPasteEvent;
    invoke-static {v2}, Lcom/android/server/sec/InternalClipboardExService;->access$600(Lcom/android/server/sec/InternalClipboardExService;)Landroid/sec/clipboard/IClipboardDataPasteEvent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/sec/ClippedDataPickerDialog;->setPasteTargetViewInfo(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    goto :goto_0

    .line 575
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
