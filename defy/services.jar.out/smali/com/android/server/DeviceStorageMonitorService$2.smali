.class Lcom/android/server/DeviceStorageMonitorService$2;
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
    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$400(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$400(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)[Z

    move-result-object v4

    const/4 v5, 0x1

    aput-boolean v5, v4, v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$500(Lcom/android/server/DeviceStorageMonitorService;)[Z

    move-result-object v4

    aput-boolean v6, v4, v1

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$600(Lcom/android/server/DeviceStorageMonitorService;)[Z

    move-result-object v4

    aget-boolean v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #calls: Lcom/android/server/DeviceStorageMonitorService;->cancelVolumeNotification(I)V
    invoke-static {v4, v1}, Lcom/android/server/DeviceStorageMonitorService;->access$700(Lcom/android/server/DeviceStorageMonitorService;I)V

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService$2;->this$0:Lcom/android/server/DeviceStorageMonitorService;

    #getter for: Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z
    invoke-static {v4}, Lcom/android/server/DeviceStorageMonitorService;->access$600(Lcom/android/server/DeviceStorageMonitorService;)[Z

    move-result-object v4

    aput-boolean v6, v4, v1

    goto :goto_1
.end method
