.class Lcom/android/server/DeviceStorageMonitorService$1;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceStorageMonitorService;)V
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService$1;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/DeviceStorageMonitorService;->isRunnableMode:Z
    invoke-static {v0, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$002(Lcom/android/server/DeviceStorageMonitorService;Z)Z

    .line 121
    :cond_0
    return-void
.end method
