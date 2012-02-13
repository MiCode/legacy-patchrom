.class public Lcom/motorola/blur/setup/BlurSilentSetupActivity;
.super Landroid/app/Activity;
.source "BlurSilentSetupActivity.java"

# interfaces
.implements Lcom/motorola/blur/setup/BlurAccountCreationListener;


# static fields
.field private static final FAILED:I = 0x2

.field private static final SUCCESS:I = 0x1


# instance fields
.field private descView:Landroid/widget/TextView;

.field private handler:Landroid/os/Handler;

.field private launchButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
    .locals 3
    .parameter "serverCaptchaInfo"
    .parameter "errorCode"

    .prologue
    .line 118
    const-string v0, "SHEN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "************ CSS onCaptchaRecieved!!, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 50
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    const v0, 0x7f03001a

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->setContentView(I)V

    .line 53
    new-instance v0, Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity$1;-><init>(Lcom/motorola/blur/setup/BlurSilentSetupActivity;)V

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->handler:Landroid/os/Handler;

    .line 68
    const v0, 0x7f0b0053

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->descView:Landroid/widget/TextView;

    .line 69
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->descView:Landroid/widget/TextView;

    const-string v1, "Please make sure you have enabled WiFi or Data Service before launching this MOTOBLUR Silent setup!!"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    const v0, 0x7f0b0054

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->launchButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->launchButton:Landroid/widget/Button;

    const-string v1, "Launch MOTOBLUR Silent setup"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->launchButton:Landroid/widget/Button;

    new-instance v1, Lcom/motorola/blur/setup/BlurSilentSetupActivity$2;

    invoke-direct {v1, p0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity$2;-><init>(Lcom/motorola/blur/setup/BlurSilentSetupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 7
    .parameter "success"
    .parameter "captchaInfo"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v4, "SHEN"

    .line 98
    const-string v2, "SHEN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "************ CSS onCreationFinished!!, status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    if-ne p1, v5, :cond_0

    .line 100
    const-string v2, "SHEN"

    const-string v2, "************ disable com.motorola.blur.setup!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 102
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.motorola.blur.setup"

    const-string v3, "com.motorola.blur.setup.HomeActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, name1:Landroid/content/ComponentName;
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v6, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 105
    const-string v2, "SHEN"

    const-string v2, "************ CSS onCreationFinished success!!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 111
    .end local v0           #name1:Landroid/content/ComponentName;
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 108
    :cond_0
    const-string v2, "SHEN"

    const-string v2, "************ CSS onCreationFinished failed!!"

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v2, p0, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "success"
    .parameter "googleUser"
    .parameter "captchaInfo"

    .prologue
    .line 114
    const-string v0, "SHEN"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "************ CSS onLoginFinished!!, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method

.method public startAutoSignUpWithRandomId()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 83
    .local v0, RNG:Ljava/util/Random;
    new-instance v1, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v1, p0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V

    .line 84
    .local v1, mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v2, mBundle:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurSilentSetupActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 87
    .local v3, tm:Landroid/telephony/TelephonyManager;
    const-string v4, "CaptchaRequired"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    const-string v4, "existing"

    invoke-virtual {v2, v4, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 89
    const-string v4, "username"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "@ciena.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v4, "password"

    const-string v5, "ciena"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "data1"

    const-string v5, "SHENCHEN"

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    .line 94
    const-string v4, "SHEN"

    const-string v5, "************ Silent MOTOBLUR creating accounts with random ID!!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void
.end method
