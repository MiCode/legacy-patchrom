.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mEnableOnly:Z

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private parseIntent()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 128
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iput-boolean v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 141
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 142
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    if-nez v1, :cond_2

    .line 143
    const-string v1, "RequestPermissionHelperActivity"

    const-string v2, "Error: there\'s a problem starting bluetooth"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    move v1, v4

    .line 148
    :goto_1
    return v1

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 132
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 134
    const-string v1, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v2, 0x78

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    move v1, v4

    .line 138
    goto :goto_1

    :cond_2
    move v1, v3

    .line 148
    goto :goto_1
.end method


# virtual methods
.method createDialog()V
    .locals 7

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 66
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x108009b

    iput v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 67
    const v3, 0x7f080067

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030009

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 70
    .local v2, view:Landroid/view/View;
    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 71
    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 73
    .local v1, tv:Landroid/widget/TextView;
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v3, :cond_0

    .line 74
    const v3, 0x7f080068

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :goto_0
    const v3, 0x7f080002

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 84
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 85
    const v3, 0x7f080003

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 89
    return-void

    .line 76
    :cond_0
    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v3, :cond_1

    .line 77
    const v3, 0x7f08006c

    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 79
    :cond_1
    const v3, 0x7f08006b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 154
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onBackPressed()V

    .line 155
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 93
    packed-switch p2, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 95
    :pswitch_0
    const/4 v0, 0x0

    .line 99
    .local v0, btState:I
    const/16 v1, 0x1e

    .line 101
    .local v1, retryCount:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothState()I

    move-result v0

    .line 102
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 108
    :cond_1
    :goto_1
    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 111
    :cond_2
    const/16 v2, -0x3e8

    .line 123
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .local v2, returnCode:I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_0

    .line 113
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :cond_3
    const/4 v2, 0x0

    .line 115
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 118
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .end local v2           #returnCode:I
    :pswitch_1
    const/4 v2, 0x0

    .line 119
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 104
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 93
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    goto :goto_0
.end method
