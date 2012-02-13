.class Lcom/motorola/blur/setup/WiFiSettingsActivity$1;
.super Ljava/lang/Object;
.source "WiFiSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/WiFiSettingsActivity;->goNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/WiFiSettingsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/WiFiSettingsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;->this$0:Lcom/motorola/blur/setup/WiFiSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;->this$0:Lcom/motorola/blur/setup/WiFiSettingsActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;->this$0:Lcom/motorola/blur/setup/WiFiSettingsActivity;

    const-class v3, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 76
    iget-object v0, p0, Lcom/motorola/blur/setup/WiFiSettingsActivity$1;->this$0:Lcom/motorola/blur/setup/WiFiSettingsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/WiFiSettingsActivity;->finish()V

    .line 77
    return-void
.end method
