.class public Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothEnableActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 81
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030017

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 82
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b0033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    .local v0, contentView:Landroid/widget/TextView;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0806ee

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f0806ef

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 90
    packed-switch p2, :pswitch_data_0

    .line 106
    :goto_0
    return-void

    .line 92
    :pswitch_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 95
    const v0, 0x7f0806f7

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/broadcom/bt/app/settings/BluetoothEnablingActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 99
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    :pswitch_1
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->finish()V

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->finish()V

    .line 117
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 70
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x1080027

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 71
    const v1, 0x7f0806ed

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 72
    invoke-direct {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 73
    const v1, 0x7f0806f1

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 74
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 75
    const v1, 0x7f0806f0

    invoke-virtual {p0, v1}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 76
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    invoke-virtual {p0}, Lcom/broadcom/bt/app/settings/BluetoothEnableActivity;->setupAlert()V

    .line 78
    return-void
.end method
