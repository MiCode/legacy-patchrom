.class public Lcom/android/phone/MediaLowSpaceReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaLowSpaceReceiver.java"


# static fields
.field private static mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MediaLowSpaceReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method protected static registerLowMemoryListner(Landroid/os/Handler;)V
    .locals 0
    .parameter "myHandler"

    .prologue
    .line 41
    sput-object p0, Lcom/android/phone/MediaLowSpaceReceiver;->mHandler:Landroid/os/Handler;

    .line 42
    return-void
.end method

.method protected static unRegisterLowMemoryListner()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-object v0, Lcom/android/phone/MediaLowSpaceReceiver;->mHandler:Landroid/os/Handler;

    .line 46
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    if-ne v0, v1, :cond_0

    .line 31
    const-string v0, "MediaLowSpaceReceiver"

    const-string v1, "MediaLowSpaceReceiver:: Low Mwmory Intent Fired."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    sget-object v0, Lcom/android/phone/MediaLowSpaceReceiver;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/android/phone/MediaLowSpaceReceiver;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 36
    :cond_0
    return-void
.end method
