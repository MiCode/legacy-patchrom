.class Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;
.super Ljava/lang/Object;
.source "SpellingCheckManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/spellchecker/SpellingCheckManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OpenedDictionary"
.end annotation


# instance fields
.field dictEncoding:Ljava/lang/String;

.field id:I

.field refCount:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .parameter "ID"
    .parameter "dict_encoding"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->id:I

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    iput p1, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->id:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->refCount:I

    iput-object p2, p0, Lcom/motorola/spellchecker/SpellingCheckManager$OpenedDictionary;->dictEncoding:Ljava/lang/String;

    return-void
.end method
