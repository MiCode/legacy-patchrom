.class public Lcom/android/settings/ThemePicker3D;
.super Landroid/app/Activity;
.source "ThemePicker3D.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ThemePicker3D$Notified;,
        Lcom/android/settings/ThemePicker3D$ImageAdapter;,
        Lcom/android/settings/ThemePicker3D$LoadingTask;
    }
.end annotation


# static fields
.field private static LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

.field private static home:Z

.field private static lock:Z


# instance fields
.field private initialspace:I

.field private initsingleitemheight:I

.field private initsingleitemwidth:I

.field private mCurrentTheme:Ljava/lang/String;

.field private mCurrentThemeIndex:I

.field private mIndexIndicator:Landroid/widget/TextView;

.field private mLoadingDialog:Landroid/app/AlertDialog;

.field mNotified:Lcom/android/settings/ThemePicker3D$Notified;

.field private mSelectedIndex:I

.field private mSetThemeBtn:Landroid/widget/Button;

.field private mThemeGallery:Lcom/android/settings/ThemeGallery;

.field private mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;

.field private mThemeLoading:Z

.field private mThemeManager:Lcom/samsung/ThemeManager;

.field private mThemeTitles:[Ljava/lang/String;

.field private mThemeValues:[Ljava/lang/String;

.field private mTitleIndicator:Landroid/widget/TextView;

.field private relativeheight:F

.field private relativewidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    const-string v0, "com.android.lockscreenwallpaper.CHANGED"

    sput-object v0, Lcom/android/settings/ThemePicker3D;->LOCKSCREEN_WALLPAPER_INFO:Ljava/lang/String;

    .line 93
    sput-boolean v1, Lcom/android/settings/ThemePicker3D;->home:Z

    .line 94
    sput-boolean v1, Lcom/android/settings/ThemePicker3D;->lock:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f80

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->mCurrentThemeIndex:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    .line 79
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemwidth:I

    .line 80
    const/16 v0, 0x21c

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemheight:I

    .line 83
    const/16 v0, -0x73

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initialspace:I

    .line 84
    iput v1, p0, Lcom/android/settings/ThemePicker3D;->relativewidth:F

    .line 85
    iput v1, p0, Lcom/android/settings/ThemePicker3D;->relativeheight:F

    .line 384
    new-instance v0, Lcom/android/settings/ThemePicker3D$Notified;

    invoke-direct {v0, p0}, Lcom/android/settings/ThemePicker3D$Notified;-><init>(Lcom/android/settings/ThemePicker3D;)V

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mNotified:Lcom/android/settings/ThemePicker3D$Notified;

    .line 390
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ThemePicker3D;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mLoadingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/ThemePicker3D;)Lcom/android/settings/ThemePicker3D$ImageAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/ThemePicker3D;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/ThemePicker3D;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mIndexIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/ThemePicker3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemwidth:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/settings/ThemePicker3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemheight:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/ThemePicker3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/ThemePicker3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    iput p1, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/ThemePicker3D;)Lcom/samsung/ThemeManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;

    return-object v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 52
    sput-boolean p0, Lcom/android/settings/ThemePicker3D;->home:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/ThemePicker3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->mCurrentThemeIndex:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/settings/ThemePicker3D;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/ThemePicker3D;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;

    return-object v0
.end method

.method private initDialogs()V
    .locals 4

    .prologue
    .line 161
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 162
    .local v1, tv:Landroid/widget/TextView;
    const v2, 0x7f080621

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const v2, 0x1030042

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 164
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    float-to-int v2, v2

    div-int/lit8 v0, v2, 0x4

    .line 165
    .local v0, p:I
    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 166
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 167
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ThemePicker3D;->mLoadingDialog:Landroid/app/AlertDialog;

    .line 171
    return-void
.end method

.method private makeView()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const-string v1, "ThemePicker3D"

    .line 221
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;

    invoke-virtual {v0}, Lcom/samsung/ThemeManager;->getCurrentThemePackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mCurrentTheme:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mCurrentTheme:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 223
    const-string v0, "ThemePicker3D"

    const-string v0, "[Theme] Unable to get current theme package"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->finish()V

    .line 318
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;

    invoke-virtual {v0}, Lcom/samsung/ThemeManager;->getInstalledThemePackageList()Ljava/util/List;

    move-result-object v9

    .line 232
    .local v9, list:Ljava/util/List;,"Ljava/util/List<[Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 233
    const-string v0, "ThemePicker3D"

    const-string v0, "[Theme] Unable to get installed theme packages"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->finish()V

    goto :goto_0

    .line 237
    :cond_1
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;

    .line 238
    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;

    .line 240
    iput v4, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    .line 241
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_2

    .line 242
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 243
    iput v8, p0, Lcom/android/settings/ThemePicker3D;->mCurrentThemeIndex:I

    iput v8, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    .line 248
    :cond_2
    const v0, 0x7f0b0123

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ThemeGallery;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    .line 251
    const v0, 0x7f0b0128

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;

    .line 252
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 253
    const v0, 0x7f0b0127

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mIndexIndicator:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mIndexIndicator:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->bringToFront()V

    .line 256
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 259
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43f0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->relativewidth:F

    .line 260
    invoke-virtual {v7}, Landroid/view/Display;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4448

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->relativeheight:F

    .line 261
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemwidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/ThemePicker3D;->relativewidth:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemwidth:I

    .line 262
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemheight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/ThemePicker3D;->relativeheight:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initsingleitemheight:I

    .line 265
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mTitleIndicator:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mIndexIndicator:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08061d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ThemePicker3D;->mThemeTitles:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    const v0, 0x7f0b0125

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mSetThemeBtn:Landroid/widget/Button;

    .line 270
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mSetThemeBtn:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/ThemePicker3D$1;

    invoke-direct {v1, p0}, Lcom/android/settings/ThemePicker3D$1;-><init>(Lcom/android/settings/ThemePicker3D;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    const v0, 0x7f0b0126

    invoke-virtual {p0, v0}, Lcom/android/settings/ThemePicker3D;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    .line 278
    .local v6, cb:Landroid/widget/CheckBox;
    sput-boolean v4, Lcom/android/settings/ThemePicker3D;->home:Z

    .line 280
    new-instance v0, Lcom/android/settings/ThemePicker3D$2;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/ThemePicker3D$2;-><init>(Lcom/android/settings/ThemePicker3D;Landroid/widget/CheckBox;)V

    invoke-virtual {v6, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 289
    new-instance v0, Lcom/android/settings/ThemePicker3D$ImageAdapter;

    iget-object v3, p0, Lcom/android/settings/ThemePicker3D;->mThemeValues:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/ThemePicker3D;->mNotified:Lcom/android/settings/ThemePicker3D$Notified;

    iget v5, p0, Lcom/android/settings/ThemePicker3D;->mCurrentThemeIndex:I

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ThemePicker3D$ImageAdapter;-><init>(Lcom/android/settings/ThemePicker3D;Landroid/content/Context;[Ljava/lang/String;Lcom/android/settings/ThemePicker3D$Notified;I)V

    iput-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;

    .line 290
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    iget-object v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeImageAdapter:Lcom/android/settings/ThemePicker3D$ImageAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemeGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 292
    :cond_3
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    new-instance v1, Lcom/android/settings/ThemePicker3D$3;

    invoke-direct {v1, p0}, Lcom/android/settings/ThemePicker3D$3;-><init>(Lcom/android/settings/ThemePicker3D;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemeGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 314
    iget v0, p0, Lcom/android/settings/ThemePicker3D;->initialspace:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/ThemePicker3D;->relativewidth:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/ThemePicker3D;->initialspace:I

    .line 315
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    iget v1, p0, Lcom/android/settings/ThemePicker3D;->initialspace:I

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemeGallery;->setSpacing(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    iget v1, p0, Lcom/android/settings/ThemePicker3D;->mSelectedIndex:I

    invoke-virtual {v0, v1, v10}, Lcom/android/settings/ThemeGallery;->setSelection(IZ)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mThemeGallery:Lcom/android/settings/ThemeGallery;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settings/ThemeGallery;->setAnimationDuration(I)V

    goto/16 :goto_0

    .line 241
    .end local v6           #cb:Landroid/widget/CheckBox;
    .end local v7           #display:Landroid/view/Display;
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1
.end method

.method private updateWallpaper(ZZ)V
    .locals 4
    .parameter "homescreen"
    .parameter "lockscreen"

    .prologue
    .line 177
    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    .line 180
    .local v1, wm:Landroid/app/WallpaperManager;
    if-eqz v1, :cond_2

    .line 182
    invoke-virtual {v1}, Landroid/app/WallpaperManager;->clear()V

    .line 193
    .end local v1           #wm:Landroid/app/WallpaperManager;
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 197
    :cond_1
    :goto_1
    return-void

    .line 185
    .restart local v1       #wm:Landroid/app/WallpaperManager;
    :cond_2
    const-string v2, "ThemePicker3D"

    const-string v3, "[Theme] Unable to get wallpaper manager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v1           #wm:Landroid/app/WallpaperManager;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 188
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.THEME_SETTINGS_SAFE_MODE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/ThemePicker3D;->startActivity(Landroid/content/Intent;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->finish()V

    .line 136
    :goto_0
    return-void

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    const-string v1, "com.android.settings.THEME_LOADING"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z

    .line 111
    iget-boolean v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z

    if-eqz v1, :cond_1

    .line 113
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 115
    .local v0, sp:Landroid/content/SharedPreferences;
    sget-boolean v1, Lcom/android/settings/ThemePicker3D;->home:Z

    sget-boolean v2, Lcom/android/settings/ThemePicker3D;->lock:Z

    invoke-direct {p0, v1, v2}, Lcom/android/settings/ThemePicker3D;->updateWallpaper(ZZ)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->finish()V

    goto :goto_0

    .line 122
    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_1
    const v1, 0x7f03005b

    invoke-virtual {p0, v1}, Lcom/android/settings/ThemePicker3D;->setContentView(I)V

    .line 124
    invoke-static {}, Lcom/samsung/ThemeManager;->getThemeManager()Lcom/samsung/ThemeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;

    .line 125
    iget-object v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeManager:Lcom/samsung/ThemeManager;

    if-nez v1, :cond_2

    .line 126
    const-string v1, "ThemePicker3D"

    const-string v2, "[Theme] Unable to get Theme Manager."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ThemePicker3D;->finish()V

    goto :goto_0

    .line 131
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z

    .line 133
    invoke-direct {p0}, Lcom/android/settings/ThemePicker3D;->initDialogs()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mLoadingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/android/settings/ThemePicker3D;->mLoadingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 151
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 141
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 142
    invoke-direct {p0}, Lcom/android/settings/ThemePicker3D;->makeView()V

    .line 143
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 156
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 157
    const-string v0, "com.android.settings.THEME_LOADING"

    iget-boolean v1, p0, Lcom/android/settings/ThemePicker3D;->mThemeLoading:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    return-void
.end method
