.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final edit:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mDwepPhase2:Landroid/widget/Spinner;

.field private mEapAnonymous:Landroid/widget/TextView;

.field private mEapCaCert:Landroid/widget/Spinner;

.field private mEapDwepAnonymous:Landroid/widget/TextView;

.field private mEapDwepCaCert:Landroid/widget/Spinner;

.field private mEapDwepIdentity:Landroid/widget/TextView;

.field private mEapDwepMethod:Landroid/widget/Spinner;

.field private mEapDwepUserCert:Landroid/widget/Spinner;

.field private mEapIdentity:Landroid/widget/TextView;

.field private mEapMethod:Landroid/widget/Spinner;

.field private mEapUserCert:Landroid/widget/Spinner;

.field private mHasWAPIASCert:Z

.field private mHasWAPIUserCert:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mPassword:Landroid/widget/EditText;

.field private mPasswordView:Landroid/view/ViewGroup;

.field private mPhase2:Landroid/widget/Spinner;

.field private mSecurity:I

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSsid:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mWAPIASCertSpinner:Landroid/widget/Spinner;

.field private mWAPIPSKTypeSpinner:Landroid/widget/Spinner;

.field private mWAPISelectASCertText:Landroid/widget/TextView;

.field private mWAPISelectUserCertText:Landroid/widget/TextView;

.field private mWAPIUserCertSpinner:Landroid/widget/Spinner;

.field private mWapiCertView:Landroid/view/ViewGroup;

.field private mWapiPskView:Landroid/view/ViewGroup;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field final retry:Z

.field private wapiCertIndex:I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 1
    .parameter "context"
    .parameter "listener"
    .parameter "wifiManager"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v0, 0x0

    .line 131
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 132
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 136
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 137
    iput-object p4, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 138
    if-nez p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 139
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 140
    return-void

    .line 138
    :cond_0
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiManager;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "wifiManager"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 147
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 148
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    .line 149
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    .line 150
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 151
    iput-object p4, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 152
    const-string v0, "WifiDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiDialog: mAccessPoint \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    if-nez p4, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 154
    return-void

    .line 153
    :cond_0
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03006a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 412
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 413
    const v1, 0x7f0b0081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 415
    return-void
.end method

.method private getWAPIASCertFromSpinner()Ljava/lang/String;
    .locals 2

    .prologue
    .line 529
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 530
    .local v0, position:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getWAPIASCertificateName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getWAPIPskKeyTypeFromSpinner()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIPSKTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method private getWAPIUserCertFromSpinner()Ljava/lang/String;
    .locals 2

    .prologue
    .line 534
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 535
    .local v0, position:I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->getWAPIUserCertificateName(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 762
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 763
    .local v2, certs:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 764
    .local v3, context:Landroid/content/Context;
    const v5, 0x7f0801a4

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, unspecified:Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-nez v5, :cond_1

    .line 767
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    aput-object v4, v2, v6

    .line 775
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v5, 0x1090008

    invoke-direct {v0, v3, v5, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 777
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v5, 0x1090009

    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 778
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 779
    return-void

    .line 769
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v5, v2

    add-int/lit8 v5, v5, 0x1

    new-array v1, v5, [Ljava/lang/String;

    .line 770
    .local v1, array:[Ljava/lang/String;
    aput-object v4, v1, v6

    .line 771
    array-length v5, v2

    invoke-static {v2, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 772
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 9
    .parameter "config"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    const/4 v5, 0x3

    new-array v4, v5, [Ljava/lang/String;

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x2

    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 121
    .local v4, values:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 122
    .local v3, value:Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v5, "keystore://"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v8

    .line 126
    .end local v3           #value:Ljava/lang/String;
    :goto_1
    return v5

    .line 121
    .restart local v3       #value:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #value:Ljava/lang/String;
    :cond_1
    move v5, v7

    .line 126
    goto :goto_1
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 783
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 786
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 4
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 789
    if-eqz p2, :cond_0

    .line 790
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 791
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 792
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 793
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 798
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 791
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setWAPIASCertSpinnerAdapter()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 691
    .local v2, context:Landroid/content/Context;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumberOfWAPIASCertificate()I

    move-result v4

    .line 693
    .local v4, iWAPICertCount:I
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    .line 694
    const/4 v5, 0x0

    .line 695
    .local v5, wapiCertNames:[Ljava/lang/String;
    if-lez v4, :cond_0

    .line 697
    new-array v5, v4, [Ljava/lang/String;

    .line 698
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 700
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->getWAPIASCertificateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v3

    .line 701
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIASCert:Z

    .line 698
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 704
    .end local v3           #i:I
    :cond_0
    new-array v5, v8, [Ljava/lang/String;

    .line 705
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v9

    .line 708
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v2, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 711
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 712
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 714
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 715
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 716
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_2

    .line 717
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiDialog;->setWAPICertificateSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 721
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-void
.end method

.method private setWAPICertificateSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 5
    .parameter "spinner"
    .parameter "value"

    .prologue
    const-string v4, "WifiDialog"

    .line 801
    if-eqz p2, :cond_0

    .line 802
    const-string v2, "WifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWAPICertificateSelection() value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 803
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 804
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .end local p0
    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 805
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 806
    const-string v2, "WifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWAPICertificateSelection() setSelection i="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 812
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 804
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setWAPIUserCertSpinnerAdapter()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 728
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getNumberOfWAPIUserCertificate()I

    move-result v4

    .line 729
    .local v4, iWAPICertCount:I
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 731
    .local v2, context:Landroid/content/Context;
    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    .line 732
    const/4 v5, 0x0

    .line 733
    .local v5, wapiCertNames:[Ljava/lang/String;
    if-lez v4, :cond_0

    .line 735
    new-array v5, v4, [Ljava/lang/String;

    .line 736
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 738
    new-instance v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7, v3}, Landroid/net/wifi/WifiManager;->getWAPIUserCertificateName(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v3

    .line 739
    iput-boolean v8, p0, Lcom/android/settings/wifi/WifiDialog;->mHasWAPIUserCert:Z

    .line 736
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 742
    .end local v3           #i:I
    :cond_0
    new-array v5, v8, [Ljava/lang/String;

    .line 743
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0801b3

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v9

    .line 746
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v0, v2, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 749
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v6, 0x1090009

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 750
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 752
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v6, v6, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_2

    .line 753
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 754
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v1, :cond_2

    .line 755
    iget-object v6, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    iget-object v7, v1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiDialog;->setWAPICertificateSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 759
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_2
    return-void
.end method

.method private showSecurityFields()V
    .locals 9

    .prologue
    const v6, 0x7f0b0148

    const/4 v5, 0x0

    const/16 v4, 0x8

    const-string v8, "USRPKEY_"

    const-string v7, "CACERT_"

    .line 564
    const-string v1, "WifiDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Selected security: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 568
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-nez v1, :cond_1

    .line 569
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 571
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_2

    .line 576
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b013e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 577
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 580
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    if-nez v1, :cond_3

    .line 581
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b013f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    .line 582
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 583
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0140

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 586
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    const v2, 0x7f0801a3

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setHint(I)V

    .line 590
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    .line 592
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v1, :cond_4

    .line 593
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v7}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 594
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v8}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 596
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 597
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 598
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepMethod:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mDwepPhase2:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 600
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v7, v2}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v2}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepIdentity:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapDwepAnonymous:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_4
    :goto_1
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    .line 638
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 609
    :cond_5
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 610
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 614
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_4

    .line 615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 616
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    const v2, 0x7f0b0159

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    .line 617
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 618
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    const v2, 0x7f0b015b

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    .line 619
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 620
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    const v2, 0x7f0b0158

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPISelectASCertText:Landroid/widget/TextView;

    .line 621
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    const v2, 0x7f0b015a

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPISelectUserCertText:Landroid/widget/TextView;

    .line 622
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIASCertSpinnerAdapter()V

    .line 623
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->setWAPIUserCertSpinnerAdapter()V

    goto :goto_1

    .line 625
    :cond_6
    iget v1, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 627
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 628
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 629
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 631
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIPSKTypeSpinner:Landroid/widget/Spinner;

    if-nez v1, :cond_4

    .line 632
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    const v2, 0x7f0b015c

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIPSKTypeSpinner:Landroid/widget/Spinner;

    goto/16 :goto_1

    .line 643
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 644
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 646
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    if-nez v1, :cond_0

    .line 648
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0149

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    .line 665
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    .line 666
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    .line 667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b014f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    .line 668
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0151

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    .line 669
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0153

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    .line 671
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    invoke-direct {p0, v1, v7}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    invoke-direct {p0, v1, v8}, Lcom/android/settings/wifi/WifiDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 674
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 675
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 676
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v7, v2}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v8, v2}, Lcom/android/settings/wifi/WifiDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 683
    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private validate()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 419
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v1, :cond_4

    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ge v0, v5, :cond_4

    .line 423
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 432
    :goto_0
    return-void

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-ge v0, v5, :cond_5

    .line 428
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 430
    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 451
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 447
    return-void
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v5, 0x22

    const-string v6, ""

    .line 158
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-nez v3, :cond_0

    .line 159
    const/4 v3, 0x0

    .line 285
    :goto_0
    return-object v3

    .line 162
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 164
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 168
    iput-boolean v8, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 176
    :goto_1
    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 285
    const/4 v3, 0x0

    goto :goto_0

    .line 169
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 170
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 173
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 178
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    move-object v3, v0

    .line 179
    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 183
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 184
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 185
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_4

    .line 186
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 187
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 189
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_5

    :cond_3
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 191
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v7

    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :cond_4
    :goto_2
    move-object v3, v0

    .line 196
    goto/16 :goto_0

    .line 193
    .restart local v1       #length:I
    .restart local v2       #password:Ljava/lang/String;
    :cond_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    goto :goto_2

    .line 199
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v8}, Ljava/util/BitSet;->set(I)V

    .line 200
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 201
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 202
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 203
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v2           #password:Ljava/lang/String;
    :cond_6
    :goto_3
    move-object v3, v0

    .line 208
    goto/16 :goto_0

    .line 205
    .restart local v2       #password:Ljava/lang/String;
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_3

    .line 211
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->set(I)V

    .line 212
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 213
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 215
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_9

    const-string v4, ""

    move-object v4, v6

    :goto_4
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 217
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    move-object v3, v6

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 220
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    move-object v3, v6

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    move-object v3, v6

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 226
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_d

    const-string v4, ""

    move-object v4, v6

    :goto_8
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 228
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_e

    const-string v4, ""

    move-object v4, v6

    :goto_9
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_8
    move-object v3, v0

    .line 233
    goto/16 :goto_0

    .line 215
    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    .line 217
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 220
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 223
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 226
    :cond_d
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_8

    .line 228
    :cond_e
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_9

    .line 236
    :pswitch_4
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 237
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->set(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->getWAPIPskKeyTypeFromSpinner()I

    move-result v3

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I

    .line 239
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_f

    .line 240
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 241
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 242
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .end local v2           #password:Ljava/lang/String;
    :cond_f
    :goto_a
    move-object v3, v0

    .line 247
    goto/16 :goto_0

    .line 244
    .restart local v2       #password:Ljava/lang/String;
    :cond_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a

    .line 250
    .end local v2           #password:Ljava/lang/String;
    :pswitch_5
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 251
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v3, v9}, Ljava/util/BitSet;->set(I)V

    .line 252
    iput v8, p0, Lcom/android/settings/wifi/WifiDialog;->wapiCertIndex:I

    .line 253
    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->wapiCertIndex:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 254
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->getWAPIASCertFromSpinner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 255
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->getWAPIUserCertFromSpinner()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object v3, v0

    .line 257
    goto/16 :goto_0

    .line 260
    :pswitch_6
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 261
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 263
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_12

    const-string v4, ""

    move-object v4, v6

    :goto_b
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 265
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_13

    const-string v3, ""

    move-object v3, v6

    :goto_c
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 268
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_14

    const-string v3, ""

    move-object v3, v6

    :goto_d
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 271
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_15

    const-string v3, ""

    move-object v3, v6

    :goto_e
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 274
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_16

    const-string v4, ""

    move-object v4, v6

    :goto_f
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 276
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    if-nez v4, :cond_17

    const-string v4, ""

    move-object v4, v6

    :goto_10
    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 278
    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_11

    .line 279
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_11
    move-object v3, v0

    .line 281
    goto/16 :goto_0

    .line 263
    :cond_12
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiDialog;->mPhase2:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_b

    .line 265
    :cond_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapCaCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_c

    .line 268
    :cond_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_d

    .line 271
    :cond_15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mEapUserCert:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_e

    .line 274
    :cond_16
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapIdentity:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_f

    .line 276
    :cond_17
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEapAnonymous:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_10

    .line 176
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 439
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 441
    return-void

    .line 435
    :cond_0
    const/16 v1, 0x80

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f030069

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 291
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 292
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b0147

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mPasswordView:Landroid/view/ViewGroup;

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03006c

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 295
    .local v6, pskView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b0155

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    .line 296
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiPskView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v11

    const v12, 0x7f03006b

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 299
    .local v1, certView:Landroid/view/View;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b0156

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    .line 300
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mWapiCertView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 302
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 305
    .local v2, context:Landroid/content/Context;
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 308
    .local v7, resources:Landroid/content/res/Resources;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v11, :cond_2

    .line 309
    const v11, 0x7f08016e

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setTitle(I)V

    .line 310
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b013b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 311
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b013c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    .line 312
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mSsid:Landroid/widget/TextView;

    invoke-virtual {v11, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 313
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b013d

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 314
    const/4 v11, -0x1

    const v12, 0x7f0801ac

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 316
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    const/16 v12, 0x24

    invoke-virtual {v11, v12}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 400
    :cond_0
    :goto_0
    const/4 v11, -0x2

    const v12, 0x7f0801ad

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 403
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 405
    const/4 v11, -0x1

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 408
    :cond_1
    return-void

    .line 320
    :cond_2
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->retry:Z

    if-eqz v11, :cond_4

    .line 321
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b013a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 327
    .local v3, group:Landroid/view/ViewGroup;
    const v11, 0x7f050016

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 331
    .local v10, type:[Ljava/lang/String;
    const v11, 0x7f080196

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v12, v10, v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 333
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    .line 334
    .local v5, level:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_3

    .line 335
    const v11, 0x7f050020

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 336
    .local v8, signal:[Ljava/lang/String;
    const v11, 0x7f080197

    aget-object v12, v8, v5

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 338
    .end local v8           #signal:[Ljava/lang/String;
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 339
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    .line 340
    .local v9, state:Landroid/net/NetworkInfo$DetailedState;
    const/4 v11, -0x1

    const v12, 0x7f0801aa

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 345
    .end local v3           #group:Landroid/view/ViewGroup;
    .end local v5           #level:I
    .end local v9           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v10           #type:[Ljava/lang/String;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v11}, Lcom/android/settings/wifi/WifiDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 346
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v12, 0x7f0b013a

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 348
    .restart local v3       #group:Landroid/view/ViewGroup;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    .line 349
    .restart local v9       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v9, :cond_5

    .line 350
    const v11, 0x7f080198

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 357
    :cond_5
    const v11, 0x7f050016

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 359
    .restart local v10       #type:[Ljava/lang/String;
    const v11, 0x7f080196

    iget-object v12, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v12, v12, Lcom/android/settings/wifi/AccessPoint;->security:I

    aget-object v12, v10, v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 361
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v5

    .line 362
    .restart local v5       #level:I
    const/4 v11, -0x1

    if-eq v5, v11, :cond_6

    .line 363
    const v11, 0x7f050020

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 364
    .restart local v8       #signal:[Ljava/lang/String;
    const v11, 0x7f080197

    aget-object v12, v8, v5

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 367
    .end local v8           #signal:[Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v11}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 368
    .local v4, info:Landroid/net/wifi/WifiInfo;
    if-eqz v4, :cond_7

    .line 369
    const v11, 0x7f080199

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "Mbps"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 371
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v0

    .line 372
    .local v0, address:I
    if-eqz v0, :cond_7

    .line 373
    const v11, 0x7f08019a

    invoke-static {v0}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v3, v11, v12}, Lcom/android/settings/wifi/WifiDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 377
    .end local v0           #address:I
    :cond_7
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_8

    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v11, :cond_9

    .line 378
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 381
    :cond_9
    iget-boolean v11, p0, Lcom/android/settings/wifi/WifiDialog;->edit:Z

    if-eqz v11, :cond_a

    .line 382
    const/4 v11, -0x1

    const v12, 0x7f0801ac

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 384
    :cond_a
    if-nez v9, :cond_b

    const/4 v11, -0x1

    if-eq v5, v11, :cond_b

    .line 385
    const/4 v11, -0x1

    const v12, 0x7f0801aa

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 387
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v11, v11, Lcom/android/settings/wifi/AccessPoint;->wpsPinMode:Z

    if-eqz v11, :cond_b

    .line 388
    const/4 v11, -0x3

    const v12, 0x7f080178

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 391
    :cond_b
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 393
    iget-object v11, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v12, "T wifi zone"

    invoke-virtual {v11, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 394
    const/4 v11, -0x3

    const v12, 0x7f0801ab

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v11, v12, v13}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    const-string v2, "WifiDialog"

    .line 455
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 456
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 458
    const-string v0, "WifiDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemSelected parent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "View : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "position : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    const-string v0, "WifiDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEapMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mEapMethod:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 511
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    .line 521
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIASCertSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWAPIUserCertSpinner:Landroid/widget/Spinner;

    if-eq p1, v0, :cond_0

    .line 517
    iput p3, p0, Lcom/android/settings/wifi/WifiDialog;->mSecurity:I

    .line 518
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->showSecurityFields()V

    .line 519
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDialog;->validate()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 559
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 444
    return-void
.end method
