.class public abstract Lcom/google/android/util/AbstractMessageParser$Token;
.super Ljava/lang/Object;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Token"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/util/AbstractMessageParser$Token$Type;
    }
.end annotation


# instance fields
.field protected text:Ljava/lang/String;

.field protected type:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# direct methods
.method protected constructor <init>(Lcom/google/android/util/AbstractMessageParser$Token$Type;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "text"

    .prologue
    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput-object p1, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    .line 688
    iput-object p2, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    .line 689
    return-void
.end method


# virtual methods
.method public controlCaps()Z
    .locals 1

    .prologue
    .line 716
    const/4 v0, 0x0

    return v0
.end method

.method public getInfo()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 701
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 702
    .local v0, info:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/util/AbstractMessageParser$Token$Type;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 703
    return-object v0
.end method

.method public getRawText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token;->type:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/google/android/util/AbstractMessageParser$Token;->isHtml()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract isHtml()Z
.end method

.method public isMedia()Z
    .locals 1

    .prologue
    .line 709
    const/4 v0, 0x0

    return v0
.end method

.method public setCaps()Z
    .locals 1

    .prologue
    .line 717
    const/4 v0, 0x0

    return v0
.end method

.method public toHtml(Z)Ljava/lang/String;
    .locals 2
    .parameter "caps"

    .prologue
    .line 713
    new-instance v0, Ljava/lang/AssertionError;

    const-string/jumbo v1, "not html"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
