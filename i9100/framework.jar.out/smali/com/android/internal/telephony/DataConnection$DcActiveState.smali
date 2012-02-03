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

    .line 771
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/HierarchicalState;-><init>()V

    .line 772
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 773
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 771
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActiveState: enter notifyConnectCompleted"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 791
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 793
    :cond_0
    return-void
.end method

.method protected exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 797
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 798
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 799
    return-void
.end method

.method protected processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 804
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 815
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

    .line 816
    const/4 v1, 0x0

    .line 819
    .local v1, retVal:Z
    :goto_0
    return v1

    .line 806
    .end local v1           #retVal:Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcActiveState msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 807
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 808
    .local v0, dp:Lcom/android/internal/telephony/DataConnection$DisconnectParams;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v2, v0, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->tag:I

    .line 809
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #calls: Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V
    invoke-static {v2, v0}, Lcom/android/internal/telephony/DataConnection;->access$1300(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V

    .line 810
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$1800(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V

    .line 811
    const/4 v1, 0x1

    .line 812
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 804
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 2
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v1, "DcActiveState: setEnterNoticationParams cp,cause"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 777
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 778
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcActiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 779
    return-void
.end method
