.class public Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;
.super Landroid/app/Activity;
.source "OnlineAlbumEmailAddr.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "OnlineAlbumEmailAddr"


# instance fields
.field emailAddr:Ljava/lang/String;

.field emailEntryField:Landroid/widget/AutoCompleteTextView;

.field private mAddressAdapter:Lcom/motorola/CameraF/WebUpload/Email/EmailAddressAdapter;

.field saveBtn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 75
    sget-boolean v1, Lcom/motorola/CameraF/CameraGlobalType;->cameraDebug:Z

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "OnlineAlbumEmailAddr"

    const-string v2, "onClick() - ENTER"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    .line 85
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->setResult(ILandroid/content/Intent;)V

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->finish()V

    .line 95
    :cond_1
    return-void

    .line 88
    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, newIntent:Landroid/content/Intent;
    const-string v1, "EMAIL_ADDRESS"

    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->setResult(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x3

    const-string v4, "EXISTING_EMAIL"

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 39
    .local v0, lpWindow:Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 40
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 41
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 43
    const v1, 0x7f0b00a0

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->setTitle(I)V

    .line 44
    invoke-virtual {p0, v2}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->requestWindowFeature(I)Z

    .line 46
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->setContentView(I)V

    .line 49
    const v1, 0x7f02002a

    invoke-virtual {p0, v2, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->setFeatureDrawableResource(II)V

    .line 54
    new-instance v1, Lcom/motorola/CameraF/WebUpload/Email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/motorola/CameraF/WebUpload/Email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->mAddressAdapter:Lcom/motorola/CameraF/WebUpload/Email/EmailAddressAdapter;

    .line 57
    const v1, 0x7f0e001c

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    .line 58
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->saveBtn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v1, 0x7f0e001b

    invoke-virtual {p0, v1}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/AutoCompleteTextView;

    iput-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    .line 62
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    iget-object v2, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->mAddressAdapter:Lcom/motorola/CameraF/WebUpload/Email/EmailAddressAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXISTING_EMAIL"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->emailEntryField:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/motorola/CameraF/OnlineAlbum/OnlineAlbumEmailAddr;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "EXISTING_EMAIL"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method
