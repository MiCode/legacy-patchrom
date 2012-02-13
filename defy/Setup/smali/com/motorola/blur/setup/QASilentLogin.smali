.class public Lcom/motorola/blur/setup/QASilentLogin;
.super Landroid/app/Activity;
.source "QASilentLogin.java"


# static fields
.field private static final DBG:Z = false

.field public static final SD_FILE:I = 0x14

.field public static final TAG:Ljava/lang/String; = "QASilentLogin"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 34
    invoke-static {}, Lcom/motorola/blur/setup/SilentBlurUtility;->silentSetupSDFileExists()Z

    move-result v1

    .line 39
    .local v1, sdFileExists:Z
    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/motorola/blur/setup/QASilentLogin;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 41
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-ne p2, v4, :cond_0

    .line 42
    const-class v2, Lcom/motorola/blur/setup/SetupInfoActivity;

    invoke-static {v0, p0, v2, v5}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 43
    :cond_0
    const-string v2, "com.motorola.blur.setup"

    const-string v3, "com.motorola.blur.setup.CreateBackgroundBlurAccountReceiver"

    invoke-static {v0, v2, v3, v5}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 46
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->reEnableSync(Landroid/content/Context;)V

    .line 47
    const-class v2, Lcom/motorola/blur/setup/HomeActivity;

    if-ne p2, v4, :cond_2

    move v3, v6

    :goto_0
    invoke-static {v0, p0, v2, v3}, Lcom/motorola/blur/setup/SilentBlurUtility;->disableComponent(Landroid/content/pm/PackageManager;Landroid/content/Context;Ljava/lang/Class;Z)V

    .line 50
    invoke-virtual {p0}, Lcom/motorola/blur/setup/QASilentLogin;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 53
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/QASilentLogin;->setResult(I)V

    .line 54
    invoke-virtual {p0}, Lcom/motorola/blur/setup/QASilentLogin;->finish()V

    .line 55
    return-void

    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    move v3, v5

    .line 47
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/motorola/blur/setup/CreateBackgroundBlurAccountActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 27
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x14

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/QASilentLogin;->startActivityForResult(Landroid/content/Intent;I)V

    .line 28
    return-void
.end method
