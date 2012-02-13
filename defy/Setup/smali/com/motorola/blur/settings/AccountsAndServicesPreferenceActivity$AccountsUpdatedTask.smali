.class Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;
.super Landroid/os/AsyncTask;
.source "AccountsAndServicesPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountsUpdatedTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[",
        "Landroid/accounts/Account;",
        "Ljava/lang/Void;",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/motorola/blur/settings/AccountPreference;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;


# direct methods
.method private constructor <init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;-><init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, [[Landroid/accounts/Account;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->doInBackground([[Landroid/accounts/Account;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([[Landroid/accounts/Account;)Ljava/util/HashMap;
    .locals 32
    .parameter "params"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Landroid/accounts/Account;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/settings/AccountPreference;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 229
    const/16 v29, 0x0

    aget-object v7, p1, v29

    .line 230
    .local v7, accounts:[Landroid/accounts/Account;
    new-instance v25, Ljava/util/HashMap;

    const/16 v29, 0x2

    move-object/from16 v0, v25

    move/from16 v1, v29

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 231
    .local v25, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v5, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;"
    const-string v29, "blurAccountsCategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v20, otherAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;"
    const-string v29, "otherAccountsCategory"

    move-object/from16 v0, v25

    move-object/from16 v1, v29

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object v11, v0

    .line 236
    .local v11, context:Landroid/content/Context;
    const/4 v4, 0x0

    .line 239
    .local v4, account:Landroid/accounts/Account;
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 240
    .local v8, accountsMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v29, "email"

    const/16 v30, 0x0

    move-object v0, v11

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v8

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v29, "activesync"

    const/16 v30, 0x0

    move-object v0, v11

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v8

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v29, "yahoo"

    const/16 v30, 0x0

    move-object v0, v11

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/provider/GAMSHelper;->composeGAMSAccountType(Landroid/content/Context;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v8

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move-object v0, v7

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_1

    .line 245
    aget-object v4, v7, v16

    .line 246
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 247
    .local v12, count:Ljava/lang/Integer;
    if-eqz v12, :cond_0

    .line 248
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v30

    add-int/lit8 v30, v30, 0x1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    move-object v0, v8

    move-object/from16 v1, v29

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 252
    .end local v12           #count:Ljava/lang/Integer;
    :cond_1
    const/16 v16, 0x0

    :goto_1
    move-object v0, v7

    array-length v0, v0

    move/from16 v29, v0

    move/from16 v0, v16

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    .line 256
    aget-object v4, v7, v16

    .line 257
    new-instance v6, Lcom/motorola/blur/settings/AccountPreference;

    invoke-direct {v6, v11, v4}, Lcom/motorola/blur/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;)V

    .line 258
    .local v6, accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    const-string v30, "com.motorola.blur.provider"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_9

    .line 259
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {v11, v4}, Lcom/motorola/blur/provider/GAMSHelper;->getProviderId(Landroid/content/Context;Landroid/accounts/Account;)J

    move-result-wide v23

    .line 261
    .local v23, providerId:J
    const-wide/16 v29, -0x1

    cmp-long v29, v23, v29

    if-eqz v29, :cond_7

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$100(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v29

    const-string v30, "_thumb.png"

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 263
    .local v10, bm:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_6

    .line 264
    invoke-virtual {v6, v10}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/Bitmap;)V

    .line 272
    .end local v10           #bm:Landroid/graphics/Bitmap;
    :goto_2
    const/16 v28, 0x0

    .line 273
    .local v28, summary:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;

    move-result-object v29

    const-string v30, "provider"

    move-object/from16 v0, v29

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 274
    .local v22, provider:Ljava/lang/String;
    if-eqz v22, :cond_3

    .line 275
    monitor-enter p0

    .line 277
    :try_start_0
    invoke-static/range {v22 .. v22}, Lcom/motorola/blur/provider/DeviceSetup;->removeCache(Ljava/lang/String;)V

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v18

    .line 279
    .local v18, info:Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v18, :cond_2

    .line 280
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getPrettyName()Ljava/lang/String;

    move-result-object v28

    .line 282
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    .end local v18           #info:Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    :cond_3
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v8

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    .line 287
    .restart local v12       #count:Ljava/lang/Integer;
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_4

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;

    move-result-object v29

    const-string v30, "AccountPrettyName"

    move-object/from16 v0, v29

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 289
    .local v19, name:Ljava/lang/String;
    if-eqz v19, :cond_4

    .line 290
    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    const v30, 0x7f0c0073

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aput-object v28, v30, v31

    const/16 v31, 0x1

    aput-object v19, v30, v31

    invoke-static/range {v29 .. v30}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v28

    .line 293
    .end local v19           #name:Ljava/lang/String;
    :cond_4
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 294
    if-nez v28, :cond_8

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    :goto_3
    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    .end local v12           #count:Ljava/lang/Integer;
    .end local v22           #provider:Ljava/lang/String;
    .end local v23           #providerId:J
    .end local v28           #summary:Ljava/lang/String;
    :cond_5
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 266
    .restart local v10       #bm:Landroid/graphics/Bitmap;
    .restart local v23       #providerId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;

    move-result-object v29

    const-string v30, "provider"

    move-object/from16 v0, v29

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v29

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(I)V

    goto/16 :goto_2

    .line 270
    .end local v10           #bm:Landroid/graphics/Bitmap;
    :cond_7
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v29

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(I)V

    goto/16 :goto_2

    .line 282
    .restart local v22       #provider:Ljava/lang/String;
    .restart local v28       #summary:Ljava/lang/String;
    :catchall_0
    move-exception v29

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v29

    .restart local v12       #count:Ljava/lang/Integer;
    :cond_8
    move-object/from16 v29, v28

    .line 294
    goto :goto_3

    .line 295
    .end local v12           #count:Ljava/lang/Integer;
    .end local v22           #provider:Ljava/lang/String;
    .end local v23           #providerId:J
    .end local v28           #summary:Ljava/lang/String;
    :cond_9
    const-string v29, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_TYPE"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v29

    if-nez v29, :cond_a

    .line 297
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_a
    const-wide/16 v23, -0x1

    .line 303
    .restart local v23       #providerId:J
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 304
    .local v21, prettyName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v29

    const-string v30, "blur"

    invoke-static/range {v29 .. v30}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderInfo(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;

    move-result-object v18

    .line 306
    .restart local v18       #info:Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    if-eqz v18, :cond_b

    .line 307
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getId()J

    move-result-wide v23

    .line 308
    invoke-virtual/range {v18 .. v18}, Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;->getPrettyName()Ljava/lang/String;

    move-result-object v21

    .line 310
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mCache:Lcom/motorola/blur/util/cache/ProviderIconCache;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$100(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Lcom/motorola/blur/util/cache/ProviderIconCache;

    move-result-object v29

    const-string v30, "_thumb.png"

    move-object/from16 v0, v29

    move-wide/from16 v1, v23

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/blur/util/cache/ProviderIconCache;->getIcon(JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 311
    .restart local v10       #bm:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_c

    .line 312
    invoke-virtual {v6, v10}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/Bitmap;)V

    .line 317
    :goto_5
    const/16 v29, 0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLockVisibility(Z)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAccountManager:Landroid/accounts/AccountManager;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$200(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/accounts/AccountManager;

    move-result-object v29

    const-string v30, "com.motorola.blur.service.bsutils.MOTHER_USER_CREDS_EMAIL"

    move-object/from16 v0, v29

    move-object v1, v4

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 319
    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 314
    :cond_c
    const-string v29, "blur"

    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getDefaultProviderIcon(Ljava/lang/String;)I

    move-result v29

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(I)V

    goto :goto_5

    .line 320
    .end local v10           #bm:Landroid/graphics/Bitmap;
    .end local v18           #info:Lcom/motorola/blur/provider/DeviceSetup$ProviderInfo;
    .end local v21           #prettyName:Ljava/lang/String;
    .end local v23           #providerId:J
    :cond_d
    const-string v29, "com.motorola.android.buacontactadapter"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_f

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$400(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Ljava/util/HashMap;

    move-result-object v29

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accounts/AuthenticatorDescription;

    .line 325
    .local v13, desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz v13, :cond_5

    .line 327
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v29

    if-eqz v29, :cond_e

    .line 328
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 333
    .local v9, authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object v0, v13

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 334
    .local v17, icon:Landroid/graphics/drawable/Drawable;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 337
    .end local v9           #authContext:Landroid/content/Context;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    :goto_7
    const/16 v29, 0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLockVisibility(Z)V

    .line 338
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0c0126

    invoke-virtual/range {v29 .. v30}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 330
    :cond_e
    :try_start_3
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    .line 335
    :catch_0
    move-exception v29

    goto :goto_7

    .line 342
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_f
    const-string v29, "Visual Voice Mail"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-eqz v29, :cond_11

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v29

    if-eqz v29, :cond_10

    .line 345
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$400(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Ljava/util/HashMap;

    move-result-object v29

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accounts/AuthenticatorDescription;

    .line 348
    .restart local v13       #desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz v13, :cond_5

    .line 350
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 351
    .restart local v9       #authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object v0, v13

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 352
    .restart local v17       #icon:Landroid/graphics/drawable/Drawable;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_2

    .line 355
    .end local v9           #authContext:Landroid/content/Context;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    :goto_8
    const/16 v29, 0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLockVisibility(Z)V

    .line 356
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    const v30, 0x7f0c0152

    invoke-virtual/range {v29 .. v30}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v29

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 359
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_11
    const-string v29, "com.motorola.blur.contacts.UNCONNECTED_ACCOUNT"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "com.motorola.android.simcontactadapter"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "com.local.contacts"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    const-string v29, "com.motorola.contacts.preloaded"

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v29

    if-nez v29, :cond_5

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mAuthTypes:Ljava/util/HashMap;
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$400(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Ljava/util/HashMap;

    move-result-object v29

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/accounts/AuthenticatorDescription;

    .line 366
    .restart local v13       #desc:Landroid/accounts/AuthenticatorDescription;
    if-eqz v13, :cond_5

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v29

    if-eqz v29, :cond_13

    .line 368
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    :goto_9
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    move-object v0, v13

    iget-object v0, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v9

    .line 374
    .restart local v9       #authContext:Landroid/content/Context;
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v29

    move-object v0, v13

    iget v0, v0, Landroid/accounts/AuthenticatorDescription;->iconId:I

    move/from16 v30, v0

    invoke-virtual/range {v29 .. v30}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .line 375
    .restart local v17       #icon:Landroid/graphics/drawable/Drawable;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_1

    .line 380
    .end local v9           #authContext:Landroid/content/Context;
    .end local v17           #icon:Landroid/graphics/drawable/Drawable;
    :goto_a
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v27

    .line 383
    .local v27, strAccountType:Ljava/lang/String;
    if-eqz v4, :cond_14

    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    if-eqz v29, :cond_14

    const-string v29, "com.motorola.nabsync.MyPhonebook"

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_14

    .line 385
    const/16 v29, 0x1

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLockVisibility(Z)V

    .line 386
    const/16 v29, 0x0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setEnabled(Z)V

    .line 391
    :goto_b
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v29, v0

    move-object v0, v6

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 392
    iget-object v14, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 393
    .local v14, descName:Ljava/lang/String;
    const/16 v29, 0x2e

    move-object v0, v14

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v26

    .line 394
    .local v26, sep:I
    const/16 v29, -0x1

    move/from16 v0, v26

    move/from16 v1, v29

    if-eq v0, v1, :cond_12

    .line 395
    move-object v0, v4

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v29, v0

    add-int/lit8 v30, v26, 0x1

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 396
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-le v0, v1, :cond_15

    .line 397
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v30, 0x0

    const/16 v31, 0x1

    move-object v0, v14

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v30, 0x1

    move-object v0, v14

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 402
    :cond_12
    :goto_c
    invoke-virtual {v6, v14}, Lcom/motorola/blur/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 370
    .end local v14           #descName:Ljava/lang/String;
    .end local v26           #sep:I
    .end local v27           #strAccountType:Ljava/lang/String;
    :cond_13
    move-object/from16 v0, v20

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    .line 376
    :catch_1
    move-exception v29

    move-object/from16 v15, v29

    .line 377
    .local v15, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v29, "BlurAASPA"

    const/16 v30, 0x0

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    move-object/from16 v0, v29

    move-object v1, v15

    move-object/from16 v2, v30

    invoke-static {v0, v1, v2}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto/16 :goto_a

    .line 388
    .end local v15           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v27       #strAccountType:Ljava/lang/String;
    :cond_14
    const/16 v29, 0x0

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/motorola/blur/settings/AccountPreference;->setLockVisibility(Z)V

    goto/16 :goto_b

    .line 399
    .restart local v14       #descName:Ljava/lang/String;
    .restart local v26       #sep:I
    :cond_15
    invoke-virtual {v14}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 408
    .end local v6           #accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    .end local v13           #desc:Landroid/accounts/AuthenticatorDescription;
    .end local v14           #descName:Ljava/lang/String;
    .end local v26           #sep:I
    .end local v27           #strAccountType:Ljava/lang/String;
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    move-object/from16 v29, v0

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static/range {v29 .. v29}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v29

    if-eqz v29, :cond_17

    .line 409
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 411
    :cond_17
    return-object v25

    .line 353
    .restart local v6       #accountPreference:Lcom/motorola/blur/settings/AccountPreference;
    .restart local v13       #desc:Landroid/accounts/AuthenticatorDescription;
    :catch_2
    move-exception v29

    goto/16 :goto_8
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 225
    check-cast p1, Ljava/util/HashMap;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->onPostExecute(Ljava/util/HashMap;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/HashMap;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/blur/settings/AccountPreference;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p1, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;>;"
    const-string v8, "otherAccountsCategory"

    .line 417
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mBlurAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v6}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$500(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/preference/PreferenceCategory;

    move-result-object v2

    .line 418
    .local v2, blurAccountsCategory:Landroid/preference/PreferenceCategory;
    #calls: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V
    invoke-static {v2}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$600(Landroid/preference/PreferenceCategory;)V

    .line 419
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v6}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$700(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Landroid/preference/PreferenceCategory;

    move-result-object v5

    .line 420
    .local v5, otherAccountsCategory:Landroid/preference/PreferenceCategory;
    #calls: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->unbindPreferenceIcons(Landroid/preference/PreferenceCategory;)V
    invoke-static {v5}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$600(Landroid/preference/PreferenceCategory;)V

    .line 421
    invoke-virtual {v2}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 422
    const-string v6, "blurAccountsCategory"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 423
    .local v0, accountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/settings/AccountPreference;

    .line 424
    .local v1, ap:Lcom/motorola/blur/settings/AccountPreference;
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 426
    .end local v1           #ap:Lcom/motorola/blur/settings/AccountPreference;
    :cond_0
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #getter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mSilentBlur:Z
    invoke-static {v6}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$300(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 427
    if-eqz v5, :cond_2

    .line 428
    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 434
    :cond_1
    :goto_1
    const-string v6, "otherAccountsCategory"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 435
    .local v4, otherAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/settings/AccountPreference;

    .line 436
    .restart local v1       #ap:Lcom/motorola/blur/settings/AccountPreference;
    invoke-virtual {v5, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    .line 429
    .end local v1           #ap:Lcom/motorola/blur/settings/AccountPreference;
    .end local v4           #otherAccountList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/blur/settings/AccountPreference;>;"
    :cond_2
    if-nez v5, :cond_1

    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #calls: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->hasOtherAccounts()Z
    invoke-static {v6}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$800(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 430
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    const v7, 0x7f050001

    invoke-virtual {v6, v7}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->addPreferencesFromResource(I)V

    .line 431
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    const-string v7, "otherAccountsCategory"

    invoke-virtual {v6, v8}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    .end local v5           #otherAccountsCategory:Landroid/preference/PreferenceCategory;
    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 432
    .restart local v5       #otherAccountsCategory:Landroid/preference/PreferenceCategory;
    iget-object v6, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$AccountsUpdatedTask;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #setter for: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->mOtherAccountsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {v6, v5}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$702(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;Landroid/preference/PreferenceCategory;)Landroid/preference/PreferenceCategory;

    goto :goto_1

    .line 439
    :cond_3
    return-void
.end method
