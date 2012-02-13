.class public Lcom/android/phone/BluetoothBatteryUsePreference;
.super Landroid/preference/Preference;
.source "BluetoothBatteryUsePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;
    }
.end annotation


# instance fields
.field private mFillView:Landroid/widget/ImageView;

.field private mLayout:Landroid/widget/LinearLayout;

.field private mLevelView:Landroid/widget/TextView;

.field private mListener:Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;

.field private mOverlay:I

.field private mPercent:I

.field private mSpaceView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method private doUpdate()V
    .locals 11

    .prologue
    .line 93
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLayout:Landroid/widget/LinearLayout;

    if-nez v8, :cond_1

    .line 136
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    const/4 v1, 0x0

    .line 96
    .local v1, fill:I
    const/4 v6, 0x0

    .line 101
    .local v6, space:I
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    .line 102
    .local v0, cap:I
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 103
    .local v3, fillWidth:I
    mul-int/lit8 v8, v3, 0x32

    div-int/lit8 v4, v8, 0x64

    .line 105
    .local v4, fillWidth1:I
    iget v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    mul-int/2addr v8, v0

    div-int/lit8 v1, v8, 0x64

    .line 106
    sub-int v6, v0, v1

    .line 108
    iget v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    const/4 v9, 0x4

    if-gt v8, v9, :cond_2

    .line 109
    const v7, 0x7f02000c

    .line 110
    .local v7, spaceImage:I
    const v2, 0x7f02000b

    .line 119
    .local v2, fillImage:I
    :goto_1
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLevelView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "%"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mFillView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 122
    .local v5, fl:Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 123
    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 124
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mFillView:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mFillView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mSpaceView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .end local v5           #fl:Landroid/widget/LinearLayout$LayoutParams;
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 128
    .restart local v5       #fl:Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 129
    mul-int/lit8 v8, v3, 0x32

    div-int/lit8 v8, v8, 0x64

    iput v8, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 130
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mSpaceView:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 131
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mSpaceView:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    const/16 v9, 0x5a

    if-le v8, v9, :cond_0

    .line 134
    iget-object v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mSpaceView:Landroid/widget/ImageView;

    invoke-virtual {v8, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 111
    .end local v2           #fillImage:I
    .end local v5           #fl:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #spaceImage:I
    :cond_2
    iget v8, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    const/16 v9, 0x18

    if-gt v8, v9, :cond_3

    .line 112
    const v7, 0x7f02000a

    .line 113
    .restart local v7       #spaceImage:I
    const v2, 0x7f020009

    .restart local v2       #fillImage:I
    goto :goto_1

    .line 115
    .end local v2           #fillImage:I
    .end local v7           #spaceImage:I
    :cond_3
    const v7, 0x7f020008

    .line 116
    .restart local v7       #spaceImage:I
    const v2, 0x7f020007

    .restart local v2       #fillImage:I
    goto :goto_1
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 65
    .local v1, view:Landroid/view/View;
    const v2, 0x7f070033

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLevelView:Landroid/widget/TextView;

    .line 66
    const v2, 0x7f070037

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mFillView:Landroid/widget/ImageView;

    .line 67
    const v2, 0x7f070036

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mSpaceView:Landroid/widget/ImageView;

    .line 68
    const v2, 0x7f070035

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mLayout:Landroid/widget/LinearLayout;

    .line 70
    const v2, 0x7f070034

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 71
    .local v0, image:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-direct {p0}, Lcom/android/phone/BluetoothBatteryUsePreference;->doUpdate()V

    .line 73
    return-object v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mListener:Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mListener:Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;

    invoke-virtual {p0}, Lcom/android/phone/BluetoothBatteryUsePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;->onClick(Ljava/lang/String;Landroid/view/View;)V

    .line 80
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mListener:Lcom/android/phone/BluetoothBatteryUsePreference$MyPreferenceClickListener;

    .line 84
    return-void
.end method

.method public setStatus(II)V
    .locals 0
    .parameter "percent"
    .parameter "overlayRes"

    .prologue
    .line 87
    iput p1, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mPercent:I

    .line 88
    iput p2, p0, Lcom/android/phone/BluetoothBatteryUsePreference;->mOverlay:I

    .line 89
    invoke-direct {p0}, Lcom/android/phone/BluetoothBatteryUsePreference;->doUpdate()V

    .line 90
    return-void
.end method
