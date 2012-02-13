.class Lcom/android/server/DeviceManager3LMService$1;
.super Ljava/lang/Thread;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/DeviceManager3LMService;->notify(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;

.field final synthetic val$id:I

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$notificationBar:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    iput-object p2, p0, Lcom/android/server/DeviceManager3LMService$1;->val$notificationBar:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/DeviceManager3LMService$1;->val$intent:Landroid/content/Intent;

    iput-object p4, p0, Lcom/android/server/DeviceManager3LMService$1;->val$title:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/DeviceManager3LMService$1;->val$text:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/DeviceManager3LMService$1;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const v0, 0x1080078

    .local v0, icon:I
    new-instance v1, Landroid/app/Notification;

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$1;->val$notificationBar:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v0, v3, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .local v1, notification:Landroid/app/Notification;
    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v3, v3, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$1;->val$intent:Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    iget-object v3, v3, Lcom/android/server/DeviceManager3LMService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/DeviceManager3LMService$1;->val$title:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$1;->val$text:Ljava/lang/String;

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    #getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationText:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/DeviceManager3LMService;->access$000(Lcom/android/server/DeviceManager3LMService;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/android/server/DeviceManager3LMService$1;->this$0:Lcom/android/server/DeviceManager3LMService;

    #getter for: Lcom/android/server/DeviceManager3LMService;->mNotificationManager:Landroid/app/NotificationManager;
    invoke-static {v3}, Lcom/android/server/DeviceManager3LMService;->access$100(Lcom/android/server/DeviceManager3LMService;)Landroid/app/NotificationManager;

    move-result-object v3

    iget v4, p0, Lcom/android/server/DeviceManager3LMService$1;->val$id:I

    invoke-virtual {v3, v4, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/DeviceManager3LMService$1;->val$text:Ljava/lang/String;

    goto :goto_0
.end method
