.class public Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "BlurCredentialsConfirmationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/motorola/blur/setup/BlurAccountCreationListener;
.implements Lcom/motorola/blur/setup/CaptchaResponseListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "BCCA"


# instance fields
.field mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;

.field mBundle:Landroid/os/Bundle;

.field private mCaptchaImage:Lcom/google/protobuf/ByteString;

.field private mCaptchaRequired:Z

.field private mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

.field private mCaptchaToken:Ljava/lang/String;

.field mConfirmButton:Landroid/widget/Button;

.field mEmail:Ljava/lang/String;

.field mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mEmail:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mName:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mConfirmButton:Landroid/widget/Button;

    .line 32
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    .line 34
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 35
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaToken:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    return-void
.end method

.method private getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "serverCaptchaInfo"

    .prologue
    .line 90
    if-eqz p1, :cond_1

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    .line 92
    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 94
    invoke-virtual {p1}, Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;->getToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaToken:Ljava/lang/String;

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaRequired"

    iget-boolean v2, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 100
    return-void

    .line 97
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    goto :goto_0
.end method


# virtual methods
.method public goBack()V
    .locals 2

    .prologue
    .line 128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 129
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 130
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->setResult(ILandroid/content/Intent;)V

    .line 131
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->finish()V

    .line 132
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v2, "android.intent.extra.TEXT"

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.TEXT"

    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "CaptchaToken"

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;

    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public onCaptchaRecieved(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;I)V
    .locals 0
    .parameter "serverCaptchaInfo"
    .parameter "errorCode"

    .prologue
    .line 103
    return-void
.end method

.method public onCaptchaResponseReceived(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 3
    .parameter "serverCaptchaInfo"

    .prologue
    const/4 v2, 0x1

    .line 171
    invoke-direct {p0, p1}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 172
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mConfirmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 173
    iget-object v0, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "captchaRequestState"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 174
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 151
    :goto_0
    return-void

    .line 137
    :sswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->goBack()V

    goto :goto_0

    .line 141
    :sswitch_1
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    if-eqz v1, :cond_0

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, captchaIntent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/CaptchaActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 144
    const-string v1, "android.intent.extra.shortcut.ICON"

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 145
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 147
    .end local v0           #captchaIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaRequired"

    iget-boolean v3, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 148
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;

    iget-object v2, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Lcom/motorola/blur/setup/BlurAccountCreator;->createOrLogin(Landroid/os/Bundle;)V

    goto :goto_0

    .line 135
    :sswitch_data_0
    .sparse-switch
        0x7f0b0000 -> :sswitch_0
        0x7f0b0008 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 41
    const v7, 0x7f030008

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->setContentView(I)V

    .line 42
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 45
    .local v5, intent:Landroid/content/Intent;
    if-eqz v5, :cond_0

    .line 46
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    .line 50
    :cond_0
    const v7, 0x7f0b002e

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 51
    .local v3, email:Landroid/widget/TextView;
    const v7, 0x7f0b002c

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 52
    .local v6, name:Landroid/widget/TextView;
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v7, :cond_1

    .line 53
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    :cond_1
    const v7, 0x7f0b0011

    invoke-virtual {p0, v7}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 60
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v7, 0x7f0c0004

    const/high16 v8, 0x7f0b

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 61
    .local v1, backButton:Landroid/widget/Button;
    const v7, 0x7f0c0005

    const v8, 0x7f0b0008

    invoke-static {p0, v7, v8}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 62
    .local v2, confirmButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 63
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 65
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iput-object v2, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mConfirmButton:Landroid/widget/Button;

    .line 71
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v8, "CaptchaRequired"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    .line 72
    iget-boolean v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    if-eqz v7, :cond_2

    .line 73
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v8, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    .line 74
    .local v4, image:[B
    if-eqz v4, :cond_3

    .line 75
    invoke-static {v4}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    .line 76
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v8, "CaptchaToken"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaToken:Ljava/lang/String;

    .line 86
    .end local v4           #image:[B
    :cond_2
    :goto_0
    new-instance v7, Lcom/motorola/blur/setup/BlurAccountCreator;

    invoke-direct {v7, p0, p0}, Lcom/motorola/blur/setup/BlurAccountCreator;-><init>(Landroid/content/Context;Lcom/motorola/blur/setup/BlurAccountCreationListener;)V

    iput-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mAccountCreator:Lcom/motorola/blur/setup/BlurAccountCreator;

    .line 87
    return-void

    .line 78
    .restart local v4       #image:[B
    :cond_3
    invoke-static {}, Lcom/motorola/blur/setup/CaptchaSingleton;->getCaptchaSingletonObject()Lcom/motorola/blur/setup/CaptchaSingleton;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    .line 79
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-virtual {v7, p0}, Lcom/motorola/blur/setup/CaptchaSingleton;->setCaptchaResponseListener(Lcom/motorola/blur/setup/CaptchaResponseListener;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 80
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaSingleton:Lcom/motorola/blur/setup/CaptchaSingleton;

    invoke-virtual {v7}, Lcom/motorola/blur/setup/CaptchaSingleton;->getServerCaptcha()Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    goto :goto_0

    .line 82
    :cond_4
    iget-object v7, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mConfirmButton:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onCreationFinished(ZLcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 4
    .parameter "success"
    .parameter "serverCaptchaInfo"

    .prologue
    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 111
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0, p2}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->getCaptchaImage(Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V

    .line 112
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaRequired"

    iget-boolean v3, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-boolean v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaRequired:Z

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.shortcut.ICON"

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaImage:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 115
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "CaptchaToken"

    iget-object v3, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mCaptchaToken:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 118
    if-eqz p1, :cond_1

    .line 119
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->setResult(ILandroid/content/Intent;)V

    .line 123
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->finish()V

    .line 124
    return-void

    .line 121
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/setup/BlurCredentialsConfirmationActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onLoginFinished(ZLjava/lang/String;Lcom/motorola/blur/service/provisioning/protocol/ProvisioningProtocol$ServerCaptchaInfo;)V
    .locals 0
    .parameter "success"
    .parameter "googleUser"
    .parameter "captchaInfo"

    .prologue
    .line 168
    return-void
.end method
