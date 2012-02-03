.class Lcom/android/settings/GSensorSettings$GSensorSettingsView;
.super Landroid/view/View;
.source "GSensorSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/GSensorSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GSensorSettingsView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field image:Landroid/graphics/drawable/Drawable;

.field mRadius:I

.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 247
    const/16 v0, 0xcb

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    .line 249
    const/16 v0, 0x14d

    sput v0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 251
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 255
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 259
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/GSensorSettings$GSensorSettingsView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 246
    invoke-direct {p0, p1}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 262
    iput p1, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    .line 263
    return-void
.end method


# virtual methods
.method public getPoint([F)[F
    .locals 2
    .parameter "position"

    .prologue
    .line 277
    const/4 v0, 0x0

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    add-int/lit8 v1, v1, 0x25

    int-to-float v1, v1

    aput v1, p1, v0

    .line 278
    const/4 v0, 0x1

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    add-int/lit8 v1, v1, 0x25

    int-to-float v1, v1

    aput v1, p1, v0

    .line 281
    return-object p1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .parameter "canvas"

    .prologue
    const-wide/high16 v4, 0x4000

    .line 286
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 297
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    sget v1, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    sget v2, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    sget v3, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sx:I

    add-int/lit8 v3, v3, 0x4a

    sget v4, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->sy:I

    add-int/lit8 v4, v4, 0x4a

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 298
    iget-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 300
    return-void

    .line 288
    :cond_1
    iget v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 291
    sget v0, Lcom/android/settings/GSensorSettings;->ani_gap_x:F

    sget v1, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sget v2, Lcom/android/settings/GSensorSettings;->ani_gap_y:F

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    .line 293
    const/high16 v0, 0x4370

    const/high16 v1, 0x43b9

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    add-int/lit8 v2, v2, 0x25

    sget v3, Lcom/android/settings/GSensorSettings;->ani_count:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/GSensorSettings;->access$300()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 295
    const-string v0, "GSensorSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mRadius "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->mRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected setImage(I)V
    .locals 2
    .parameter "count"

    .prologue
    .line 303
    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    .line 309
    :goto_0
    return-void

    .line 305
    :cond_0
    const/16 v0, 0x10

    if-lt p1, v0, :cond_1

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/GSensorSettings$GSensorSettingsView;->image:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method
