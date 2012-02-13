.class final Lcom/android/internal/util/CharSequences$2;
.super Ljava/lang/Object;
.source "CharSequences.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B

.field final synthetic val$end:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>([BII)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iput p2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    iput p3, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 2
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    int-to-char v0, v0

    return v0
.end method

.method public length()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$end:I

    iget v1, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    iget-object v0, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/CharSequences$2;->val$bytes:[B

    iget v2, p0, Lcom/android/internal/util/CharSequences$2;->val$start:I

    invoke-virtual {p0}, Lcom/android/internal/util/CharSequences$2;->length()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method
