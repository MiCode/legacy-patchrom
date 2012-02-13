.class Lcom/motorola/blur/setup/ServiceChooserActivity$12;
.super Ljava/lang/Thread;
.source "ServiceChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;->handleClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iput p2, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 1243
    iget v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    const v6, 0x7f0b0001

    if-ne v5, v6, :cond_4

    .line 1245
    sget-boolean v5, Lcom/motorola/blur/setup/SetupActivity;->mSilentRegistrationRequired:Z

    if-ne v5, v9, :cond_2

    .line 1246
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1100(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1247
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->goSkipOrFinish(Z)V
    invoke-static {v5, v9}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1200(Lcom/motorola/blur/setup/ServiceChooserActivity;Z)V

    .line 1298
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->goSkipOrFinish(Z)V
    invoke-static {v5, v10}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1200(Lcom/motorola/blur/setup/ServiceChooserActivity;Z)V

    goto :goto_0

    .line 1252
    :cond_2
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1100(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z

    move-result v5

    if-ne v5, v9, :cond_3

    .line 1253
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v5, v10}, Lcom/motorola/blur/setup/ServiceChooserActivity;->setResult(I)V

    .line 1254
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->finish()V

    goto :goto_0

    .line 1256
    :cond_3
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->launchNextScreen()V
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1300(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    goto :goto_0

    .line 1260
    :cond_4
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mSetupShowOneList:Z
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1400(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z

    move-result v5

    if-ne v5, v9, :cond_5

    .line 1263
    iget v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    iget-object v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1500(Lcom/motorola/blur/setup/ServiceChooserActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 1271
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mGridViewList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1500(Lcom/motorola/blur/setup/ServiceChooserActivity;)Ljava/util/ArrayList;

    move-result-object v5

    iget v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;

    .line 1272
    .local v1, gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 1273
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    const-string v6, "DeviceSetup"

    invoke-virtual {v5, v6, v10}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1276
    .local v3, settings:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v5}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tos_accepted"

    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/motorola/blur/provider/DeviceSetup$AppSettings;->getAppSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 1281
    .local v4, tosAccepted:Z
    if-nez v4, :cond_5

    .line 1283
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1284
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v5, "BlurServiceSlientRegistrationSystemUpdateRequest"

    invoke-interface {v0, v5, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1285
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1287
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1288
    .local v2, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    const-class v6, Lcom/motorola/blur/setup/TosActivity;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1289
    const-string v5, "provider"

    iget-object v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;->getProviderId()J

    move-result-wide v7

    invoke-static {v6, v7, v8}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1290
    const-string v5, "addSingleAccount"

    iget-object v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #getter for: Lcom/motorola/blur/setup/ServiceChooserActivity;->mAddSingleAccount:Z
    invoke-static {v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1100(Lcom/motorola/blur/setup/ServiceChooserActivity;)Z

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1291
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    invoke-virtual {v5, v2, v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 1296
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #gridViewObject:Lcom/motorola/blur/setup/ServiceChooserActivity$GridViewObject;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #settings:Landroid/content/SharedPreferences;
    .end local v4           #tosAccepted:Z
    :cond_5
    iget-object v5, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget v6, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$12;->val$id:I

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->launchSettingsScreen(I)V
    invoke-static {v5, v6}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$1600(Lcom/motorola/blur/setup/ServiceChooserActivity;I)V

    goto/16 :goto_0
.end method
