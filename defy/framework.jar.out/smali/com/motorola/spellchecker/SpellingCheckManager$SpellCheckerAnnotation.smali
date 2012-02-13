.class public Lcom/motorola/spellchecker/SpellingCheckManager$SpellCheckerAnnotation;
.super Landroid/text/Annotation;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpellCheckerAnnotation"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct {p0, p1}, Landroid/text/Annotation;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/text/Annotation;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getSpanTypeId()I
    .locals 1

    .prologue
    const/16 v0, 0x14

    return v0
.end method
