.class public Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;
.super Ljava/lang/Object;
.source "NetworkConnectivityListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "NetworkConnectivityListener"


# instance fields
.field private mHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/Handler;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsFailover:Z

.field private mListening:Z

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mOtherNetworkInfo:Landroid/net/NetworkInfo;

.field private mReason:Ljava/lang/String;

.field private mState:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    .line 83
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;->UNKNOWN:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    .line 84
    return-void
.end method


# virtual methods
.method public getNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getOtherNetworkInfo()Landroid/net/NetworkInfo;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    return-object v0
.end method

.method public isFailover()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mIsFailover:Z

    return v0
.end method

.method public isListening()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mListening:Z

    return v0
.end method

.method public notifyHandler()V
    .locals 4

    .prologue
    .line 54
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 55
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/os/Handler;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Handler;

    .line 57
    .local v2, target:Landroid/os/Handler;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 58
    .local v1, message:Landroid/os/Message;
    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 60
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #target:Landroid/os/Handler;
    :cond_0
    return-void
.end method

.method public registerHandler(Landroid/os/Handler;I)V
    .locals 2
    .parameter "target"
    .parameter "what"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public setFailover(Z)V
    .locals 0
    .parameter "failover"

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mIsFailover:Z

    .line 179
    return-void
.end method

.method public setNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "networkInfo"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 149
    return-void
.end method

.method public setOtherNetworkInfo(Landroid/net/NetworkInfo;)V
    .locals 0
    .parameter "networkInfo"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 166
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .locals 0
    .parameter "reason"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mState:Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener$State;

    .line 134
    return-void
.end method

.method public declared-synchronized startListening()V
    .locals 1

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mListening:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopListening()V
    .locals 1

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mListening:Z

    if-eqz v0, :cond_0

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mOtherNetworkInfo:Landroid/net/NetworkInfo;

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mIsFailover:Z

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mReason:Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mListening:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterHandler(Landroid/os/Handler;)V
    .locals 1
    .parameter "target"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/NetworkConnectivityListener;->mHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method
