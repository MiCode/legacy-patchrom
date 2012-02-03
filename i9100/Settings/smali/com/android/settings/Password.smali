.class public Lcom/android/settings/Password;
.super Landroid/app/Activity;
.source "Password.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private mDigits:Landroid/widget/TextView;

.field private mHeadrText:Landroid/widget/TextView;

.field private mPassword:Ljava/lang/String;

.field private mSubject:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private keyPressed(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 186
    const/16 v1, 0x43

    if-eq p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 189
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0
.end method

.method private match(Ljava/lang/String;)Z
    .locals 4
    .parameter "aPassword"

    .prologue
    const v1, 0x7f080692

    const/4 v2, 0x0

    const-string v3, "****"

    .line 194
    invoke-direct {p0, p1}, Lcom/android/settings/Password;->reasonable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 196
    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "****"

    iget-object v0, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0805af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    move v0, v2

    .line 215
    :goto_1
    return v0

    .line 200
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string v0, "****"

    iget-object v0, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 211
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    move v0, v2

    .line 212
    goto :goto_1

    :cond_4
    move v0, v2

    .line 215
    goto :goto_1
.end method

.method private onPasswordConfirm()V
    .locals 3

    .prologue
    .line 236
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    .local v1, pwd:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/settings/Password;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 239
    .local v0, intent:Landroid/content/Intent;
    const-string v2, ".password"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/Password;->setResult(ILandroid/content/Intent;)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    .line 243
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private reasonable(Ljava/lang/String;)Z
    .locals 5
    .parameter "aPassword"

    .prologue
    const v3, 0x7f080692

    const/4 v2, 0x0

    const-string v4, "****"

    .line 247
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    const-string v0, "****"

    iget-object v0, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080693

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    :goto_0
    move v0, v2

    .line 262
    :goto_1
    return v0

    .line 251
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_0

    .line 253
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_4

    .line 255
    :cond_2
    const-string v0, "****"

    iget-object v0, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080694

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    :goto_2
    move v0, v2

    .line 260
    goto :goto_1

    .line 258
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_4
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private setupKeypad()V
    .locals 2

    .prologue
    .line 103
    const v1, 0x7f0b004d

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 104
    .local v0, view:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 106
    const v1, 0x7f0b004e

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v1, 0x7f0b004f

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v1, 0x7f0b0050

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v1, 0x7f0b0051

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v1, 0x7f0b0052

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v1, 0x7f0b0053

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v1, 0x7f0b0054

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v1, 0x7f0b0055

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v1, 0x7f0b0056

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v1, 0x7f0b0058

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v1, 0x7f0b004b

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    const v1, 0x7f0b0057

    invoke-virtual {p0, v1}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 118
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    return-void
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, alertDialog:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/Password;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080695

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/Password$1;

    invoke-direct {v2, p0}, Lcom/android/settings/Password$1;-><init>(Lcom/android/settings/Password;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 231
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 232
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "input"

    .prologue
    .line 62
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 53
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 180
    :goto_0
    :pswitch_0
    return-void

    .line 126
    :pswitch_1
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 130
    :pswitch_2
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 134
    :pswitch_3
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 138
    :pswitch_4
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 142
    :pswitch_5
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 146
    :pswitch_6
    const/16 v0, 0xd

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 150
    :pswitch_7
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 154
    :pswitch_8
    const/16 v0, 0xf

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 158
    :pswitch_9
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 162
    :pswitch_a
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 166
    :pswitch_b
    const/16 v0, 0x43

    invoke-direct {p0, v0}, Lcom/android/settings/Password;->keyPressed(I)V

    goto :goto_0

    .line 171
    :pswitch_c
    invoke-direct {p0}, Lcom/android/settings/Password;->onPasswordConfirm()V

    goto :goto_0

    .line 176
    :pswitch_d
    invoke-virtual {p0}, Lcom/android/settings/Password;->finish()V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b004b
        :pswitch_b
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_c
        :pswitch_a
        :pswitch_d
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    const v2, 0x7f030021

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/Password;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 73
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 74
    const-string v2, ".title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mTitle:Ljava/lang/String;

    .line 75
    const-string v2, ".subject"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    .line 76
    const-string v2, ".password"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/Password;->mPassword:Ljava/lang/String;

    .line 78
    :cond_0
    const v2, 0x7f0b0028

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    .line 79
    iget-object v2, p0, Lcom/android/settings/Password;->mHeadrText:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/Password;->mSubject:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    const v2, 0x7f0b004a

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    .line 87
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 88
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/Password;->mDigits:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 92
    const v2, 0x7f0b004d

    invoke-virtual {p0, v2}, Lcom/android/settings/Password;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 93
    .local v1, view:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 94
    invoke-direct {p0}, Lcom/android/settings/Password;->setupKeypad()V

    .line 100
    :cond_1
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 269
    const/4 v0, 0x0

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "input"
    .parameter "start"
    .parameter "before"
    .parameter "changeCount"

    .prologue
    .line 59
    return-void
.end method
