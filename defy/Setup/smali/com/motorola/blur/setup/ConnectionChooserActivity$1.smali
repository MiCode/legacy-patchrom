.class Lcom/motorola/blur/setup/ConnectionChooserActivity$1;
.super Ljava/lang/Object;
.source "ConnectionChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ConnectionChooserActivity;->goNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ConnectionChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 139
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    const-string v2, "DeviceSetup"

    invoke-virtual {v1, v2, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 140
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "NetworkTimeSet"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.setupsettings.DATE_TIME_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    const-class v4, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
