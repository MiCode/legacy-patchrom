.class Lcom/android/server/EncryptService$CryptoNotification$2;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService$CryptoNotification;->updateCompletedNotification(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/EncryptService$CryptoNotification;

.field final synthetic val$bCryptoPolicy:Z


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService$CryptoNotification;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iput-boolean p2, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1033
    const/4 v4, 0x0

    .line 1034
    .local v4, max:I
    const/4 v6, 0x0

    .line 1035
    .local v6, progress:I
    const/4 v3, 0x0

    .line 1037
    .local v3, id:I
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z
    invoke-static {v9, v10}, Lcom/android/server/EncryptService$CryptoNotification;->access$1102(Lcom/android/server/EncryptService$CryptoNotification;Z)Z

    .line 1039
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1041
    .local v1, iRes:Landroid/content/res/Resources;
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_3

    .line 1043
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a5

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    .line 1044
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a7

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    .line 1052
    :goto_0
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v9, :cond_0

    .line 1054
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    .line 1057
    :cond_0
    const/4 v2, 0x0

    .line 1059
    .local v2, icon:I
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    if-nez v9, :cond_1

    .line 1061
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_4

    .line 1062
    const v2, 0x108041b

    .line 1066
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1067
    .local v7, when:J
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/app/Notification;

    const-string v11, ""

    invoke-direct {v10, v2, v11, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    .line 1070
    .end local v7           #when:J
    :cond_1
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    const/16 v10, 0x30

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 1072
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    if-nez v9, :cond_2

    .line 1074
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1075
    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1076
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x1090027

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    .line 1077
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201ba

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1078
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1079
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1082
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :cond_2
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bb

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1083
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bd

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1084
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201be

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1085
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1086
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201be

    const v11, -0x333334

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1087
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1088
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201be

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1090
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v10, 0x2712

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1091
    return-void

    .line 1048
    .end local v2           #icon:I
    :cond_3
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a6

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    .line 1049
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$2;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a8

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->paused_text:Ljava/lang/String;

    goto/16 :goto_0

    .line 1064
    .restart local v2       #icon:I
    :cond_4
    const v2, 0x108041a

    goto/16 :goto_1
.end method
