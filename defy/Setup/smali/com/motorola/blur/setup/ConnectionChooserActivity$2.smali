.class Lcom/motorola/blur/setup/ConnectionChooserActivity$2;
.super Ljava/lang/Object;
.source "ConnectionChooserActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/blur/setup/ConnectionChooserActivity;->doRetry()V
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
    .line 162
    iput-object p1, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 164
    iget-object v2, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    const-string v3, "DeviceSetup"

    invoke-virtual {v2, v3, v4}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 165
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v2, "NetworkTimeSet"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.motorola.blur.setupsettings.DATE_TIME_SETTINGS"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v2, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    invoke-virtual {v2, v0}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->startActivity(Landroid/content/Intent;)V

    .line 172
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v2, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lcom/motorola/blur/setup/ConnectionChooserActivity$2;->this$0:Lcom/motorola/blur/setup/ConnectionChooserActivity;

    const-class v5, Lcom/motorola/blur/setup/SignUpOrLogInActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Lcom/motorola/blur/setup/ConnectionChooserActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
