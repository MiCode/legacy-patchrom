.class Lcom/android/server/NotificationManagerService$MotionSettingObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    .line 166
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 167
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 171
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "motion_overturn"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->update()V

    .line 174
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->update()V

    .line 178
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    #getter for: Lcom/android/server/NotificationManagerService;->mSound:Lcom/android/server/NotificationPlayer;
    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$000(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$MotionSettingObserver;->this$0:Lcom/android/server/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/NotificationManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_overturn"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/NotificationPlayer;->motionEnabled(Z)V

    .line 183
    return-void

    :cond_0
    move v1, v3

    .line 181
    goto :goto_0
.end method
