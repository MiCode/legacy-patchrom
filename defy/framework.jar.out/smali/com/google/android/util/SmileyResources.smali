.class public Lcom/google/android/util/SmileyResources;
.super Ljava/lang/Object;
.source "SmileyResources.java"

# interfaces
.implements Lcom/google/android/util/AbstractMessageParser$Resources;


# instance fields
.field private mSmileyToRes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;


# direct methods
.method public constructor <init>([Ljava/lang/String;[I)V
    .locals 4
    .parameter "smilies"
    .parameter "smileyResIds"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    new-instance v1, Lcom/google/android/util/AbstractMessageParser$TrieNode;

    invoke-direct {v1}, Lcom/google/android/util/AbstractMessageParser$TrieNode;-><init>()V

    iput-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    aget-object v2, p1, v0

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$TrieNode;->addToTrie(Lcom/google/android/util/AbstractMessageParser$TrieNode;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    aget-object v2, p1, v0

    aget v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmileyRes(Ljava/lang/String;)I
    .locals 2
    .parameter "smiley"

    .prologue
    iget-object v1, p0, Lcom/google/android/util/SmileyResources;->mSmileyToRes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/SmileyResources;->smileys:Lcom/google/android/util/AbstractMessageParser$TrieNode;

    return-object v0
.end method
