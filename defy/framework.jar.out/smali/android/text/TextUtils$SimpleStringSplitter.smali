.class public Landroid/text/TextUtils$SimpleStringSplitter;
.super Ljava/lang/Object;
.source "TextUtils.java"

# interfaces
.implements Landroid/text/TextUtils$StringSplitter;
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleStringSplitter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/text/TextUtils$StringSplitter;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mDelimiter:C

.field private mLength:I

.field private mPosition:I

.field private mString:Ljava/lang/String;


# direct methods
.method public constructor <init>(C)V
    .locals 0
    .parameter "delimiter"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    iget v1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    return-object p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/lang/String;
    .locals 5

    .prologue
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget-char v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mDelimiter:C

    iget v4, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .local v0, end:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    :cond_0
    iget-object v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    iget v3, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, nextString:Ljava/lang/String;
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    return-object v1
.end method

.method public remove()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    iput-object p1, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mPosition:I

    iget-object v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Landroid/text/TextUtils$SimpleStringSplitter;->mLength:I

    return-void
.end method
