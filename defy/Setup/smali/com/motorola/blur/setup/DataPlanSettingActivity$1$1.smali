.class Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;
.super Ljava/lang/Object;
.source "DataPlanSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/blur/setup/DataPlanSettingActivity$1;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/DataPlanSettingActivity$1;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;->this$1:Lcom/motorola/blur/setup/DataPlanSettingActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;->this$1:Lcom/motorola/blur/setup/DataPlanSettingActivity$1;

    iget-object v0, v0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$1$1;->this$1:Lcom/motorola/blur/setup/DataPlanSettingActivity$1;

    iget-object v2, v2, Lcom/motorola/blur/setup/DataPlanSettingActivity$1;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    const-class v3, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
