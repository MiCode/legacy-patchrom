.class public Lcom/broadcom/bt/app/settings/ViewDidRecord;
.super Lcom/android/internal/app/AlertActivity;
.source "ViewDidRecord.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object v2, p0, Lcom/broadcom/bt/app/settings/ViewDidRecord;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 35
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108009b

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 37
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ViewDidRecord;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 38
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 40
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ViewDidRecord;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030022

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 41
    iget-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v4, 0x7f0b0033

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 42
    .local v0, contentView:Landroid/widget/TextView;
    const-string v3, "content"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    const v3, 0x7f0806ea

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/ViewDidRecord;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 44
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/ViewDidRecord;->setupAlert()V

    .line 45
    return-void
.end method
