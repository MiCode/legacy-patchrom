.class public Lcom/android/phone/DeleteFdnContactScreen;
.super Landroid/app/Activity;
.source "DeleteFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mIndex:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumber:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin2:Ljava/lang/String;

.field protected mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    .line 206
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DeleteFdnContactScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/phone/DeleteFdnContactScreen;->handleResult(Z)V

    return-void
.end method

.method private authenticatePin2()V
    .locals 2

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 130
    const-class v1, Lcom/android/phone/GetPin2Screen;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->startActivityForResult(Landroid/content/Intent;I)V

    .line 132
    return-void
.end method

.method private deleteContact()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .local v6, buf:Ljava/lang/StringBuilder;
    const-string v0, "adn_index="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const-string v0, " AND pin2=\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    const-string v0, "\'"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    const-string v0, "content://icc/fdn/from_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 123
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;-><init>(Lcom/android/phone/DeleteFdnContactScreen;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    .line 124
    iget-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mQueryHandler:Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;

    const/4 v1, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/DeleteFdnContactScreen$QueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 125
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 126
    return-void
.end method

.method private displayProgress(Z)V
    .locals 3
    .parameter "flag"

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    const/4 v2, -0x1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 138
    return-void

    .line 135
    :cond_0
    const/4 v2, -0x2

    goto :goto_0
.end method

.method private handleResult(Z)V
    .locals 5
    .parameter "success"

    .prologue
    const-wide/16 v3, 0x7d0

    .line 150
    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0147

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/DeleteFdnContactScreen$1;

    invoke-direct {v2, p0}, Lcom/android/phone/DeleteFdnContactScreen$1;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 198
    :goto_0
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/DeleteFdnContactScreen$4;

    invoke-direct {v2, p0}, Lcom/android/phone/DeleteFdnContactScreen$4;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 164
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    .local v0, err_builder:Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 167
    const v1, 0x7f0d029a

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 168
    const v1, 0x7f0d016b

    invoke-virtual {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 169
    const v1, 0x7f0d0030

    new-instance v2, Lcom/android/phone/DeleteFdnContactScreen$2;

    invoke-direct {v2, p0}, Lcom/android/phone/DeleteFdnContactScreen$2;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 177
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 178
    new-instance v1, Lcom/android/phone/DeleteFdnContactScreen$3;

    invoke-direct {v1, p0}, Lcom/android/phone/DeleteFdnContactScreen$3;-><init>(Lcom/android/phone/DeleteFdnContactScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 189
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 194
    .end local v0           #err_builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0148

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private resolveIntent()V
    .locals 2

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mName:Ljava/lang/String;

    .line 104
    const-string v1, "number"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mNumber:Ljava/lang/String;

    .line 105
    const-string v1, "adn_index"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mIndex:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private showStatus(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "statusMsg"

    .prologue
    .line 143
    if-eqz p1, :cond_0

    .line 144
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 82
    packed-switch p1, :pswitch_data_0

    .line 98
    :goto_0
    return-void

    .line 84
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    move-object v0, v1

    .line 85
    .local v0, extras:Landroid/os/Bundle;
    :goto_1
    if-eqz v0, :cond_1

    .line 86
    const-string v1, "pin2"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPin2:Ljava/lang/String;

    .line 87
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V

    .line 89
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->deleteContact()V

    goto :goto_0

    .line 84
    .end local v0           #extras:Landroid/os/Bundle;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_1

    .line 93
    .restart local v0       #extras:Landroid/os/Bundle;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/phone/DeleteFdnContactScreen;->displayProgress(Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->finish()V

    goto :goto_0

    .line 82
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->resolveIntent()V

    .line 70
    invoke-direct {p0}, Lcom/android/phone/DeleteFdnContactScreen;->authenticatePin2()V

    .line 72
    invoke-virtual {p0}, Lcom/android/phone/DeleteFdnContactScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 73
    const v0, 0x7f03000f

    invoke-virtual {p0, v0}, Lcom/android/phone/DeleteFdnContactScreen;->setContentView(I)V

    .line 74
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DeleteFdnContactScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 75
    return-void
.end method
