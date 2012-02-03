.class Lcom/samsung/media/fmradio/FMEventListener$2;
.super Landroid/os/Handler;
.source "FMEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/media/fmradio/FMEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/media/fmradio/FMEventListener;


# direct methods
.method constructor <init>(Lcom/samsung/media/fmradio/FMEventListener;)V
    .locals 0
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    .line 162
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 231
    .end local p0
    :goto_0
    return-void

    .line 165
    .restart local p0
    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 166
    .local v1, freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onChannelFound(J)V

    goto :goto_0

    .line 170
    .end local v1           #freq:Ljava/lang/Long;
    :pswitch_1
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStarted()V

    goto :goto_0

    .line 174
    :pswitch_2
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    move-object v2, v0

    .line 175
    .local v2, freqArry:[J
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onScanStopped([J)V

    goto :goto_0

    .line 179
    .end local v2           #freqArry:[J
    :pswitch_3
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [J

    move-object v0, v5

    check-cast v0, [J

    move-object v2, v0

    .line 180
    .restart local v2       #freqArry:[J
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v2}, Lcom/samsung/media/fmradio/FMEventListener;->onScanFinished([J)V

    goto :goto_0

    .line 184
    .end local v2           #freqArry:[J
    :pswitch_4
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onOn()V

    goto :goto_0

    .line 188
    :pswitch_5
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 189
    .local v4, reasonCode:I
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5, v4}, Lcom/samsung/media/fmradio/FMEventListener;->onOff(I)V

    goto :goto_0

    .line 193
    .end local v4           #reasonCode:I
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 194
    .restart local v1       #freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto :goto_0

    .line 198
    .end local v1           #freq:Ljava/lang/Long;
    :pswitch_7
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneConnected()V

    goto :goto_0

    .line 202
    :pswitch_8
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->earPhoneDisconnected()V

    goto :goto_0

    .line 207
    :pswitch_9
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 208
    .local v3, obArry:[Ljava/lang/Object;
    iget-object v6, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    const/4 v5, 0x0

    aget-object p0, v3, v5

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v5, 0x1

    aget-object p0, v3, v5

    check-cast p0, Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v5, v3, v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v6, v7, v8, p0, v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSReceived(JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    .end local v3           #obArry:[Ljava/lang/Object;
    .restart local p0
    :pswitch_a
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSEnabled()V

    goto/16 :goto_0

    .line 217
    :pswitch_b
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onRDSDisabled()V

    goto/16 :goto_0

    .line 221
    :pswitch_c
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v5}, Lcom/samsung/media/fmradio/FMEventListener;->onAFStarted()V

    goto/16 :goto_0

    .line 225
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 226
    .restart local v1       #freq:Ljava/lang/Long;
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onAFReceived(J)V

    .line 227
    iget-object v5, p0, Lcom/samsung/media/fmradio/FMEventListener$2;->this$0:Lcom/samsung/media/fmradio/FMEventListener;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/samsung/media/fmradio/FMEventListener;->onTune(J)V

    goto/16 :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
