.class Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
.super Ljava/lang/Object;
.source "LteCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApnContext"
.end annotation


# instance fields
.field mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

.field mApnType:Ljava/lang/String;

.field mDataEnabled:Z

.field mReason:Ljava/lang/String;

.field mReconnectIntent:Landroid/app/PendingIntent;

.field mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field mWaitingApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "apnType"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-void
.end method


# virtual methods
.method public getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-object v0
.end method

.method public getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    return-object v0
.end method

.method public getApnType()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    return-object v0
.end method

.method public getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const/4 v0, 0x0

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .restart local v0       #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_0
    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getReconnectIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getWaitingApns()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isApnTypeActive()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mDataEnabled:Z

    return v0
.end method

.method public removeNextApn()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setActiveApn(Lcom/android/internal/telephony/gsm/ApnSetting;)V
    .locals 0
    .parameter "activeApn"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-void
.end method

.method public setActivePdp(Lcom/android/internal/telephony/gsm/GsmDataConnection;)V
    .locals 0
    .parameter "activePdp"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mActivePdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set enabled as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mDataEnabled:Z

    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 3
    .parameter "reason"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set reason as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",current state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReason:Ljava/lang/String;

    return-void
.end method

.method public setReconnectIntent(Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "intent"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set ReconnectIntent for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method public setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 3
    .parameter "s"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->this$0:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", previous state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mState:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method public setWaitingApns(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mWaitingApns:Ljava/util/ArrayList;

    return-void
.end method
