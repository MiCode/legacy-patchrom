.class public Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FmReceiverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/fm/FmReceiverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BrdcstReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/fm/FmReceiverService;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "FmReceiverService"

    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, actionCommand:Ljava/lang/String;
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-virtual {v3}, Lcom/broadcom/bt/service/fm/FmReceiverService;->getRadioIsOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BrdcstReceiver onReceive ACTION: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 164
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {p2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 166
    .local v1, stream:I
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## stream = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eq v1, v8, :cond_0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 171
    :cond_0
    const-string v3, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 172
    .local v2, volumeIdx:I
    const-string v3, "FmReceiverService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "## volumeIdx = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    if-gez v2, :cond_1

    move v2, v6

    .line 175
    :cond_1
    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000()[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v7

    if-le v2, v3, :cond_2

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000()[I

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v7

    move v2, v3

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmReceiverService$BrdcstReceiver;->this$0:Lcom/broadcom/bt/service/fm/FmReceiverService;

    invoke-static {}, Lcom/broadcom/bt/service/fm/FmReceiverService;->access$000()[I

    move-result-object v4

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Lcom/broadcom/bt/service/fm/FmReceiverService;->setFMVolume(I)I

    .line 181
    .end local v1           #stream:I
    .end local v2           #volumeIdx:I
    :cond_3
    return-void
.end method
