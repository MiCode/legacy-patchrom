.class public Lcom/android/settings/flipfont/Typeface;
.super Ljava/lang/Object;
.source "Typeface.java"


# instance fields
.field private mFontPackageName:Ljava/lang/String;

.field public final mMonospaceFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mName:Ljava/lang/String;

.field public final mSansFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field public final mSerifFonts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/flipfont/TypefaceFile;",
            ">;"
        }
    .end annotation
.end field

.field private mTypefaceFilename:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    .line 30
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSerifFonts:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mMonospaceFonts:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFontPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getSansName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mSansFonts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTypefaceFilename()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    return-object v0
.end method

.method public setFontPackageName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mFontPackageName:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mName:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTypefaceFilename(Ljava/lang/String;)V
    .locals 0
    .parameter "typefaceFilename"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/flipfont/Typeface;->mTypefaceFilename:Ljava/lang/String;

    .line 66
    return-void
.end method
