.class public Lcom/motorola/blur/setup/CaptchaSingleton;
.super Ljava/lang/Object;
.source "CaptchaSingleton.java"


# static fields
.field private static mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;


# instance fields
.field private mCaptchaResponseListener:Lcom/motorola/blur/setup/CaptchaResponseListener;

.field private mResponseState:Ljava/lang/Boolean;

.field private final mResponseStateLock:Ljava/lang/Object;

.field private mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 9
    iput-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaResponseListener:Lcom/motorola/blur/setup/CaptchaResponseListener;

    .line 11
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseState:Ljava/lang/Boolean;

    .line 12
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseStateLock:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public static getCaptchaSingletonObject()Lcom/motorola/blur/setup/CaptchaSingleton;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-direct {v0}, Lcom/motorola/blur/setup/CaptchaSingleton;-><init>()V

    sput-object v0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 18
    :cond_0
    sget-object v0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    return-object v0
.end method


# virtual methods
.method public getServerCaptcha()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    return-object v0
.end method

.method public setCaptchaInfo(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "serverCaptchaInfo"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 26
    :try_start_0
    iput-object p1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    .line 27
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseState:Ljava/lang/Boolean;

    .line 28
    iget-object v1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaResponseListener:Lcom/motorola/blur/setup/CaptchaResponseListener;

    if-eqz v1, :cond_0

    .line 29
    iget-object v1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaResponseListener:Lcom/motorola/blur/setup/CaptchaResponseListener;

    iget-object v2, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mServerCaptchaInfo:Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    invoke-interface {v1, v2}, Lcom/motorola/blur/setup/CaptchaResponseListener;->onCaptchaResponseReceived(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 31
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCaptchaResponseListener(Lcom/motorola/blur/setup/CaptchaResponseListener;)Z
    .locals 2
    .parameter "captchaResponseListener"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseStateLock:Ljava/lang/Object;

    monitor-enter v0

    .line 36
    :try_start_0
    iput-object p1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mCaptchaResponseListener:Lcom/motorola/blur/setup/CaptchaResponseListener;

    .line 37
    iget-object v1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 38
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setResponse(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "responseState"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/motorola/blur/setup/CaptchaSingleton;->mResponseState:Ljava/lang/Boolean;

    .line 47
    return-void
.end method
