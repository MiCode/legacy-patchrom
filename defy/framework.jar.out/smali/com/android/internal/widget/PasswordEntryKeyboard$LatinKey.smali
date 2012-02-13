.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    :cond_0
    return-void
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    return-void
.end method

.method public isInside(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, -0x5

    iget-boolean v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v1, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/inputmethodservice/Keyboard$Key;->codes:[I

    aget v0, v1, v4

    .local v0, code:I
    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_4

    :cond_1
    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    if-ne v0, v3, :cond_2

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    :cond_2
    if-ne v0, v2, :cond_3

    iget v1, p0, Landroid/inputmethodservice/Keyboard$Key;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Landroid/inputmethodservice/Keyboard$Key;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    return-void
.end method
