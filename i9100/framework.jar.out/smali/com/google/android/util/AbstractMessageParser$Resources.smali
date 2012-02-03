.class public interface abstract Lcom/google/android/util/AbstractMessageParser$Resources;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Resources"
.end annotation


# virtual methods
.method public abstract getAcronyms()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method

.method public abstract getDomainSuffixes()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method

.method public abstract getSchemes()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSmileys()Lcom/google/android/util/AbstractMessageParser$TrieNode;
.end method
