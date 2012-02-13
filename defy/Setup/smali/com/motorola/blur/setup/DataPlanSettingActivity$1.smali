.class Lcom/motorola/blur/setup/DataPlanSettingActivity$1;
.super Ljava/lang/Object;
.source "DataPlanSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/DataPlanSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/DataPlanSettingActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const-string v6, "isFlat"

    .line 50
    const-string v4, "******"

    const-string v5, "&&&&&&&&&"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mNonflat:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.datamanager.app.NON_FLATRATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    .local v0, dataIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-virtual {v4, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 55
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPrefEdit:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isFlat"

    const-string v5, "false"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPrefEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 58
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    const-class v5, Lcom/motorola/blur/setup/NeedConnectionActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 59
    .local v1, i:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-virtual {v4, v1}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    .end local v0           #dataIntent:Landroid/content/Intent;
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mFlat:Landroid/widget/RadioButton;

    invoke-virtual {v4}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.motorola.blur.datamanager.app.FLATRATE"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .restart local v0       #dataIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPrefEdit:Landroid/content/SharedPreferences$Editor;

    const-string v5, "isFlat"

    const-string v5, "true"

    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 65
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    iget-object v4, v4, Lcom/motorola/blur/setup/DataPlanSettingActivity;->mPrefEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-virtual {v4, v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 68
    sget-boolean v4, Lcom/motorola/blur/setup/SetupActivity;->mShowConnectionChooser:Z

    if-eqz v4, :cond_2

    .line 70
    new-instance v2, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;

    invoke-direct {v2, p0}, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;-><init>(Lcom/motorola/blur/setup/DataPlanSettingActivity$1;)V

    .line 75
    .local v2, onConnection:Ljava/lang/Runnable;
    new-instance v3, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$2;

    invoke-direct {v3, p0}, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$2;-><init>(Lcom/motorola/blur/setup/DataPlanSettingActivity$1;)V

    .line 80
    .local v3, onTimeout:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-virtual {v4, v2, v3}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->checkConnection(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 85
    .end local v0           #dataIntent:Landroid/content/Intent;
    .end local v2           #onConnection:Ljava/lang/Runnable;
    .end local v3           #onTimeout:Ljava/lang/Runnable;
    :cond_1
    :goto_0
    return-void

    .line 82
    .restart local v0       #dataIntent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    new-instance v5, Landroid/content/Intent;

    iget-object v6, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    const-class v7, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v5}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
