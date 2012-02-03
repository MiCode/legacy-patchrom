.class public Lcom/android/settings/fuelgauge/PowerGaugePreference;
.super Landroid/preference/Preference;
.source "PowerGaugePreference.java"


# instance fields
.field private mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

.field private mPercent:D

.field private mValue:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V
    .locals 3
    .parameter "context"
    .parameter "icon"
    .parameter "info"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 43
    const v0, 0x7f03004a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setLayoutResource(I)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    new-instance v0, Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PercentageBar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    .line 46
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f02

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/PercentageBar;->bar:Landroid/graphics/drawable/Drawable;

    .line 47
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

    .line 48
    return-void
.end method


# virtual methods
.method getInfo()Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings/fuelgauge/BatterySipper;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 76
    const v3, 0x7f0b00e5

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 77
    .local v1, appIcon:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1080093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 80
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    const v3, 0x7f0b00e7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 83
    .local v0, appGauge:Landroid/widget/ImageView;
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 85
    const v3, 0x7f0b00e6

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 86
    .local v2, percentView:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPercent:D

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method setGaugeValue(D)V
    .locals 3
    .parameter "percent"

    .prologue
    .line 55
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mValue:D

    .line 56
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mGauge:Lcom/android/settings/fuelgauge/PercentageBar;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mValue:D

    iput-wide v1, v0, Lcom/android/settings/fuelgauge/PercentageBar;->percent:D

    .line 57
    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "icon"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->notifyChanged()V

    .line 70
    return-void
.end method

.method setPercent(D)V
    .locals 0
    .parameter "percent"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/PowerGaugePreference;->mPercent:D

    .line 61
    return-void
.end method
