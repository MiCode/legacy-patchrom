.class Lcom/android/internal/telephony/DataConnection$DcActiveState;
.super Lcom/android/internal/util/HierarchicalState;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcActiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActiveState: enter notifyConnectCompleted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    :cond_0
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const-string v6, "DcActiveState mRefNum="

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState nothandled msg.what="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    .end local p0
    .local v1, retVal:Z
    :goto_0
    return v1

    .end local v1           #retVal:Z
    .restart local p0
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcActiveState msg.what=EVENT_CONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState mRefNum="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted2(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v3, v2, v4}, Lcom/android/internal/telephony/DataConnection;->access$2000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    :cond_0
    const/4 v1, 0x1

    .restart local v1       #retVal:Z
    goto :goto_0

    .end local v1           #retVal:Z
    :sswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcActiveState mRefNum="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v4, v4, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    sub-int/2addr v3, v5

    iput v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .local v0, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v2, v0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/DataConnection;->access$1500(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$2100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$2200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .end local v0           #dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    .end local p0
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .restart local v1       #retVal:Z
    goto/16 :goto_0

    .end local v1           #retVal:Z
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    if-lez v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    sub-int/2addr v3, v5

    iput v3, v2, Lcom/android/internal/telephony/DataConnection;->mRefNum:I

    :cond_3
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted2(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    invoke-static {v2, p0}, Lcom/android/internal/telephony/DataConnection;->access$2300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 2
    .parameter "cp"
    .parameter "cause"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcInactiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method
