.class public Lcom/motorola/blur/setup/GoogleLoginOptionActivity;
.super Lcom/motorola/blur/setup/SetupActivity;
.source "GoogleLoginOptionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SetupGLOA"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/blur/setup/SetupActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/blur/setup/GoogleLoginOptionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startNextActivity()V

    return-void
.end method

.method private startNextActivity()V
    .locals 4

    .prologue
    .line 121
    invoke-virtual {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 122
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "Intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 124
    .local v1, newIntent:Landroid/content/Intent;
    const-string v2, "call_from_main"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startActivity(Landroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->finish()V

    .line 128
    .end local v1           #newIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 107
    packed-switch p1, :pswitch_data_0

    .line 116
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/motorola/blur/setup/SetupActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 117
    return-void

    .line 109
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startNextActivity()V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 103
    :goto_0
    return-void

    .line 66
    :sswitch_0
    invoke-direct {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->startNextActivity()V

    goto :goto_0

    .line 70
    :sswitch_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    .line 71
    .local v0, am:Landroid/accounts/AccountManager;
    const-string v1, "com.google"

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v8

    .line 80
    .local v8, amf:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    sget-object v1, Lcom/motorola/blur/util/concurrent/UIThreads;->executors:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;

    invoke-direct {v2, p0, v8}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity$1;-><init>(Lcom/motorola/blur/setup/GoogleLoginOptionActivity;Landroid/accounts/AccountManagerFuture;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 64
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b0001 -> :sswitch_1
        0x7f0b0009 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    .line 40
    const v4, 0x7f030024

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->setContentView(I)V

    .line 43
    invoke-virtual {p0}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "use_google_mail"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 45
    const v4, 0x7f0b00ba

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 46
    .local v3, tv:Landroid/widget/TextView;
    const v4, 0x7f0c0039

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_0
    const v4, 0x7f0b0011

    invoke-virtual {p0, v4}, Lcom/motorola/blur/setup/GoogleLoginOptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/motorola/android/widget/ActionBar;

    .line 52
    .local v0, ab:Lcom/motorola/android/widget/ActionBar;
    const v4, 0x7f0c003a

    const v5, 0x7f0b0009

    invoke-static {p0, v4, v5}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v2

    .line 53
    .local v2, skipButton:Landroid/widget/Button;
    const v4, 0x7f0c0003

    const v5, 0x7f0b0001

    invoke-static {p0, v4, v5}, Lcom/motorola/blur/setup/ActionBarButton;->create(Landroid/content/Context;II)Landroid/widget/Button;

    move-result-object v1

    .line 54
    .local v1, nextButton:Landroid/widget/Button;
    invoke-virtual {v0, v2}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/motorola/android/widget/ActionBar;->addButton(Landroid/widget/Button;)V

    .line 57
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-super {p0, p1}, Lcom/motorola/blur/setup/SetupActivity;->onCreate(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method
