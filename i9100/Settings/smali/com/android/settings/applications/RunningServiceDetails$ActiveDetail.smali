.class Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;
.super Ljava/lang/Object;
.source "RunningServiceDetails.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ActiveDetail"
.end annotation


# instance fields
.field mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

.field mInstaller:Landroid/content/ComponentName;

.field mManageIntent:Landroid/app/PendingIntent;

.field mReportButton:Landroid/widget/Button;

.field mRootView:Landroid/view/View;

.field mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

.field mStopButton:Landroid/widget/Button;

.field mViewHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field final synthetic this$0:Lcom/android/settings/applications/RunningServiceDetails;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningServiceDetails;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 20
    .parameter "v"

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mReportButton:Landroid/widget/Button;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 129
    new-instance v18, Landroid/app/ApplicationErrorReport;

    invoke-direct/range {v18 .. v18}, Landroid/app/ApplicationErrorReport;-><init>()V

    .line 130
    .local v18, report:Landroid/app/ApplicationErrorReport;
    const/4 v3, 0x5

    move v0, v3

    move-object/from16 v1, v18

    iput v0, v1, Landroid/app/ApplicationErrorReport;->type:I

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/ApplicationErrorReport;->packageName:Ljava/lang/String;

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/ApplicationErrorReport;->installerPackageName:Ljava/lang/String;

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/ApplicationErrorReport;->processName:Ljava/lang/String;

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-wide v0, v3

    move-object/from16 v2, v18

    iput-wide v0, v2, Landroid/app/ApplicationErrorReport;->time:J

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_0
    move v0, v3

    move-object/from16 v1, v18

    iput-boolean v0, v1, Landroid/app/ApplicationErrorReport;->systemApp:Z

    .line 136
    new-instance v13, Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    invoke-direct {v13}, Landroid/app/ApplicationErrorReport$RunningServiceInfo;-><init>()V

    .line 137
    .local v13, info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-object v3, v0

    iget-wide v3, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_3

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-object v5, v0

    iget-wide v5, v5, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v13, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    .line 142
    :goto_1
    new-instance v10, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    .local v10, comp:Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    const-string v4, "service_dump.txt"

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/RunningServiceDetails;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 145
    .local v12, filename:Ljava/io/File;
    const/16 v16, 0x0

    .line 147
    .local v16, output:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v17, Ljava/io/FileOutputStream;

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 148
    .end local v16           #output:Ljava/io/FileOutputStream;
    .local v17, output:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v3, "activity"

    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "-a"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "service"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c

    .line 154
    if-eqz v17, :cond_b

    .line 156
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object/from16 v16, v17

    .line 161
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    :cond_0
    :goto_2
    const/4 v14, 0x0

    .line 163
    .local v14, input:Ljava/io/FileInputStream;
    :try_start_3
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v12}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5

    .line 164
    .end local v14           #input:Ljava/io/FileInputStream;
    .local v15, input:Ljava/io/FileInputStream;
    :try_start_4
    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v3, v3

    new-array v9, v3, [B

    .line 165
    .local v9, buffer:[B
    invoke-virtual {v15, v9}, Ljava/io/FileInputStream;->read([B)I

    .line 166
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v9}, Ljava/lang/String;-><init>([B)V

    iput-object v3, v13, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_b

    .line 170
    if-eqz v15, :cond_a

    .line 172
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v14, v15

    .line 177
    .end local v9           #buffer:[B
    .end local v15           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    :cond_1
    :goto_3
    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    .line 178
    const-string v3, "RunningServicesDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Details: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v13, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->serviceDetails:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    move-object v0, v13

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/app/ApplicationErrorReport;->runningServiceInfo:Landroid/app/ApplicationErrorReport$RunningServiceInfo;

    .line 180
    new-instance v19, Landroid/content/Intent;

    const-string v3, "android.intent.action.APP_ERROR"

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v19, result:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mInstaller:Landroid/content/ComponentName;

    move-object v3, v0

    move-object/from16 v0, v19

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 182
    const-string v3, "android.intent.extra.BUG_REPORT"

    move-object/from16 v0, v19

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 183
    const/high16 v3, 0x1000

    move-object/from16 v0, v19

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails;->startActivity(Landroid/content/Intent;)V

    .line 211
    .end local v10           #comp:Landroid/content/ComponentName;
    .end local v12           #filename:Ljava/io/File;
    .end local v13           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v14           #input:Ljava/io/FileInputStream;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .end local v18           #report:Landroid/app/ApplicationErrorReport;
    .end local v19           #result:Landroid/content/Intent;
    :goto_4
    return-void

    .line 135
    .restart local v18       #report:Landroid/app/ApplicationErrorReport;
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 140
    .restart local v13       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    :cond_3
    const-wide/16 v3, -0x1

    iput-wide v3, v13, Landroid/app/ApplicationErrorReport$RunningServiceInfo;->durationMillis:J

    goto/16 :goto_1

    .line 157
    .restart local v10       #comp:Landroid/content/ComponentName;
    .restart local v12       #filename:Ljava/io/File;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v11

    .line 158
    .local v11, e:Ljava/io/IOException;
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v16, v17

    .line 159
    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .line 151
    .end local v11           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 152
    .restart local v11       #e:Ljava/io/IOException;
    :goto_5
    :try_start_6
    const-string v3, "RunningServicesDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t dump service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 154
    if-eqz v16, :cond_0

    .line 156
    :try_start_7
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 157
    :catch_2
    move-exception v11

    .line 158
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 154
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_6
    if-eqz v16, :cond_4

    .line 156
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    .line 159
    :cond_4
    :goto_7
    throw v3

    .line 157
    :catch_3
    move-exception v11

    .line 158
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "RunningServicesDetails"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 173
    .end local v11           #e:Ljava/io/IOException;
    .restart local v9       #buffer:[B
    .restart local v15       #input:Ljava/io/FileInputStream;
    :catch_4
    move-exception v11

    .line 174
    .restart local v11       #e:Ljava/io/IOException;
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v14, v15

    .line 175
    .end local v15           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .line 167
    .end local v9           #buffer:[B
    .end local v11           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    move-object v11, v3

    .line 168
    .restart local v11       #e:Ljava/io/IOException;
    :goto_8
    :try_start_9
    const-string v3, "RunningServicesDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t read service dump: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 170
    if-eqz v14, :cond_1

    .line 172
    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_3

    .line 173
    :catch_6
    move-exception v11

    .line 174
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 170
    .end local v11           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v3

    :goto_9
    if-eqz v14, :cond_5

    .line 172
    :try_start_b
    invoke-virtual {v14}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 175
    :cond_5
    :goto_a
    throw v3

    .line 173
    :catch_7
    move-exception v11

    .line 174
    .restart local v11       #e:Ljava/io/IOException;
    const-string v4, "RunningServicesDetails"

    invoke-static {v4, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 187
    .end local v10           #comp:Landroid/content/ComponentName;
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #filename:Ljava/io/File;
    .end local v13           #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .end local v14           #input:Ljava/io/FileInputStream;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .end local v18           #report:Landroid/app/ApplicationErrorReport;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    move-object v3, v0

    if-eqz v3, :cond_7

    .line 189
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mManageIntent:Landroid/app/PendingIntent;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v6, 0x1008

    const/high16 v7, 0x8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/settings/applications/RunningServiceDetails;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_c
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_c .. :try_end_c} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c .. :try_end_c} :catch_a

    goto/16 :goto_4

    .line 193
    :catch_8
    move-exception v3

    move-object v11, v3

    .line 194
    .local v11, e:Landroid/content/IntentSender$SendIntentException;
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 195
    .end local v11           #e:Landroid/content/IntentSender$SendIntentException;
    :catch_9
    move-exception v3

    move-object v11, v3

    .line 196
    .local v11, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 197
    .end local v11           #e:Ljava/lang/IllegalArgumentException;
    :catch_a
    move-exception v3

    move-object v11, v3

    .line 198
    .local v11, e:Landroid/content/ActivityNotFoundException;
    const-string v3, "RunningServicesDetails"

    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 200
    .end local v11           #e:Landroid/content/ActivityNotFoundException;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 201
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->stopActiveService(Z)V

    goto/16 :goto_4

    .line 202
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v3, v3, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v3, :cond_9

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto/16 :goto_4

    .line 208
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/settings/applications/RunningServiceDetails;->mAm:Landroid/app/ActivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mActiveItem:Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v4, v4, Lcom/android/settings/applications/RunningState$BaseItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto/16 :goto_4

    .line 170
    .restart local v10       #comp:Landroid/content/ComponentName;
    .restart local v12       #filename:Ljava/io/File;
    .restart local v13       #info:Landroid/app/ApplicationErrorReport$RunningServiceInfo;
    .restart local v15       #input:Ljava/io/FileInputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    .restart local v18       #report:Landroid/app/ApplicationErrorReport;
    :catchall_2
    move-exception v3

    move-object v14, v15

    .end local v15           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    goto/16 :goto_9

    .line 167
    .end local v14           #input:Ljava/io/FileInputStream;
    .restart local v15       #input:Ljava/io/FileInputStream;
    :catch_b
    move-exception v3

    move-object v11, v3

    move-object v14, v15

    .end local v15           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    goto/16 :goto_8

    .line 154
    .end local v14           #input:Ljava/io/FileInputStream;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception v3

    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_6

    .line 151
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :catch_c
    move-exception v3

    move-object v11, v3

    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .restart local v9       #buffer:[B
    .restart local v15       #input:Ljava/io/FileInputStream;
    :cond_a
    move-object v14, v15

    .end local v15           #input:Ljava/io/FileInputStream;
    .restart local v14       #input:Ljava/io/FileInputStream;
    goto/16 :goto_3

    .end local v9           #buffer:[B
    .end local v14           #input:Ljava/io/FileInputStream;
    .end local v16           #output:Ljava/io/FileOutputStream;
    .restart local v17       #output:Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v16, v17

    .end local v17           #output:Ljava/io/FileOutputStream;
    .restart local v16       #output:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method stopActiveService(Z)V
    .locals 6
    .parameter "confirmed"

    .prologue
    const/4 v5, 0x1

    .line 102
    iget-object v1, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->mServiceItem:Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 103
    .local v1, si:Lcom/android/settings/applications/RunningState$ServiceItem;
    if-nez p1, :cond_0

    .line 104
    iget-object v2, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "comp"

    iget-object v3, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2, v5}, Lcom/android/settings/applications/RunningServiceDetails;->removeDialog(I)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2, v5, v0}, Lcom/android/settings/applications/RunningServiceDetails;->showDialog(ILandroid/os/Bundle;)Z

    .line 125
    .end local v0           #args:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, v1, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningServiceDetails;->stopService(Landroid/content/Intent;)Z

    .line 113
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v2, :cond_1

    .line 115
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 116
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_0

    .line 117
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-boolean v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mShowBackground:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 120
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState;->updateNow()V

    .line 121
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningServiceDetails;->finish()V

    goto :goto_0

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;->this$0:Lcom/android/settings/applications/RunningServiceDetails;

    iget-object v2, v2, Lcom/android/settings/applications/RunningServiceDetails;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningState;->updateNow()V

    goto :goto_0
.end method
