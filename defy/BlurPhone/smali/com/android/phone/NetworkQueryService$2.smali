.class Lcom/android/phone/NetworkQueryService$2;
.super Lcom/android/phone/INetworkQueryService$Stub;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkQueryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkQueryService;


# direct methods
.method constructor <init>(Lcom/android/phone/NetworkQueryService;)V
    .locals 0
    .parameter

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    invoke-direct {p0}, Lcom/android/phone/INetworkQueryService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public startNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 4
    .parameter "cb"

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 124
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 147
    :goto_0
    :pswitch_0
    monitor-exit v0

    .line 149
    :cond_0
    return-void

    .line 129
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mIsWorldPhone:Z
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 137
    :goto_1
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v2, -0x2

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkQueryService;->access$202(Lcom/android/phone/NetworkQueryService;I)I

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v2, v2, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->startNetworkQuery(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 124
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public stopNetworkQuery(Lcom/android/phone/INetworkQueryServiceCallback;)V
    .locals 3
    .parameter "cb"

    .prologue
    .line 162
    if-eqz p1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v0, v0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    iget-object v1, v1, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 167
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mIsWorldPhone:Z
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$300(Lcom/android/phone/NetworkQueryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$200(Lcom/android/phone/NetworkQueryService;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 178
    :cond_0
    :goto_0
    monitor-exit v0

    .line 180
    :cond_1
    return-void

    .line 170
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    #getter for: Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/NetworkQueryService;->access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->stopNetworkQuery()V

    .line 171
    iget-object v1, p0, Lcom/android/phone/NetworkQueryService$2;->this$0:Lcom/android/phone/NetworkQueryService;

    const/4 v2, -0x1

    #setter for: Lcom/android/phone/NetworkQueryService;->mState:I
    invoke-static {v1, v2}, Lcom/android/phone/NetworkQueryService;->access$202(Lcom/android/phone/NetworkQueryService;I)I

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 168
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
    .end packed-switch
.end method
