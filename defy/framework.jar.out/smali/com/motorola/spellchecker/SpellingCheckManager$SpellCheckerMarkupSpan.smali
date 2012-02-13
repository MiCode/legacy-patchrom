.class public Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;
.super Landroid/text/style/CharacterStyle;
.source "SpellingCheckManager.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;
.implements Landroid/text/ParcelableSpan;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerMarkupSpan"
.end annotation


# static fields
.field private static final AUTOCORRECTIONWORD_HIGHLIGHT_COLOR:I = -0xff4700

.field private static final MISSPELL_HIGHLIGHT_COLOR:I = -0x150000


# instance fields
.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "type"

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    return-void
.end method

.method static synthetic access$1500(Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHighlightLineColor()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x15

    :goto_0
    return v0

    :cond_0
    const v0, -0xff4700

    goto :goto_0
.end method

.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0x13

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0
    .parameter "ds"

    .prologue
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerMarkupSpan;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
