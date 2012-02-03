.class public Lcom/android/settings/wifi/WifiDirectWpsDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiDirectWpsDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field private DialogType:Ljava/lang/String;

.field private configMethod:Ljava/lang/String;

.field private final mFilter:Landroid/content/IntentFilter;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private macAddr:Ljava/lang/String;

.field private pinKey:Ljava/lang/String;

.field private pinView:Landroid/widget/EditText;

.field private ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mFilter:Landroid/content/IntentFilter;

    .line 70
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    new-instance v0, Lcom/android/settings/wifi/WifiDirectWpsDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog$1;-><init>(Lcom/android/settings/wifi/WifiDirectWpsDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectWpsDialog;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->handleEvent(Landroid/content/Intent;)V

    return-void
.end method

.method private buttonDialog()V
    .locals 3

    .prologue
    .line 157
    const-string v1, "WifiDirectWpsDialog"

    const-string v2, "buttonDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 159
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 160
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 161
    const v1, 0x7f08038b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 162
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 163
    const v1, 0x7f0801ad

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 164
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->setupAlert()V

    .line 166
    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 9

    .prologue
    const v8, 0x7f080178

    const-string v7, "\n"

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03006f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 128
    .local v3, view:Landroid/view/View;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->ssid:Ljava/lang/String;

    .line 129
    .local v1, name:Ljava/lang/String;
    const v4, 0x7f0b0019

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, messageView:Landroid/widget/TextView;
    const v4, 0x7f0b0161

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinView:Landroid/widget/EditText;

    .line 132
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinView:Landroid/widget/EditText;

    invoke-virtual {v4, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinView:Landroid/widget/EditText;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setVisibility(I)V

    .line 135
    const v4, 0x7f080186

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, str:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->isGcCreated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f08018c

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 141
    :cond_0
    const-string v4, "Keypad"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 142
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    return-object v3

    .line 144
    :cond_2
    const-string v4, "Display"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 146
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private diaplayDialog()V
    .locals 3

    .prologue
    .line 183
    const-string v1, "WifiDirectWpsDialog"

    const-string v2, "diaplayDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 185
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 186
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 187
    const v1, 0x7f08038b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 188
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 189
    const v1, 0x7f0801ad

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 190
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->setupAlert()V

    .line 192
    return-void
.end method

.method private dismissDialog()V
    .locals 2

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->dismiss()V

    .line 209
    const-string v0, "WifiDirectWpsDialog"

    const-string v1, "dismissDialog()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method private handleEvent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 265
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, action:Ljava/lang/String;
    return-void
.end method

.method private keypadDialog()V
    .locals 3

    .prologue
    .line 169
    const-string v1, "WifiDirectWpsDialog"

    const-string v2, "keypadDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 172
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f080187

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 173
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 174
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinView:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 175
    const v1, 0x7f08038b

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 176
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 177
    const v1, 0x7f0801ad

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 178
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->setupAlert()V

    .line 180
    return-void
.end method

.method private onCancel()V
    .locals 2

    .prologue
    .line 218
    const-string v0, "WifiDirectWpsDialog"

    const-string v1, "onCancel(), call disconnectWifiDirectPeer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 221
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->dismissDialog()V

    .line 222
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 269
    const-string v0, "WifiDirectWpsDialog"

    const-string v1, "afterTextChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 274
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v2, "WifiDirectWpsDialog"

    .line 234
    packed-switch p2, :pswitch_data_0

    .line 262
    :goto_0
    return-void

    .line 236
    :pswitch_0
    const-string v0, "WifiDirectWpsDialog"

    const-string v0, "DialogInterface.BUTTON_POSITIVE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-string v0, "Keypad"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinKey:Ljava/lang/String;

    .line 240
    :cond_0
    const-string v0, "android.net.wifidirect.PROVISION_DISCOVERY_REQ"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->DialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 241
    const-string v0, "WifiDirectWpsDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogInterface.BUTTON_POSITIVE, DialogType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->DialogType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->macAddr:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiManager;->sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 246
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 247
    const-class v1, Lcom/android/settings/wifi/WifiDirectProgressDialog;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 248
    const-string v1, "PIN_number"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    const-string v1, "dev_address"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 244
    :cond_1
    const-string v0, "WifiDirectWpsDialog"

    const-string v0, "Dialog Type is ambiguous."

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    :pswitch_1
    const-string v0, "WifiDirectWpsDialog"

    const-string v0, "DialogInterface.BUTTON_NEGATIVE"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->onCancel()V

    goto :goto_0

    .line 234
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const-string v6, "WifiDirectWpsDialog"

    .line 84
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 87
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 91
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mPowerManager:Landroid/os/PowerManager;

    .line 92
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mPowerManager:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "WifiDirectWpsDialog"

    invoke-virtual {v3, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 95
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    .line 96
    .local v2, isScreenOn:Z
    if-nez v2, :cond_0

    .line 97
    const-string v3, "WifiDirectWpsDialog"

    const-string v3, "Acquire walkelock"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 101
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 102
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->setSupplicantAutoScan(Z)Z

    .line 104
    const-string v3, "cfg_method"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    .line 105
    const-string v3, "dev_address"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->macAddr:Ljava/lang/String;

    .line 106
    const-string v3, "dev_ssid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->ssid:Ljava/lang/String;

    .line 107
    const-string v3, "DialogType"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->DialogType:Ljava/lang/String;

    .line 109
    const-string v3, "WifiDirectWpsDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cfg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->macAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ssid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-string v3, "Pushbutton"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->buttonDialog()V

    .line 122
    :goto_0
    return-void

    .line 113
    :cond_1
    const-string v3, "Keypad"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 114
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->keypadDialog()V

    goto :goto_0

    .line 115
    :cond_2
    const-string v3, "Display"

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->configMethod:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 116
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getDirectWpsPin()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->pinKey:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->diaplayDialog()V

    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const-string v1, "WifiDirectWpsDialog"

    .line 196
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 197
    const-string v0, "WifiDirectWpsDialog"

    const-string v0, "onDestroy()"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    const-string v0, "WifiDirectWpsDialog"

    const-string v0, "release WakeLock"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectWpsDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 205
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 225
    const-string v0, "WifiDirectWpsDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyDown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectWpsDialog;->onCancel()V

    .line 230
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 278
    return-void
.end method
