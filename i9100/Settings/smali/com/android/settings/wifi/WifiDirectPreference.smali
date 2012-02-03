.class Lcom/android/settings/wifi/WifiDirectPreference;
.super Landroid/preference/Preference;
.source "WifiDirectPreference.java"


# static fields
.field private static final STATE_NONE:[I


# instance fields
.field final bssid:Ljava/lang/String;

.field public deviceType:I

.field public directMode:Z

.field public directStatus:I

.field private mDirectIcon:Landroid/widget/ImageView;

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mTitleText:Landroid/widget/TextView;

.field final ssid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/settings/wifi/WifiDirectPreference;->STATE_NONE:[I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .parameter "context"
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->deviceType:I

    .line 50
    iput v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    .line 88
    const v0, 0x7f03004f

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDirectPreference;->setWidgetLayoutResource(I)V

    .line 89
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    .line 90
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->bssid:Ljava/lang/String;

    .line 91
    iget v0, p2, Landroid/net/wifi/ScanResult;->primaryDev:I

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->deviceType:I

    .line 92
    iget v0, p2, Landroid/net/wifi/ScanResult;->status:I

    iput v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    .line 93
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "DIRECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directMode:Z

    .line 94
    return-void
.end method

.method private static getDeviceIconId(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 60
    packed-switch p0, :pswitch_data_0

    .line 82
    :pswitch_0
    const v0, 0x7f02006b

    :goto_0
    return v0

    .line 62
    :pswitch_1
    const v0, 0x7f020063

    goto :goto_0

    .line 64
    :pswitch_2
    const v0, 0x7f020066

    goto :goto_0

    .line 66
    :pswitch_3
    const v0, 0x7f020069

    goto :goto_0

    .line 68
    :pswitch_4
    const v0, 0x7f020062

    goto :goto_0

    .line 70
    :pswitch_5
    const v0, 0x7f02006a

    goto :goto_0

    .line 72
    :pswitch_6
    const v0, 0x7f020068

    goto :goto_0

    .line 74
    :pswitch_7
    const v0, 0x7f020064

    goto :goto_0

    .line 76
    :pswitch_8
    const v0, 0x7f020067

    goto :goto_0

    .line 78
    :pswitch_9
    const v0, 0x7f020065

    goto :goto_0

    .line 80
    :pswitch_a
    const v0, 0x7f020061

    goto :goto_0

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 171
    .local v0, context:Landroid/content/Context;
    iget v1, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 172
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    const v1, 0x7f080189

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiDirectPreference;->setSummary(I)V

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 4
    .parameter "preference"

    .prologue
    const/4 v3, 0x1

    .line 125
    instance-of v2, p1, Lcom/android/settings/wifi/WifiDirectPreference;

    if-nez v2, :cond_0

    move v2, v3

    .line 134
    :goto_0
    return v2

    .line 128
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/WifiDirectPreference;

    move-object v1, v0

    .line 130
    .local v1, other:Lcom/android/settings/wifi/WifiDirectPreference;
    iget v2, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-ne v2, v3, :cond_1

    .line 131
    const/4 v2, -0x1

    goto :goto_0

    .line 134
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiDirectPreference;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x1

    .line 99
    const v4, 0x1020016

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mTitleText:Landroid/widget/TextView;

    .line 100
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mState:Landroid/net/NetworkInfo$DetailedState;

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directStatus:I

    if-ne v4, v6, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mTitleText:Landroid/widget/TextView;

    if-eqz v4, :cond_1

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDirectPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 103
    .local v2, res:Landroid/content/res/Resources;
    const v4, 0x7f040036

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    .line 104
    .local v3, xpp:Landroid/content/res/XmlResourceParser;
    invoke-static {v2, v3}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 105
    .local v0, csl:Landroid/content/res/ColorStateList;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 106
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mTitleText:Landroid/widget/TextView;

    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .end local v0           #csl:Landroid/content/res/ColorStateList;
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #xpp:Landroid/content/res/XmlResourceParser;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->ssid:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiDirectPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->directMode:Z

    if-eqz v4, :cond_2

    .line 116
    const v4, 0x7f0b00f0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mDirectIcon:Landroid/widget/ImageView;

    .line 117
    iget-object v4, p0, Lcom/android/settings/wifi/WifiDirectPreference;->mDirectIcon:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/settings/wifi/WifiDirectPreference;->deviceType:I

    invoke-static {v5}, Lcom/android/settings/wifi/WifiDirectPreference;->getDeviceIconId(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiDirectPreference;->refresh()V

    .line 120
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 121
    return-void

    .line 107
    .restart local v2       #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 108
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "WifiDirectPreference"

    const-string v5, "onBindView(), XmlResourceParser exception"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
