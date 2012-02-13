.class Lcom/motorola/blur/settings/EditAccountActivity$1$1;
.super Ljava/lang/Thread;
.source "EditAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/settings/EditAccountActivity$1;->onConnect(Lcom/motorola/blur/util/authentication/Authentication;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

.field final synthetic val$authenticator:Lcom/motorola/blur/util/authentication/Authentication;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/EditAccountActivity$1;Lcom/motorola/blur/util/authentication/Authentication;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iput-object p2, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->val$authenticator:Lcom/motorola/blur/util/authentication/Authentication;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v8, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "0"

    .line 193
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->val$authenticator:Lcom/motorola/blur/util/authentication/Authentication;

    #setter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v6, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->access$202(Lcom/motorola/blur/settings/EditAccountActivity;Lcom/motorola/blur/util/authentication/Authentication;)Lcom/motorola/blur/util/authentication/Authentication;

    .line 194
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 195
    .local v2, msg:Landroid/os/Message;
    iput v8, v2, Landroid/os/Message;->arg1:I

    .line 196
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 197
    const/4 v5, 0x0

    .line 198
    .local v5, token:[Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/String;

    .line 199
    const/16 v3, 0x8

    .line 201
    .local v3, responseError:I
    :try_start_0
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    if-eqz v6, :cond_0

    .line 202
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mType:I
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$400(Lcom/motorola/blur/settings/EditAccountActivity;)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 213
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v7, v7, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v7, v7, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v7}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Lcom/motorola/blur/util/authentication/Authentication;->authenticate(J)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 224
    :cond_0
    :goto_0
    if-nez v3, :cond_3

    .line 225
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mType:I
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$400(Lcom/motorola/blur/settings/EditAccountActivity;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    .line 231
    :goto_1
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #calls: Lcom/motorola/blur/settings/EditAccountActivity;->sendAccountBroadcast()V
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$500(Lcom/motorola/blur/settings/EditAccountActivity;)V

    .line 232
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .line 233
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$300(Lcom/motorola/blur/settings/EditAccountActivity;)Landroid/os/Handler;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/os/Handler;->dispatchMessage(Landroid/os/Message;)V

    .line 274
    :goto_2
    return-void

    .line 204
    :pswitch_0
    :try_start_1
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/motorola/blur/settings/AccountSettings;->getActivated(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 205
    const/4 v6, 0x0

    const-string v7, "0"

    aput-object v7, v5, v6

    .line 209
    :cond_1
    :goto_3
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    #getter for: Lcom/motorola/blur/settings/EditAccountActivity;->mAuth:Lcom/motorola/blur/util/authentication/Authentication;
    invoke-static {v6}, Lcom/motorola/blur/settings/EditAccountActivity;->access$200(Lcom/motorola/blur/settings/EditAccountActivity;)Lcom/motorola/blur/util/authentication/Authentication;

    move-result-object v6

    iget-object v7, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v7, v7, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v7, v7, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v7}, Lcom/motorola/blur/settings/AccountSettings;->getAccountId()J

    move-result-wide v7

    iget-object v9, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v9, v9, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v9, v9, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v9}, Lcom/motorola/blur/settings/AccountSettings;->getPassword()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v7, v8, v9, v5}, Lcom/motorola/blur/util/authentication/Authentication;->authenticateWithCredential(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 210
    goto :goto_0

    .line 206
    :cond_2
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/motorola/blur/settings/AccountSettings;->getActivated(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 207
    const/4 v6, 0x1

    const-string v7, "0"

    aput-object v7, v5, v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 216
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 217
    .local v0, e:Ljava/lang/Exception;
    const-string v6, "EAA"

    new-array v7, v11, [Ljava/lang/Object;

    const-string v8, "Auth exception"

    aput-object v8, v7, v10

    invoke-static {v6, v7}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 227
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_1
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    aget-object v7, v5, v10

    invoke-virtual {v6, v7, v10}, Lcom/motorola/blur/settings/AccountSettings;->setPassword(Ljava/lang/String;I)V

    .line 228
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    aget-object v7, v5, v11

    invoke-virtual {v6, v7, v11}, Lcom/motorola/blur/settings/AccountSettings;->setPassword(Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 235
    :cond_3
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    if-eqz v6, :cond_4

    .line 236
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity;->mModel:Lcom/motorola/blur/settings/AccountSettings;

    invoke-virtual {v6}, Lcom/motorola/blur/settings/AccountSettings;->revertDataInDB()V

    .line 238
    :cond_4
    const v1, 0x7f0c00f3

    .line 240
    .local v1, errorCode:I
    packed-switch v3, :pswitch_data_2

    .line 264
    :pswitch_2
    const v1, 0x7f0c00f3

    .line 266
    :goto_4
    move v4, v1

    .line 268
    .local v4, runnableErrorCode:I
    iget-object v6, p0, Lcom/motorola/blur/settings/EditAccountActivity$1$1;->this$1:Lcom/motorola/blur/settings/EditAccountActivity$1;

    iget-object v6, v6, Lcom/motorola/blur/settings/EditAccountActivity$1;->this$0:Lcom/motorola/blur/settings/EditAccountActivity;

    new-instance v7, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;

    invoke-direct {v7, p0, v4}, Lcom/motorola/blur/settings/EditAccountActivity$1$1$1;-><init>(Lcom/motorola/blur/settings/EditAccountActivity$1$1;I)V

    invoke-virtual {v6, v7}, Lcom/motorola/blur/settings/EditAccountActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 243
    .end local v4           #runnableErrorCode:I
    :pswitch_3
    const v1, 0x7f0c00da

    .line 244
    goto :goto_4

    .line 246
    :pswitch_4
    const v1, 0x7f0c00db

    .line 247
    goto :goto_4

    .line 249
    :pswitch_5
    const v1, 0x7f0c00dc

    .line 250
    goto :goto_4

    .line 252
    :pswitch_6
    const v1, 0x7f0c00dd

    .line 253
    goto :goto_4

    .line 258
    :pswitch_7
    const v1, 0x7f0c00d9

    .line 259
    goto :goto_4

    .line 261
    :pswitch_8
    const v1, 0x7f0c00fa

    .line 262
    goto :goto_4

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch

    .line 225
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    .line 240
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_2
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
