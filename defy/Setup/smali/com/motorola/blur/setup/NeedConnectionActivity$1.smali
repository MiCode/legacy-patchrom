.class Lcom/motorola/blur/setup/NeedConnectionActivity$1;
.super Ljava/lang/Object;
.source "NeedConnectionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/NeedConnectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/NeedConnectionActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    iget-object v0, v0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mSetupWifi:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    const-class v3, Lcom/motorola/blur/setup/WiFiSettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    iget-object v0, v0, Lcom/motorola/blur/setup/NeedConnectionActivity;->mSkip:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/NeedConnectionActivity$1;->this$0:Lcom/motorola/blur/setup/NeedConnectionActivity;

    const-class v3, Lcom/motorola/blur/setup/SkipSetupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/NeedConnectionActivity;->startActivity(Landroid/content/Intent;)V

    .line 55
    :cond_1
    return-void
.end method
