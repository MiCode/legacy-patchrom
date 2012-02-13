.class Lcom/motorola/blur/setup/DataPlanSettingActivity$2;
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
    .line 87
    iput-object p1, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$2;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/motorola/blur/setup/DataPlanSettingActivity$2;->this$0:Lcom/motorola/blur/setup/DataPlanSettingActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/DataPlanSettingActivity;->finish()V

    .line 90
    return-void
.end method
