.class Lcom/android/server/enterprise/RoamingPolicy$1;
.super Landroid/telephony/PhoneStateListener;
.source "RoamingPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/RoamingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/RoamingPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/RoamingPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/enterprise/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/RoamingPolicy;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    const-string v2, "RoamingPolicy"

    .line 71
    const-string v0, "RoamingPolicy"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RoamingSyncDisabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/RoamingPolicy;

    #getter for: Lcom/android/server/enterprise/RoamingPolicy;->mTelMgr:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/server/enterprise/RoamingPolicy;->access$000(Lcom/android/server/enterprise/RoamingPolicy;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string v0, "RoamingPolicy"

    const-string v0, "Entering Roaming"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/RoamingPolicy;

    #calls: Lcom/android/server/enterprise/RoamingPolicy;->storeUserAutoSyncSetting()V
    invoke-static {v0}, Lcom/android/server/enterprise/RoamingPolicy;->access$100(Lcom/android/server/enterprise/RoamingPolicy;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/RoamingPolicy;

    invoke-virtual {v0}, Lcom/android/server/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v0

    invoke-static {v0}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V

    .line 84
    :goto_0
    return-void

    .line 81
    :cond_0
    const-string v0, "RoamingPolicy"

    const-string v0, "Leaving Roaming"

    invoke-static {v2, v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/server/enterprise/RoamingPolicy$1;->this$0:Lcom/android/server/enterprise/RoamingPolicy;

    #calls: Lcom/android/server/enterprise/RoamingPolicy;->restoreUserAutoSyncSetting()V
    invoke-static {v0}, Lcom/android/server/enterprise/RoamingPolicy;->access$200(Lcom/android/server/enterprise/RoamingPolicy;)V

    goto :goto_0
.end method
