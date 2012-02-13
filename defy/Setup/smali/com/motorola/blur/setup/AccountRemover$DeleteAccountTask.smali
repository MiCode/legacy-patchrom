.class final Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;
.super Landroid/os/AsyncTask;
.source "AccountRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/AccountRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeleteAccountTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Long;",
        "Ljava/lang/Integer;",
        "Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountRemover;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/setup/AccountRemover;)V
    .locals 0
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/setup/AccountRemover;Lcom/motorola/blur/setup/AccountRemover$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;-><init>(Lcom/motorola/blur/setup/AccountRemover;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Long;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    .locals 22
    .parameter "ids"

    .prologue
    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/motorola/blur/setup/AccountRemover;->access$500(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/Context;

    move-result-object v12

    .line 165
    .local v12, context:Landroid/content/Context;
    const/4 v6, 0x0

    aget-object v16, p1, v6

    .line 166
    .local v16, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    #setter for: Lcom/motorola/blur/setup/AccountRemover;->mId:J
    invoke-static {v6, v7, v8}, Lcom/motorola/blur/setup/AccountRemover;->access$602(Lcom/motorola/blur/setup/AccountRemover;J)J

    .line 167
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 168
    .local v14, error:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;
    const/16 v20, 0x0

    .line 169
    .local v20, providerName:Ljava/lang/String;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 170
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 171
    sget-object v6, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/motorola/blur/provider/DeviceSetup$Projections$AccountActiveServices;->PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 177
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 178
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 179
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 180
    const/4 v6, 0x4

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 181
    .local v18, providerId:J
    move-object v0, v5

    move-wide/from16 v1, v18

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v20

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v20

    #setter for: Lcom/motorola/blur/setup/AccountRemover;->mProviderName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountRemover;->access$702(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/String;)Ljava/lang/String;

    .line 183
    if-nez v20, :cond_2

    .line 184
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 185
    const-string v6, "BlurAccountRemover"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "Corrupted records in database - delete the local account!"

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    .end local v18           #providerId:J
    :cond_0
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 216
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Integer;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->publishProgress([Ljava/lang/Object;)V

    .line 218
    :cond_1
    return-object v14

    .line 186
    .restart local v18       #providerId:J
    :cond_2
    const-string v6, "yahoo"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "email"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "activesync"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    const-string v6, "google"

    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 192
    new-instance v15, Landroid/content/IntentFilter;

    const-string v6, "com.motorola.blur.service.blur.devicesetup.removeprovidercredentials.resp"

    invoke-direct {v15, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 193
    .local v15, filter:Landroid/content/IntentFilter;
    const-string v6, "ACCOUNT_REMOVER"

    invoke-virtual {v15, v6}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 194
    new-instance v21, Landroid/content/IntentFilter;

    const-string v6, "com.motorola.blur.service.blur.Actions.SERVICES_STARTED"

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 195
    .local v21, restartFilter:Landroid/content/IntentFilter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/motorola/blur/setup/AccountRemover;->access$800(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    invoke-virtual {v12, v6, v15}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v6}, Lcom/motorola/blur/setup/AccountRemover;->access$800(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/BroadcastReceiver;

    move-result-object v6

    move-object v0, v12

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 197
    invoke-static {v12}, Lcom/motorola/blur/service/blur/devicesetup/client/DeviceSetupWSClientFactory;->getClient(Landroid/content/Context;)Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;

    move-result-object v11

    .line 198
    .local v11, client:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    new-instance v17, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;

    const/16 v6, 0xe

    invoke-interface {v13, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    move-object v2, v6

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v17, provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v6, v0

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/motorola/blur/setup/AccountRemover;->access$900(Lcom/motorola/blur/setup/AccountRemover;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 203
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v7, v0

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    #setter for: Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v7, v8}, Lcom/motorola/blur/setup/AccountRemover;->access$1002(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 204
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-string v9, "ACCOUNT_REMOVER"

    move-object v0, v11

    move-object/from16 v1, v17

    move-wide v2, v7

    move-object v4, v9

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;->removeProviderCredentials(Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;JLjava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v14

    .line 205
    sget-object v7, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq v14, v7, :cond_3

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    move-object v7, v0

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v7}, Lcom/motorola/blur/setup/AccountRemover;->access$800(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/BroadcastReceiver;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 208
    :cond_3
    monitor-exit v6

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 212
    .end local v11           #client:Lcom/motorola/blur/service/blur/devicesetup/client/IDeviceSetupWSClient;
    .end local v15           #filter:Landroid/content/IntentFilter;
    .end local v17           #provCreds:Lcom/motorola/blur/service/blur/devicesetup/ProviderCredentials;
    .end local v21           #restartFilter:Landroid/content/IntentFilter;
    :cond_4
    sget-object v14, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->AccountNotFound:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto/16 :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->doInBackground([Ljava/lang/Long;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    #setter for: Lcom/motorola/blur/setup/AccountRemover;->mDeleteInProgress:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/motorola/blur/setup/AccountRemover;->access$202(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 149
    sget-object v0, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->None:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    if-eq p1, v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    const/4 v1, 0x0

    #calls: Lcom/motorola/blur/setup/AccountRemover;->evaluateResponse(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V
    invoke-static {v0, p1, v1}, Lcom/motorola/blur/setup/AccountRemover;->access$300(Lcom/motorola/blur/setup/AccountRemover;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;Lcom/motorola/blur/service/blur/devicesetup/RemoveProviderCredentialsWS$Response;)V

    .line 152
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->onPostExecute(Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$400(Lcom/motorola/blur/setup/AccountRemover;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mDialog:Lcom/motorola/blur/setup/SetupProgressDialog;
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$400(Lcom/motorola/blur/setup/AccountRemover;)Lcom/motorola/blur/setup/SetupProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/blur/setup/SetupProgressDialog;->nextProgressPoint()V

    .line 158
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 144
    check-cast p1, [Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/AccountRemover$DeleteAccountTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
