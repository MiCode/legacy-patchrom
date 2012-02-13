.class public Lcom/google/android/util/AbstractMessageParser$TrieNode;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TrieNode"
.end annotation


# instance fields
.field private final children:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Lcom/google/android/util/AbstractMessageParser$TrieNode;",
            ">;"
        }
    .end annotation
.end field

.field private text:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    return-void
.end method

.method public static addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "root"
    .parameter "str"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;

    move-result-object p0

    move v0, v1

    .end local v1           #index:I
    .restart local v0       #index:I
    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final exists()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 2
    .parameter "ch"

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object p0
.end method

.method public getOrCreateChild(C)Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 4
    .parameter "ch"

    .prologue
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    .local v0, key:Ljava/lang/Character;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .local v1, node:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    .end local v1           #node:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>(Ljava/lang/String;)V

    .restart local v1       #node:Lcom/google/android/util/AbstractMessageParser$TrieNode;
    iget-object v2, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->children:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    return-object v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$TrieNode;->value:Ljava/lang/String;

    return-void
.end method
