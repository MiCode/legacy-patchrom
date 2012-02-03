.class Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RingerVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RingerVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RingerVolumePreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/RingerVolumePreference;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;->this$0:Lcom/android/settings/RingerVolumePreference;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/RingerVolumePreference;Lcom/android/settings/RingerVolumePreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;-><init>(Lcom/android/settings/RingerVolumePreference;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 380
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, action:Ljava/lang/String;
    const-string v2, "state"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_1

    move v1, v4

    .line 383
    .local v1, isHeadset:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;->this$0:Lcom/android/settings/RingerVolumePreference;

    #getter for: Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z
    invoke-static {v2}, Lcom/android/settings/RingerVolumePreference;->access$200(Lcom/android/settings/RingerVolumePreference;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    .line 384
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;->this$0:Lcom/android/settings/RingerVolumePreference;

    #setter for: Lcom/android/settings/RingerVolumePreference;->mIsHeadset:Z
    invoke-static {v2, v1}, Lcom/android/settings/RingerVolumePreference;->access$202(Lcom/android/settings/RingerVolumePreference;Z)Z

    .line 385
    iget-object v2, p0, Lcom/android/settings/RingerVolumePreference$HeadsetBroadcastReceiver;->this$0:Lcom/android/settings/RingerVolumePreference;

    #calls: Lcom/android/settings/RingerVolumePreference;->updateVolumizers(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/RingerVolumePreference;->access$300(Lcom/android/settings/RingerVolumePreference;Z)V

    .line 387
    :cond_0
    return-void

    .end local v1           #isHeadset:Z
    :cond_1
    move v1, v3

    .line 381
    goto :goto_0
.end method
