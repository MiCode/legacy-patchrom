.class public Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;
.super Landroid/app/Activity;
.source "OnlineAlbumEmailAddr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "OnlineAlbumEmailAddr"


# instance fields
.field emailAddr:Ljava/lang/String;

.field emailEntryField:Landroid/widget/AutoCompleteTextView;

.field private mAddressAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;

.field saveBtn:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "data1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 91
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    .line 96
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 97
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->setResult(ILandroid/content/Intent;)V

    .line 104
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->finish()V

    .line 106
    :cond_0
    return-void

    .line 99
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "EMAIL_ADDRESS"

    iget-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 166
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 167
    iget-object v0, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    .line 168
    .local v0, autoCompleteTextView:Landroid/widget/AutoCompleteTextView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 171
    new-instance v1, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;

    invoke-direct {v1, p0, v0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$1;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->post(Ljava/lang/Runnable;)Z

    .line 177
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    const-string v4, "EXISTING_EMAIL"

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 55
    .local v0, lpWindow:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 56
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 57
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    const v1, 0x7f0c016b

    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->setTitle(I)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->requestWindowFeature(I)Z

    .line 62
    const v1, 0x7f03002f

    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->setContentView(I)V

    .line 65
    const v1, 0x108009b

    invoke-virtual {p0, v2, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->setFeatureDrawableResource(II)V

    .line 70
    new-instance v1, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;

    invoke-direct {v1, p0, p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;-><init>(Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->mAddressAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;

    .line 73
    const v1, 0x7f0b00d8

    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    .line 74
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v1, 0x7f0b00d7

    invoke-virtual {p0, v1}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    .line 78
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->mAddressAdapter:Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr$EmailAddressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 82
    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXISTING_EMAIL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 84
    iget-object v1, p0, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/motorola/blur/quickupload/OnlineAlbumEmailAddr;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXISTING_EMAIL"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    :cond_0
    return-void
.end method
