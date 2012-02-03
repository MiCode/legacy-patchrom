.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 38
    .parameter "msg"

    .prologue
    .line 981
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_0

    .line 1235
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 983
    .restart local p0
    .restart local p1
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 984
    .local v22, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 985
    :try_start_0
    const-string v6, "app"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 986
    .local v31, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_1

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_1

    .line 987
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    monitor-exit v5

    goto :goto_0

    .line 1000
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 990
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_1
    :try_start_1
    const-string v6, "result"

    move-object/from16 v0, v22

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/AppErrorResult;

    .line 991
    .local v34, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_2

    .line 992
    new-instance v21, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v34

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 993
    .local v21, d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 994
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1000
    .end local v21           #d:Landroid/app/Dialog;
    :goto_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 998
    :cond_2
    const/4 v6, 0x0

    :try_start_2
    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1005
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v34           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1006
    :try_start_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Ljava/util/HashMap;

    .line 1007
    .restart local v22       #data:Ljava/util/HashMap;
    const-string v5, "app"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 1008
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v31, :cond_3

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 1009
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    monitor-exit v19

    goto/16 :goto_0

    .line 1025
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local p1
    :catchall_1
    move-exception v5

    monitor-exit v19
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v5

    .line 1013
    .restart local v22       #data:Ljava/util/HashMap;
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :cond_3
    :try_start_4
    new-instance v8, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1014
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_4

    .line 1015
    const/high16 v5, 0x4000

    invoke-virtual {v8, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1017
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1021
    new-instance v21, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v31

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1023
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 1024
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1025
    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1030
    .end local v8           #intent:Landroid/content/Intent;
    .end local v21           #d:Landroid/app/Dialog;
    .end local v22           #data:Ljava/util/HashMap;
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 1031
    .local v23, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1032
    :try_start_5
    const-string v6, "app"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/am/ProcessRecord;

    .line 1033
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v31, :cond_5

    .line 1034
    const-string v6, "ActivityManager"

    const-string v7, "App not found when showing strict mode dialog."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v5

    goto/16 :goto_0

    .line 1051
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_2
    move-exception v6

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v6

    .line 1037
    .restart local v31       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_5
    :try_start_6
    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_6

    .line 1038
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    monitor-exit v5

    goto/16 :goto_0

    .line 1041
    :cond_6
    const-string v6, "result"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/am/AppErrorResult;

    .line 1042
    .restart local v34       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_7

    .line 1043
    new-instance v21, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object/from16 v2, v34

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1044
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 1045
    move-object/from16 v0, v21

    move-object/from16 v1, v31

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1051
    .end local v21           #d:Landroid/app/Dialog;
    :goto_2
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1049
    :cond_7
    const/4 v6, 0x0

    :try_start_7
    move-object/from16 v0, v34

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    .line 1055
    .end local v23           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v31           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v34           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_4
    new-instance v21, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1057
    .restart local v21       #d:Landroid/app/Dialog;
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 1058
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_0

    .line 1061
    .end local v21           #d:Landroid/app/Dialog;
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 1062
    .local v35, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_0

    .line 1065
    .end local v35           #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1066
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1067
    monitor-exit v5

    goto/16 :goto_0

    :catchall_3
    move-exception v6

    monitor-exit v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    throw v6

    .line 1070
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1071
    :try_start_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1072
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_9

    .line 1073
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    move v6, v0

    if-nez v6, :cond_8

    .line 1074
    new-instance v21, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1077
    .restart local v21       #d:Landroid/app/Dialog;
    move-object/from16 v0, v21

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1078
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1079
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    .line 1087
    .end local v21           #d:Landroid/app/Dialog;
    :cond_8
    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_4
    move-exception v6

    monitor-exit v5
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v6

    .line 1082
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_9
    :try_start_a
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_8

    .line 1083
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1084
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .line 1092
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_0

    .line 1095
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1096
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1097
    monitor-exit v5

    goto/16 :goto_0

    :catchall_5
    move-exception v6

    monitor-exit v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v6

    .line 1100
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_a

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1103
    .local v28, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x7530

    move-object v0, v5

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1107
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_0

    .line 1110
    .restart local p0
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1111
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v26, v6, v7

    .local v26, i:I
    :goto_4
    if-ltz v26, :cond_c

    .line 1112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/ProcessRecord;

    .line 1113
    .local v33, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    if-eqz v6, :cond_b

    .line 1115
    :try_start_d
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_0

    .line 1111
    :cond_b
    :goto_5
    add-int/lit8 v26, v26, -0x1

    goto :goto_4

    .line 1116
    :catch_0
    move-exception v6

    move-object/from16 v25, v6

    .line 1117
    .local v25, ex:Landroid/os/RemoteException;
    :try_start_e
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1121
    .end local v25           #ex:Landroid/os/RemoteException;
    .end local v26           #i:I
    .end local v33           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_6
    move-exception v6

    monitor-exit v5
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    throw v6

    .restart local v26       #i:I
    :cond_c
    :try_start_f
    monitor-exit v5
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    goto/16 :goto_0

    .line 1125
    .end local v26           #i:I
    :pswitch_c
    new-instance v21, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1126
    .local v21, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1127
    const/4 v5, 0x0

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1128
    const-string v5, "System UIDs Inconsistent"

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1129
    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1130
    const-string v5, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1133
    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 1136
    .end local v21           #d:Landroid/app/AlertDialog;
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_0

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1142
    :pswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_d

    .line 1143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1145
    .restart local v28       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v28

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    move-object v0, v5

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 1149
    .end local v28           #nmsg:Landroid/os/Message;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1150
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1151
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v19

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1152
    monitor-exit v5

    goto/16 :goto_0

    :catchall_7
    move-exception v6

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    throw v6

    .line 1155
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1156
    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1157
    monitor-exit v5

    goto/16 :goto_0

    :catchall_8
    move-exception v6

    monitor-exit v5
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    throw v6

    .line 1160
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1161
    :try_start_12
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    .line 1162
    .local v11, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_e

    const/4 v6, 0x1

    move v12, v6

    .line 1163
    .local v12, restart:Z
    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1164
    .local v10, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    .line 1165
    monitor-exit v5

    goto/16 :goto_0

    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #uid:I
    .end local v12           #restart:Z
    :catchall_9
    move-exception v6

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    throw v6

    .line 1162
    .restart local v11       #uid:I
    :cond_e
    const/4 v6, 0x0

    move v12, v6

    goto :goto_6

    .line 1168
    .end local v11           #uid:I
    :pswitch_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_0

    .line 1171
    .restart local p0
    :pswitch_12
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v27

    .line 1172
    .local v27, inm:Landroid/app/INotificationManager;
    if-eqz v27, :cond_0

    .line 1176
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Lcom/android/server/am/ActivityRecord;

    .line 1177
    .local v36, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v32, v0

    .line 1178
    .local v32, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v32, :cond_0

    .line 1183
    :try_start_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v20

    .line 1184
    .local v20, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10403a5

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    .line 1186
    .local v37, text:Ljava/lang/String;
    new-instance v29, Landroid/app/Notification;

    invoke-direct/range {v29 .. v29}, Landroid/app/Notification;-><init>()V

    .line 1187
    .local v29, notification:Landroid/app/Notification;
    const v5, 0x10802c1

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1188
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v29

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 1189
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1190
    move-object/from16 v0, v37

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1191
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v29

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1192
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1193
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v29

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 1194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x10403a6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    const/high16 v9, 0x1000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-object/from16 v2, v37

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_13 .. :try_end_13} :catch_2

    .line 1200
    const/4 v5, 0x1

    :try_start_14
    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1201
    .local v30, outId:[I
    const-string v5, "android"

    const v6, 0x10403a5

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v29

    move-object/from16 v4, v30

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_14
    .catch Ljava/lang/RuntimeException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_14 .. :try_end_14} :catch_2

    goto/16 :goto_0

    .line 1203
    .end local v30           #outId:[I
    :catch_1
    move-exception v5

    move-object/from16 v24, v5

    .line 1204
    .local v24, e:Ljava/lang/RuntimeException;
    :try_start_15
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for heavy-weight app"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_15
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_15 .. :try_end_15} :catch_2

    goto/16 :goto_0

    .line 1208
    .end local v20           #context:Landroid/content/Context;
    .end local v24           #e:Ljava/lang/RuntimeException;
    .end local v29           #notification:Landroid/app/Notification;
    .end local v37           #text:Ljava/lang/String;
    :catch_2
    move-exception v5

    move-object/from16 v24, v5

    .line 1209
    .local v24, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    const-string v6, "Unable to create context for heavy notification"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1213
    .end local v24           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v27           #inm:Landroid/app/INotificationManager;
    .end local v32           #process:Lcom/android/server/am/ProcessRecord;
    .end local v36           #root:Lcom/android/server/am/ActivityRecord;
    :pswitch_13
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v27

    .line 1214
    .restart local v27       #inm:Landroid/app/INotificationManager;
    if-eqz v27, :cond_0

    .line 1218
    :try_start_16
    const-string v5, "android"

    const v6, 0x10403a5

    move-object/from16 v0, v27

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_4

    goto/16 :goto_0

    .line 1220
    :catch_3
    move-exception v5

    move-object/from16 v24, v5

    .line 1221
    .local v24, e:Ljava/lang/RuntimeException;
    const-string v5, "ActivityManager"

    const-string v6, "Error canceling notification for service"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 1227
    .end local v24           #e:Ljava/lang/RuntimeException;
    .end local v27           #inm:Landroid/app/INotificationManager;
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1228
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1229
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1230
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v28

    .line 1231
    .restart local v28       #nmsg:Landroid/os/Message;
    const-wide/32 v6, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1232
    monitor-exit v5

    goto/16 :goto_0

    .end local v28           #nmsg:Landroid/os/Message;
    :catchall_a
    move-exception v6

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    throw v6

    .line 1223
    .restart local v27       #inm:Landroid/app/INotificationManager;
    :catch_4
    move-exception v5

    goto/16 :goto_0

    .line 1206
    .restart local v20       #context:Landroid/content/Context;
    .restart local v29       #notification:Landroid/app/Notification;
    .restart local v32       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v36       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v37       #text:Ljava/lang/String;
    :catch_5
    move-exception v5

    goto/16 :goto_0

    .line 981
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_3
        :pswitch_14
    .end packed-switch
.end method
