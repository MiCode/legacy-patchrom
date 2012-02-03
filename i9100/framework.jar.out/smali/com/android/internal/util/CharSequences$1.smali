.class final Lcom/android/internal/util/CharSequences$1;
.super Ljava/lang/Object;
.source "CharSequences.java"

# interfaces
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/CharSequences;->forAsciiBytes([B)Ljava/lang/CharSequence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>([B)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    aget-byte v0, v0, p1

    int-to-char v0, v0

    return v0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    array-length v0, v0

    return v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "start"
    .parameter "end"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/CharSequences;->forAsciiBytes([BII)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/util/CharSequences$1;->val$bytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
