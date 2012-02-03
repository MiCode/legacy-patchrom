.class public Lcom/android/settings/bluetooth/BluetoothNamePreference;
.super Landroid/preference/EditTextPreference;
.source "BluetoothNamePreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;
    }
.end annotation


# instance fields
.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothNamePreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummaryToName()V

    return-void
.end method

.method private setSummaryToName()V
    .locals 2

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 103
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setText(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    :cond_0
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 9
    .parameter "s"

    .prologue
    const/4 v8, -0x1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 137
    .local v0, d:Landroid/app/Dialog;
    const/4 v4, 0x0

    .line 138
    .local v4, spaceNum:I
    const/4 v1, 0x0

    .line 140
    .local v1, deviceName:Ljava/lang/String;
    instance-of v5, v0, Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 141
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 142
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 143
    const-string v5, "BluetoothNamePreference"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " deviceName is [ "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 146
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    .line 147
    add-int/lit8 v4, v4, 0x1

    .line 145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 151
    :cond_1
    if-lez v3, :cond_2

    if-ne v3, v4, :cond_4

    .line 152
    :cond_2
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 156
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_3
    :goto_1
    return-void

    .line 154
    .restart local v0       #d:Landroid/app/Dialog;
    .restart local v2       #i:I
    .restart local v3       #length:I
    :cond_4
    check-cast v0, Landroid/app/AlertDialog;

    .end local v0           #d:Landroid/app/Dialog;
    invoke-virtual {v0, v8}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 161
    return-void
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/preference/EditTextPreference;->onClick()V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 125
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 132
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 166
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 95
    .local v0, et:Landroid/widget/EditText;
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 99
    return-void
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 2
    .parameter "value"

    .prologue
    .line 114
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 115
    .local v0, adapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->setName(Ljava/lang/String;)Z

    .line 116
    const/4 v1, 0x1

    return v1
.end method

.method public resume()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 72
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v3, filter:Landroid/content/IntentFilter;
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    const-string v4, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/bluetooth/BluetoothNamePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    .line 79
    .local v2, et:Landroid/widget/EditText;
    if-eqz v2, :cond_0

    .line 80
    new-array v4, v8, [Landroid/text/InputFilter;

    new-instance v5, Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/android/settings/bluetooth/BluetoothNamePreference$Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v4, v7

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 84
    invoke-virtual {v2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothNamePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    .line 86
    .local v1, d:Landroid/app/Dialog;
    instance-of v4, v1, Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 87
    check-cast v1, Landroid/app/AlertDialog;

    .end local v1           #d:Landroid/app/Dialog;
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 88
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v4, v8

    :goto_0
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 91
    .end local v0           #b:Landroid/widget/Button;
    :cond_0
    return-void

    .restart local v0       #b:Landroid/widget/Button;
    :cond_1
    move v4, v7

    .line 88
    goto :goto_0
.end method
