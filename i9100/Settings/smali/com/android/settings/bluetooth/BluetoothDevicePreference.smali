.class public Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Landroid/preference/Preference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mIsBusy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/high16 v0, -0x8000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 4
    .parameter "context"
    .parameter "cachedDevice"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 50
    sget v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 51
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 52
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010033

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 53
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v2, 0x437f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 56
    .end local v0           #outValue:Landroid/util/TypedValue;
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 58
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setLayoutResource(I)V

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 62
    invoke-virtual {p0, p2}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    .line 63
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 142
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x1

    .line 147
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    .end local p1
    iget-object v1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getCachedDevice()Lcom/android/settings/bluetooth/CachedBluetoothDevice;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method public isEnabled()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 104
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 105
    invoke-super {p0}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBusy:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/16 v5, 0xff

    const/4 v4, 0x1

    const-string v6, "bt_checkbox"

    .line 112
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/preference/Preference;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "bt_checkbox"

    invoke-virtual {p0, v6}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 116
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 124
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    if-ne v3, v4, :cond_1

    .line 125
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 126
    .local v2, title:Landroid/widget/TextView;
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 127
    const v3, -0xff6601

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    .end local v2           #title:Landroid/widget/TextView;
    :cond_1
    const v3, 0x7f0b00d8

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 132
    .local v0, btClass:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtClassDrawable()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v5

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 135
    const v3, 0x7f0b00d9

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 136
    .local v1, btConnectState:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getBtConnectStateDrawable()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 138
    return-void

    .line 133
    .end local v1           #btConnectState:Landroid/widget/ImageView;
    :cond_2
    sget v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_0

    .line 137
    .restart local v1       #btConnectState:Landroid/widget/ImageView;
    :cond_3
    sget v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    goto :goto_1
.end method

.method public onDeviceAttributesChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;)V
    .locals 1
    .parameter "cachedDevice"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getSummary()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(I)V

    .line 92
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mIsBusy:Z

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyChanged()V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 99
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Landroid/preference/Preference;->onPrepareForRemoval()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settings/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 73
    return-void
.end method
