.class public Lcom/android/settings/bluetooth/BluetoothPermissionActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mOkButton:Landroid/widget/Button;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mView:Landroid/view/View;

.field private messageView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 57
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPermissionActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismissDialog()V

    return-void
.end method

.method private createDisplayText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 104
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 105
    .local v1, mRemoteName:Ljava/lang/String;
    :goto_0
    if-nez v1, :cond_0

    const v2, 0x7f080376

    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 106
    :cond_0
    const v2, 0x7f0806bf

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, mMessage1:Ljava/lang/String;
    return-object v0

    .line 104
    .end local v0           #mMessage1:Ljava/lang/String;
    .end local v1           #mRemoteName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    move-object v1, v2

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 3

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030007

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    .line 113
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    const v1, 0x7f0b0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->messageView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createDisplayText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mView:Landroid/view/View;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->dismiss()V

    .line 70
    return-void
.end method

.method private onNegative()V
    .locals 3

    .prologue
    .line 126
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 130
    return-void
.end method

.method private onPositive()V
    .locals 3

    .prologue
    .line 119
    const-string v0, "android.bluetooth.device.action.CONNECTION_ACCESS_REPLY"

    const-string v1, "android.bluetooth.device.extra.CONNECTION_ACCESS_RESULT"

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    .line 123
    return-void
.end method

.method private sendIntentToReceiver(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .parameter "intentName"
    .parameter "extraName"
    .parameter "extraValue"

    .prologue
    .line 134
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 136
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    :cond_0
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method private showConnectionDialog()V
    .locals 3

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 92
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x108009b

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 93
    const v1, 0x7f080067

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 94
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 95
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 96
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 97
    const v1, 0x7f0806d4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 98
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 99
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mOkButton:Landroid/widget/Button;

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->setupAlert()V

    .line 101
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 143
    packed-switch p2, :pswitch_data_0

    .line 154
    :goto_0
    return-void

    .line 145
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onPositive()V

    goto :goto_0

    .line 149
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->onNegative()V

    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 78
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.bluetooth.device.action.CONNECTION_ACCESS_REQUEST"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 81
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->showConnectionDialog()V

    .line 82
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.bluetooth.device.action.CONNECTION_ACCESS_CANCEL"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v2, "BluetoothPermissionActivity"

    const-string v3, "Error: this activity may be started only with intent - ACTION_CONNECTION_ACCESS_REQUEST "

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPermissionActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 160
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method
