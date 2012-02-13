.class public Lcom/motorola/blur/setup/NewBlurEmailActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "NewBlurEmailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "NewBlurEmailActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mEmail:Ljava/lang/String;

.field private mErrorString:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    .line 23
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mErrorString:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mNextButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/NewBlurEmailActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method private final getEditValue(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 149
    const/4 v1, 0x0

    .line 150
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 151
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 152
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    :cond_0
    return-object v1
.end method

.method private goBack(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->putEmail()V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 194
    invoke-virtual {p0, p1, v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->finish()V

    .line 199
    return-void
.end method

.method private putEmail()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "username"

    const v2, 0x7f0b0030

    invoke-direct {p0, v2}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method private showValidationError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0091

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 140
    :cond_0
    return-void
.end method

.method private validateEmail()Z
    .locals 7

    .prologue
    const v3, 0x7f0b0030

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 117
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mErrorString:Ljava/lang/String;

    .line 118
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/motorola/blur/setup/ValidatedParamValue;

    new-array v2, v6, [Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v5

    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->EMAIL_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    const v4, 0x7f0c007b

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 123
    .local v0, validatedEmail:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mErrorString:Ljava/lang/String;

    .line 126
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    .line 127
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mErrorString:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v6

    :goto_0
    return v1

    :cond_1
    move v1, v5

    goto :goto_0
.end method


# virtual methods
.method protected goBack()V
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->putEmail()V

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->goBack(I)V

    .line 146
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 166
    packed-switch p1, :pswitch_data_0

    .line 187
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 188
    return-void

    .line 169
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    .line 170
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 179
    :pswitch_2
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->goBack(I)V

    goto :goto_0

    .line 172
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->goBack(I)V

    goto :goto_0

    .line 166
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    .line 170
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 114
    :goto_0
    return-void

    .line 98
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->goBack()V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->validateEmail()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 104
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "username"

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, confirmationIntent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/NewBlurPasswordActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 108
    const/16 v1, 0x13

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 110
    .end local v0           #confirmationIntent:Landroid/content/Intent;
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mErrorString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->showValidationError(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "NewBlurEmailActivity"

    .line 29
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v5, 0x7f030009

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->setContentView(I)V

    .line 32
    if-eqz p1, :cond_0

    .line 33
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    .line 39
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 41
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    .line 43
    const-string v5, "NewBlurEmailActivity"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "Got bundle from intent"

    aput-object v6, v5, v7

    invoke-static {v9, v5}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    .line 50
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    const-string v6, "username"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    .line 56
    :goto_0
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 58
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c0004

    const/high16 v6, 0x7f0b

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 59
    .local v1, backButton:Landroid/widget/Button;
    const v5, 0x7f0c0003

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 60
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 61
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 63
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iput-object v3, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mNextButton:Landroid/widget/Button;

    .line 68
    const v5, 0x7f0b0030

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 69
    .local v4, textView:Landroid/widget/TextView;
    new-instance v5, Lcom/motorola/blur/setup/NewBlurEmailActivity$1;

    invoke-direct {v5, p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity$1;-><init>(Lcom/motorola/blur/setup/NewBlurEmailActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 84
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mEmail:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    return-void

    .line 52
    .end local v0           #ab:Lcom/motorola/android/widget/ActionBar;
    .end local v1           #backButton:Landroid/widget/Button;
    .end local v3           #nextButton:Landroid/widget/Button;
    .end local v4           #textView:Landroid/widget/TextView;
    :cond_2
    const-string v5, "NewBlurEmailActivity"

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "The bundle is LOST!!! We are LOST!!!"

    aput-object v6, v5, v7

    invoke-static {v9, v5}, Lcom/motorola/blur/util/Logger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurEmailActivity;->putEmail()V

    .line 160
    iget-object p1, p0, Lcom/motorola/blur/setup/NewBlurEmailActivity;->mBundle:Landroid/os/Bundle;

    .line 161
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 162
    return-void
.end method
