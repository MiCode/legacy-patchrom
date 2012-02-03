.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# static fields
.field static OEM_FUNCTION_ID_NETWORK:I

.field static OEM_NETWORK_SCAN_CANCEL:I


# instance fields
.field private final mBinder:Lcom/android/phone/INetworkQueryService$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/android/phone/INetworkQueryServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x2

    sput v0, Lcom/android/phone/NetworkQueryService;->OEM_FUNCTION_ID_NETWORK:I

    .line 57
    const/4 v0, 0x3

    sput v0, Lcom/android/phone/NetworkQueryService;->OEM_NETWORK_SCAN_CANCEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 84
    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 90
    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    .line 108
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 114
    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$400(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/android/phone/NetworkQueryService;->log(Ljava/lang/String;)V

    return-void
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v5, 0x1

    .line 233
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 234
    const/4 v3, -0x1

    :try_start_0
    iput v3, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 237
    if-nez p1, :cond_0

    .line 239
    monitor-exit v4

    .line 260
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    move v1, v3

    .line 248
    .local v1, exception:I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    sub-int v2, v3, v5

    .local v2, i:I
    :goto_2
    if-ltz v2, :cond_2

    .line 249
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    .local v0, cb:Lcom/android/phone/INetworkQueryServiceCallback;
    :try_start_1
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 248
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .end local v0           #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1           #exception:I
    .end local v2           #i:I
    :cond_1
    move v1, v5

    .line 244
    goto :goto_1

    .line 258
    .restart local v1       #exception:I
    .restart local v2       #i:I
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 259
    monitor-exit v4

    goto :goto_0

    .end local v1           #exception:I
    .end local v2           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 253
    .restart local v0       #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v1       #exception:I
    .restart local v2       #i:I
    :catch_0
    move-exception v3

    goto :goto_3
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 263
    const-string v0, "NetworkQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 205
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 206
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .parameter "intent"
    .parameter "startId"

    .prologue
    .line 213
    return-void
.end method
