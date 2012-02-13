.class public Lcom/motorola/blur/setup/CaptchaActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "CaptchaActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BlurCaptchaActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method

.method private sendBroadcastToService(Z)V
    .locals 5
    .parameter "success"

    .prologue
    .line 111
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 112
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v2, v3

    .line 113
    .local v2, text:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.motorola.blur.setup.captcha.input"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v3, "captcha.result"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v3, "BlurCaptchaActivity"

    const-string v4, "1. com.motorola.blur.setup.captcha is sent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CaptchaActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 118
    return-void

    .line 112
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method private setButtons()V
    .locals 5

    .prologue
    .line 63
    const v3, 0x7f0b0011

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 65
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v3, 0x7f0c0057

    const v4, 0x7f0b0004

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 66
    .local v1, cancelButton:Landroid/widget/Button;
    const v3, 0x7f0c007f

    const v4, 0x7f0b0003

    invoke-static {p0, v3, v4}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 67
    .local v2, okButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 68
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 70
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method

.method private setEditTextInResult()V
    .locals 4

    .prologue
    .line 134
    const v3, 0x7f0b0038

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 135
    .local v0, edit:Landroid/widget/EditText;
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v2, v3

    .line 136
    .local v2, text:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 137
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const/4 v3, -0x1

    invoke-virtual {p0, v3, v1}, Lcom/motorola/blur/setup/CaptchaActivity;->setResult(ILandroid/content/Intent;)V

    .line 139
    return-void

    .line 135
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    goto :goto_0
.end method

.method private setImage([B)Z
    .locals 6
    .parameter "imageBytes"

    .prologue
    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, gotImage:Z
    const v4, 0x7f0b0037

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 82
    .local v3, imageView:Landroid/widget/ImageView;
    const/4 v4, 0x0

    :try_start_0
    array-length v5, p1

    invoke-static {p1, v4, v5}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 83
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    const/4 v2, 0x1

    .line 88
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return v2

    .line 85
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 86
    .local v1, exception:Ljava/lang/Exception;
    const-string v4, "BlurCaptchaActivity"

    const-string v5, "couldn\'t decode image"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method protected goBack()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    sget-boolean v0, Lcom/motorola/blur/setup/CaptchaActivity;->mSilentRegistrationRequired:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/CaptchaActivity;->sendBroadcastToService(Z)V

    .line 127
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->finish()V

    .line 128
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/CaptchaActivity;->setResult(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 108
    :goto_0
    return-void

    .line 97
    :pswitch_0
    sget-boolean v0, Lcom/motorola/blur/setup/CaptchaActivity;->mSilentRegistrationRequired:Z

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/CaptchaActivity;->sendBroadcastToService(Z)V

    .line 102
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->finish()V

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->setEditTextInResult()V

    goto :goto_1

    .line 105
    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->goBack()V

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x7f0b0003
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v7, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    const v5, 0x7f030010

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/CaptchaActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->hideConfigMenuItems()V

    .line 36
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 37
    .local v2, intent:Landroid/content/Intent;
    invoke-static {p0}, Lcom/motorola/blur/setup/SilentBlurUtility;->isSilentRegistrationRequired(Landroid/content/Context;)Z

    move-result v5

    sput-boolean v5, Lcom/motorola/blur/setup/CaptchaActivity;->mSilentRegistrationRequired:Z

    .line 38
    const-string v5, "android.intent.extra.shortcut.ICON_RESOURCE"

    invoke-virtual {v2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, background:I
    if-lez v0, :cond_0

    .line 40
    const v5, 0x7f0b0035

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/CaptchaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 41
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 44
    .end local v4           #view:Landroid/view/View;
    :cond_0
    const-string v5, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 45
    .local v1, imageBytes:[B
    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/CaptchaActivity;->setImage([B)Z

    move-result v5

    if-nez v5, :cond_2

    .line 46
    :cond_1
    const-string v5, "BlurCaptchaActivity"

    const-string v6, "No image url to captcha!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/CaptchaActivity;->setResult(I)V

    .line 48
    invoke-virtual {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->finish()V

    .line 50
    :cond_2
    invoke-direct {p0}, Lcom/motorola/blur/setup/CaptchaActivity;->setButtons()V

    .line 52
    sget-boolean v5, Lcom/motorola/blur/setup/CaptchaActivity;->mSilentRegistrationRequired:Z

    if-eqz v5, :cond_3

    .line 54
    const-string v5, "notification"

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/CaptchaActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 55
    .local v3, mNotificationManager:Landroid/app/NotificationManager;
    const/16 v5, 0x64

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    .line 57
    .end local v3           #mNotificationManager:Landroid/app/NotificationManager;
    :cond_3
    return-void
.end method
