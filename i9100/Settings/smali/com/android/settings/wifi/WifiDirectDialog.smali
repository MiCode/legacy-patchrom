.class Lcom/android/settings/wifi/WifiDirectDialog;
.super Landroid/app/AlertDialog;
.source "WifiDirectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final edit:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mContext:Landroid/content/Context;

.field private final mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mSsid:Landroid/widget/EditText;

.field mTempSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/WifiDirectPreference;ZLandroid/net/wifi/WifiConfiguration;)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "directPreference"
    .parameter "edit"
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 163
    new-instance v0, Lcom/android/settings/wifi/WifiDirectDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiDirectDialog$2;-><init>(Lcom/android/settings/wifi/WifiDirectDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 81
    iput-boolean p4, p0, Lcom/android/settings/wifi/WifiDirectDialog;->edit:Z

    .line 83
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 84
    iput-object p5, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 85
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiDirectDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiDirectDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->validate()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 156
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 157
    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 159
    return-void
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 197
    const/4 v3, 0x0

    .line 198
    .local v3, ssidSpaceCharCount:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->length()I

    move-result v2

    .line 199
    .local v2, ssidLength:I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    .local v1, ssid:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v4, :cond_1

    .line 203
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 204
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    .line 205
    add-int/lit8 v3, v3, 0x1

    .line 203
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    .end local v0           #i:I
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_3

    .line 211
    :cond_2
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 215
    :goto_1
    return-void

    .line 213
    :cond_3
    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->validate()V

    .line 228
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 224
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 2

    .prologue
    .line 90
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 92
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 94
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 218
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, -0x1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03006d

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    .line 100
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setView(Landroid/view/View;)V

    .line 101
    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/WifiDirectDialog;->setInverseBackgroundForced(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mContext:Landroid/content/Context;

    .line 106
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 107
    .local v4, resources:Landroid/content/res/Resources;
    const-string v6, "wifi"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 108
    .local v3, mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 110
    .local v2, mWifiInfo:Landroid/net/wifi/WifiInfo;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    if-nez v6, :cond_1

    .line 111
    const v6, 0x7f080183

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setTitle(I)V

    .line 113
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b013c

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    .line 115
    const v6, 0x7f0801ac

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x24

    invoke-virtual {v6, v7}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 118
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 119
    .local v5, str:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 125
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    new-instance v6, Lcom/android/settings/wifi/WifiDirectDialog$1;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiDirectDialog$1;-><init>(Lcom/android/settings/wifi/WifiDirectDialog;)V

    iput-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 148
    .end local v5           #str:Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v6, -0x2

    const v7, 0x7f0801ad

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 151
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 152
    return-void

    .line 136
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/wifi/WifiDirectDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mView:Landroid/view/View;

    const v7, 0x7f0b013a

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, group:Landroid/view/ViewGroup;
    const v6, 0x7f0801bc

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget-object v7, v7, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    invoke-direct {p0, v1, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-nez v6, :cond_2

    .line 142
    const v6, 0x7f0801aa

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v9, v6, v7}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 143
    :cond_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mDirectPreference:Lcom/android/settings/wifi/WifiDirectPreference;

    iget v6, v6, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-ne v6, v10, :cond_0

    .line 144
    const/4 v6, -0x3

    const v7, 0x7f08018e

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/wifi/WifiDirectDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/settings/wifi/WifiDirectDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 221
    return-void
.end method
