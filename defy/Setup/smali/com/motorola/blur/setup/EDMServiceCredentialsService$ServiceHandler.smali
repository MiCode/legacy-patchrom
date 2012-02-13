.class final Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;
.super Landroid/os/Handler;
.source "EDMServiceCredentialsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/EDMServiceCredentialsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;


# direct methods
.method public constructor <init>(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 127
    iput-object p1, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 129
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v13, "addrType"

    const-string v12, "EDMService"

    .line 133
    iget v8, p1, Landroid/os/Message;->what:I

    packed-switch v8, :pswitch_data_0

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 135
    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/content/Intent;

    .line 136
    .local v6, intent:Landroid/content/Intent;
    if-nez v6, :cond_1

    .line 137
    const-string v8, "EDMService"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "handleMessage: NULL intent - terminating"

    aput-object v9, v8, v10

    invoke-static {v12, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V

    goto :goto_0

    .line 141
    :cond_1
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_2

    .line 143
    const-string v8, "EDMService"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "handleMessage: action is null - terminating"

    aput-object v9, v8, v10

    invoke-static {v12, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    .line 148
    .local v3, extras:Landroid/os/Bundle;
    if-nez v3, :cond_3

    .line 149
    const-string v8, "EDMService"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "bad bundle"

    aput-object v9, v8, v10

    invoke-static {v12, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V

    goto :goto_0

    .line 153
    :cond_3
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #getter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$100(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Landroid/content/Context;

    move-result-object v8

    if-nez v8, :cond_4

    .line 154
    const-string v8, "EDMService"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "NULL context - wont do anything!"

    aput-object v9, v8, v10

    invoke-static {v12, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->messageHandlingComplete()V
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V

    goto :goto_0

    .line 158
    :cond_4
    const-string v8, "com.motorola.email.activity.setup.DPM_ACCOUNT_ADDITION"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 159
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    iget-object v9, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #getter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$100(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "activesync"

    invoke-static {v9, v10}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderId(Landroid/content/ContentResolver;Ljava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mProviderId:Ljava/lang/Long;
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$202(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/Long;)Ljava/lang/Long;

    .line 164
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const-string v9, "addrType"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mEmailAddress:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$302(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;

    .line 165
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const-string v9, "passwordType"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mPassword:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$402(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const-string v9, "addrType"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mActiveSyncUsername:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$502(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;

    .line 167
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const-string v9, "hostType"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mServer:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$602(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const-string v9, "sslType"

    invoke-virtual {v3, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mSsl:Z
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$702(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z

    .line 169
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mAddSingleAccount:Z
    invoke-static {v8, v11}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$802(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z

    .line 170
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    const/4 v9, 0x4

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mLoginType:I
    invoke-static {v8, v9}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$902(Lcom/motorola/blur/setup/EDMServiceCredentialsService;I)I

    .line 171
    const-string v8, "provider"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 172
    .local v5, id:Ljava/lang/Long;
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getProviderInfo(J)V
    invoke-static {v8, v9, v10}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1000(Lcom/motorola/blur/setup/EDMServiceCredentialsService;J)V

    .line 173
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->getIntroStrings()Ljava/lang/String;
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1100(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/lang/String;

    .line 177
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->setUpAuthentication()V
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1200(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)V

    goto/16 :goto_0

    .line 181
    .end local v5           #id:Ljava/lang/Long;
    :cond_5
    const-string v8, "com.motorola.email.activity.setup.DPM_REMOVE_ACCOUNT"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 182
    const-string v8, "addrType"

    invoke-virtual {v3, v13}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, allEmails:[Ljava/lang/String;
    const-string v8, "LENGTH"

    invoke-virtual {v3, v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 184
    .local v7, size:I
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mNumDeleteAccounts:I
    invoke-static {v8, v7}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1302(Lcom/motorola/blur/setup/EDMServiceCredentialsService;I)I

    .line 185
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #setter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->mDeleteFailure:Z
    invoke-static {v8, v10}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1402(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Z)Z

    .line 186
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v7, :cond_0

    .line 187
    aget-object v2, v1, v4

    .line 191
    .local v2, emailID:Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 195
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #calls: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->deleteEmailAccount(Ljava/lang/String;)V
    invoke-static {v8, v2}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1500(Lcom/motorola/blur/setup/EDMServiceCredentialsService;Ljava/lang/String;)V

    .line 186
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 201
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #allEmails:[Ljava/lang/String;
    .end local v2           #emailID:Ljava/lang/String;
    .end local v3           #extras:Landroid/os/Bundle;
    .end local v4           #i:I
    .end local v6           #intent:Landroid/content/Intent;
    .end local v7           #size:I
    :pswitch_1
    invoke-virtual {p0, v11}, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->hasMessages(I)Z

    move-result v8

    if-nez v8, :cond_0

    .line 205
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #getter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1600(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_7

    .line 208
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #getter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1600(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 209
    .local v5, id:I
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    #getter for: Lcom/motorola/blur/setup/EDMServiceCredentialsService;->idList:Ljava/util/List;
    invoke-static {v8}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->access$1600(Lcom/motorola/blur/setup/EDMServiceCredentialsService;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 213
    iget-object v8, p0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ServiceHandler;->this$0:Lcom/motorola/blur/setup/EDMServiceCredentialsService;

    invoke-virtual {v8, v5}, Lcom/motorola/blur/setup/EDMServiceCredentialsService;->stopSelfResult(I)Z

    goto/16 :goto_0

    .line 215
    .end local v5           #id:I
    :cond_7
    const-string v8, "EDMService"

    new-array v8, v11, [Ljava/lang/Object;

    const-string v9, "Not stopping myself as id list empty"

    aput-object v9, v8, v10

    invoke-static {v12, v8}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
