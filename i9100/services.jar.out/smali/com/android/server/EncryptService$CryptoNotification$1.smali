.class Lcom/android/server/EncryptService$CryptoNotification$1;
.super Ljava/lang/Object;
.source "EncryptService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/EncryptService$CryptoNotification;->updateActiveNotification(ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/EncryptService$CryptoNotification;

.field final synthetic val$bCryptoPolicy:Z

.field final synthetic val$bFirstStorage:Z

.field final synthetic val$lv_percent:I


# direct methods
.method constructor <init>(Lcom/android/server/EncryptService$CryptoNotification;IZZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 943
    iput-object p1, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iput p2, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$lv_percent:I

    iput-boolean p3, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bCryptoPolicy:Z

    iput-boolean p4, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bFirstStorage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 946
    const/4 v4, 0x0

    .line 947
    .local v4, max:I
    const/4 v6, 0x0

    .line 948
    .local v6, progress:I
    const/4 v3, 0x0

    .line 949
    .local v3, id:I
    const/4 v1, 0x0

    .line 951
    .local v1, iRes:Landroid/content/res/Resources;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    #getter for: Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z
    invoke-static {v9}, Lcom/android/server/EncryptService$CryptoNotification;->access$1000(Lcom/android/server/EncryptService$CryptoNotification;)Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    #getter for: Lcom/android/server/EncryptService$CryptoNotification;->mFinished:Z
    invoke-static {v9}, Lcom/android/server/EncryptService$CryptoNotification;->access$1100(Lcom/android/server/EncryptService$CryptoNotification;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1020
    :cond_0
    :goto_0
    return-void

    .line 956
    :cond_1
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const/4 v10, 0x1

    #setter for: Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z
    invoke-static {v9, v10}, Lcom/android/server/EncryptService$CryptoNotification;->access$1002(Lcom/android/server/EncryptService$CryptoNotification;Z)Z

    .line 958
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 960
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget v10, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$lv_percent:I

    iput v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    .line 962
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 964
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_7

    .line 966
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bFirstStorage:Z

    if-nez v9, :cond_6

    .line 967
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a2

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    .line 980
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    if-nez v9, :cond_3

    .line 982
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const-string v11, "notification"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    .line 985
    :cond_3
    const/4 v2, 0x0

    .line 987
    .local v2, icon:I
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    if-nez v9, :cond_4

    .line 989
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bCryptoPolicy:Z

    if-eqz v9, :cond_9

    .line 990
    const v2, 0x108041b

    .line 994
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 995
    .local v7, when:J
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/app/Notification;

    const-string v11, ""

    invoke-direct {v10, v2, v11, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    .line 996
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x22

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 999
    .end local v7           #when:J
    :cond_4
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    if-nez v9, :cond_5

    .line 1001
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1002
    .local v5, notificationIntent:Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v9, v10, v5, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1003
    .local v0, contentIntent:Landroid/app/PendingIntent;
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    new-instance v10, Landroid/widget/RemoteViews;

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mCtx:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x1090027

    invoke-direct {v10, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    .line 1004
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201be

    const/16 v11, 0x8

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 1005
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201ba

    invoke-virtual {v9, v10, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 1006
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1007
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bb

    const v11, -0x333334

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 1008
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v10, v10, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    iput-object v10, v9, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1009
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    iput-object v0, v9, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1012
    .end local v0           #contentIntent:Landroid/app/PendingIntent;
    .end local v5           #notificationIntent:Landroid/content/Intent;
    :cond_5
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bb

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget v12, v12, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%)"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1013
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x1020016

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    invoke-virtual {v9, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 1015
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mContentView:Landroid/widget/RemoteViews;

    const v10, 0x10201bd

    const/16 v11, 0x64

    iget-object v12, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget v12, v12, Lcom/android/server/EncryptService$CryptoNotification;->mPercent:I

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 1017
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v9, v9, Lcom/android/server/EncryptService$CryptoNotification;->mNotiManager:Landroid/app/NotificationManager;

    const/16 v10, 0x2712

    iget-object v11, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    iget-object v11, v11, Lcom/android/server/EncryptService$CryptoNotification;->mNotification:Landroid/app/Notification;

    invoke-virtual {v9, v10, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1019
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const/4 v10, 0x0

    #setter for: Lcom/android/server/EncryptService$CryptoNotification;->isWokingNotification:Z
    invoke-static {v9, v10}, Lcom/android/server/EncryptService$CryptoNotification;->access$1002(Lcom/android/server/EncryptService$CryptoNotification;Z)Z

    goto/16 :goto_0

    .line 969
    .end local v2           #icon:I
    :cond_6
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 973
    :cond_7
    iget-boolean v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->val$bFirstStorage:Z

    if-nez v9, :cond_8

    .line 974
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a4

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 976
    :cond_8
    iget-object v9, p0, Lcom/android/server/EncryptService$CryptoNotification$1;->this$1:Lcom/android/server/EncryptService$CryptoNotification;

    const v10, 0x10404a3

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lcom/android/server/EncryptService$CryptoNotification;->title:Ljava/lang/String;

    goto/16 :goto_1

    .line 992
    .restart local v2       #icon:I
    :cond_9
    const v2, 0x108041a

    goto/16 :goto_2
.end method
