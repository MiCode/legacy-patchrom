.class Lcom/android/server/AccessibilityManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccessibilityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AccessibilityManagerService;->registerPackageChangeAndBootCompletedBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AccessibilityManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 13
    .parameter "intent"
    .parameter "packages"
    .parameter "uid"
    .parameter "doit"

    .prologue
    iget-object v9, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v9, v9, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v1, 0x0

    .local v1, changed:Z
    :try_start_0
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$400(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .local v2, comp:Landroid/content/ComponentName;
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, compPkg:Ljava/lang/String;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v7, v0, v4

    .local v7, pkg:Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    if-nez p4, :cond_1

    const/4 v10, 0x1

    monitor-exit v9

    move v9, v10

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #comp:Landroid/content/ComponentName;
    .end local v3           #compPkg:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    .end local p1
    :goto_1
    return v9

    .restart local v0       #arr$:[Ljava/lang/String;
    .restart local v2       #comp:Landroid/content/ComponentName;
    .restart local v3       #compPkg:Ljava/lang/String;
    .restart local v4       #i$:I
    .restart local v6       #len$:I
    .restart local v7       #pkg:Ljava/lang/String;
    .restart local p1
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    const/4 v1, 0x1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v2           #comp:Landroid/content/ComponentName;
    .end local v3           #compPkg:Ljava/lang/String;
    .end local v4           #i$:I
    .end local v6           #len$:I
    .end local v7           #pkg:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_6

    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mEnabledServices:Ljava/util/Set;
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$400(Lcom/android/server/AccessibilityManagerService;)Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .end local p1
    .local v8, str:Ljava/lang/StringBuilder;
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_4

    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v5           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .end local v8           #str:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .restart local v5       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ComponentName;>;"
    .restart local v8       #str:Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v10, v10, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "enabled_accessibility_services"

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v10, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v10}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    .end local v8           #str:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v10, 0x0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v9, v10

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)V

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v2, v2, Lcom/android/server/AccessibilityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_enabled"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v6, :cond_1

    move v2, v6

    :goto_0
    #setter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1, v2}, Lcom/android/server/AccessibilityManagerService;->access$502(Lcom/android/server/AccessibilityManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #getter for: Lcom/android/server/AccessibilityManagerService;->mIsEnabled:Z
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$500(Lcom/android/server/AccessibilityManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->updateClientsLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$600(Lcom/android/server/AccessibilityManagerService;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    monitor-exit v0

    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onSomePackagesChanged()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    iget-object v0, v0, Lcom/android/server/AccessibilityManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->populateAccessibilityServiceListLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$200(Lcom/android/server/AccessibilityManagerService;)V

    iget-object v1, p0, Lcom/android/server/AccessibilityManagerService$2;->this$0:Lcom/android/server/AccessibilityManagerService;

    #calls: Lcom/android/server/AccessibilityManagerService;->manageServicesLocked()V
    invoke-static {v1}, Lcom/android/server/AccessibilityManagerService;->access$300(Lcom/android/server/AccessibilityManagerService;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
