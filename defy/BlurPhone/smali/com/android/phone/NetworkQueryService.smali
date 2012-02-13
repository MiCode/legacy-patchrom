.class public Lcom/android/phone/NetworkQueryService;
.super Landroid/app/Service;
.source "NetworkQueryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/NetworkQueryService$3;,
        Lcom/android/phone/NetworkQueryService$LocalBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final EVENT_NETWORK_SCAN_COMPLETED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "NetworkQuery"

.field public static final NO_ERROR:I = -0x1

.field public static final QUERY_EXCEPTION:I = 0x1

.field private static final QUERY_IS_RUNNING:I = -0x2

.field public static final QUERY_OK:I = 0x0

.field private static final QUERY_READY:I = -0x1


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

.field private mIsWorldPhone:Z

.field private final mLocalBinder:Landroid/os/IBinder;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/NetworkQueryService;->mIsWorldPhone:Z

    .line 78
    new-instance v0, Lcom/android/phone/NetworkQueryService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$LocalBinder;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    .line 84
    new-instance v0, Lcom/android/phone/NetworkQueryService$1;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$1;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mHandler:Landroid/os/Handler;

    .line 102
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 108
    new-instance v0, Lcom/android/phone/NetworkQueryService$2;

    invoke-direct {v0, p0}, Lcom/android/phone/NetworkQueryService$2;-><init>(Lcom/android/phone/NetworkQueryService;)V

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-void
.end method

.method private declared-synchronized IsWorldPhone()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fid_34387_multimode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v4

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/NetworkQueryService;->mIsWorldPhone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    monitor-exit p0

    return-void

    :cond_0
    move v0, v3

    .line 266
    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic access$000(Lcom/android/phone/NetworkQueryService;)Lcom/android/phone/INetworkQueryService$Stub;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mBinder:Lcom/android/phone/INetworkQueryService$Stub;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/NetworkQueryService;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/NetworkQueryService;->broadcastQueryResults(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/NetworkQueryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/phone/NetworkQueryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput p1, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/phone/NetworkQueryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/phone/NetworkQueryService;->mIsWorldPhone:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/phone/NetworkQueryService;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private broadcastQueryResults(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const/4 v7, 0x1

    .line 208
    iget-object v5, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 209
    const/4 v4, -0x1

    :try_start_0
    iput v4, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 212
    if-nez p1, :cond_0

    .line 214
    monitor-exit v5

    .line 258
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    move v1, v4

    .line 221
    .local v1, exception:I
    :goto_1
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    .line 222
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v3

    .line 223
    .local v3, test:Lcom/android/internal/telephony/CommandException$Error;
    sget-object v4, Lcom/android/phone/NetworkQueryService$3;->$SwitchMap$com$android$internal$telephony$CommandException$Error:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v6

    aget v4, v4, v6

    packed-switch v4, :pswitch_data_0

    .line 238
    const/4 v1, -0x1

    .line 246
    .end local v3           #test:Lcom/android/internal/telephony/CommandException$Error;
    :cond_1
    :goto_2
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    sub-int v2, v4, v7

    .local v2, i:I
    :goto_3
    if-ltz v2, :cond_3

    .line 247
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/android/phone/INetworkQueryServiceCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    .local v0, cb:Lcom/android/phone/INetworkQueryServiceCallback;
    :try_start_1
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-interface {v0, v4, v1}, Lcom/android/phone/INetworkQueryServiceCallback;->onQueryComplete(Ljava/util/List;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 246
    :goto_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .end local v0           #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .end local v1           #exception:I
    .end local v2           #i:I
    :cond_2
    move v1, v7

    .line 219
    goto :goto_1

    .line 235
    .restart local v1       #exception:I
    .restart local v3       #test:Lcom/android/internal/telephony/CommandException$Error;
    :pswitch_0
    :try_start_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v1

    .line 236
    goto :goto_2

    .line 256
    .end local v3           #test:Lcom/android/internal/telephony/CommandException$Error;
    .restart local v2       #i:I
    :cond_3
    iget-object v4, p0, Lcom/android/phone/NetworkQueryService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 257
    monitor-exit v5

    goto :goto_0

    .end local v1           #exception:I
    .end local v2           #i:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 251
    .restart local v0       #cb:Lcom/android/phone/INetworkQueryServiceCallback;
    .restart local v1       #exception:I
    .restart local v2       #i:I
    :catch_0
    move-exception v4

    goto :goto_4

    .line 223
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 261
    const-string v0, "NetworkQuery"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/phone/NetworkQueryService;->mLocalBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/NetworkQueryService;->mState:I

    .line 186
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/NetworkQueryService;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 187
    invoke-direct {p0}, Lcom/android/phone/NetworkQueryService;->IsWorldPhone()V

    .line 188
    return-void
.end method
