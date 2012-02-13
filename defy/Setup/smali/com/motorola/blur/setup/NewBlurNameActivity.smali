.class public Lcom/motorola/blur/setup/NewBlurNameActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "NewBlurNameActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final BLUR_ACCOUNT_ERROR:I = 0x2

.field private static final TAG:Ljava/lang/String; = "NewBlurNameActivity"


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mErrorString:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNextButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 24
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mErrorString:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mNextButton:Landroid/widget/Button;

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/NewBlurNameActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method private final getEditValue(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, value:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/motorola/blur/setup/NewBlurNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 129
    .local v0, edit:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_0
    return-object v1
.end method

.method private showValidationError(Ljava/lang/String;)V
    .locals 3
    .parameter "error"

    .prologue
    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
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

    .line 145
    :cond_0
    return-void
.end method

.method private validateName()Z
    .locals 7

    .prologue
    const v3, 0x7f0b0031

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mErrorString:Ljava/lang/String;

    .line 114
    invoke-direct {p0, v3}, Lcom/motorola/blur/setup/NewBlurNameActivity;->getEditValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    .line 115
    new-instance v0, Lcom/motorola/blur/setup/ValidatedParamValue;

    new-array v2, v6, [Landroid/widget/EditText;

    invoke-virtual {p0, v3}, Lcom/motorola/blur/setup/NewBlurNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    aput-object v1, v2, v5

    sget-object v1, Lcom/motorola/blur/setup/ValidationParams;->NAME_VALIDATOR:Lcom/motorola/blur/setup/ValidationParams;

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    const v4, 0x7f0c007a

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/motorola/blur/setup/ValidatedParamValue;-><init>([Landroid/widget/EditText;Lcom/motorola/blur/setup/ValidationParams;Ljava/lang/String;I)V

    .line 119
    .local v0, validatedName:Lcom/motorola/blur/setup/ValidatedParamValue;
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->getValidValue()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/blur/setup/ValidatedParamValue;->getError(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mErrorString:Ljava/lang/String;

    .line 122
    :cond_0
    invoke-virtual {v0}, Lcom/motorola/blur/setup/ValidatedParamValue;->clearValue()V

    .line 123
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mErrorString:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v6

    :goto_0
    return v1

    :cond_1
    move v1, v5

    goto :goto_0
.end method


# virtual methods
.method public finish(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 180
    const-string v0, "call_from_main"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 181
    const/high16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->startActivity(Landroid/content/Intent;)V

    .line 182
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->setResult(I)V

    .line 183
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->finish()V

    .line 184
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, "username"

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 173
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 174
    return-void

    .line 159
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 160
    packed-switch p2, :pswitch_data_1

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "username"

    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "username"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    const-string v1, "existing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 166
    const-class v1, Lcom/motorola/blur/setup/ServiceSetupIntroActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->finish(Landroid/content/Intent;)V

    goto :goto_0

    .line 156
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch

    .line 160
    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 110
    :goto_0
    return-void

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->goBack()V

    goto :goto_0

    .line 96
    :pswitch_1
    invoke-direct {p0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->validateName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    const-string v2, "data1"

    iget-object v3, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 102
    .local v0, confirmationIntent:Landroid/content/Intent;
    const-class v1, Lcom/motorola/blur/setup/NewBlurEmailActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 103
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 104
    const/16 v1, 0x12

    invoke-virtual {p0, v0, v1}, Lcom/motorola/blur/setup/NewBlurNameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 106
    .end local v0           #confirmationIntent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mErrorString:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/motorola/blur/setup/NewBlurNameActivity;->showValidationError(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v5, 0x7f03000a

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurNameActivity;->setContentView(I)V

    .line 33
    if-eqz p1, :cond_0

    .line 34
    iput-object p1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 35
    const-string v5, "data1"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    .line 37
    :cond_0
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    if-nez v5, :cond_1

    .line 38
    invoke-virtual {p0}, Lcom/motorola/blur/setup/NewBlurNameActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 39
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_1

    .line 40
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    iput-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 43
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    if-nez v5, :cond_2

    .line 44
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    iput-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 46
    :cond_2
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    const-string v6, "existing"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    const v5, 0x7f0b0011

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 51
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v5, 0x7f0c0004

    const/high16 v6, 0x7f0b

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 52
    .local v1, backButton:Landroid/widget/Button;
    const v5, 0x7f0c0003

    const v6, 0x7f0b0001

    invoke-static {p0, v5, v6}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v3

    .line 53
    .local v3, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 54
    invoke-virtual {v0, v3}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 56
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    iput-object v3, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mNextButton:Landroid/widget/Button;

    .line 61
    const v5, 0x7f0b0031

    invoke-virtual {p0, v5}, Lcom/motorola/blur/setup/NewBlurNameActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 62
    .local v4, textView:Landroid/widget/TextView;
    new-instance v5, Lcom/motorola/blur/setup/NewBlurNameActivity$1;

    invoke-direct {v5, p0}, Lcom/motorola/blur/setup/NewBlurNameActivity$1;-><init>(Lcom/motorola/blur/setup/NewBlurNameActivity;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    iget-object v5, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    const-string v1, "data1"

    iget-object v2, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object p1, p0, Lcom/motorola/blur/setup/NewBlurNameActivity;->mBundle:Landroid/os/Bundle;

    .line 151
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 152
    return-void
.end method
