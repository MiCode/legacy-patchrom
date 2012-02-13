.class public final Landroid/database/CharArrayBuffer;
.super Ljava/lang/Object;
.source "CharArrayBuffer.java"


# instance fields
.field public data:[C

.field public sizeCopied:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "size"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [C

    iput-object v0, p0, Landroid/database/CharArrayBuffer;->data:[C

    return-void
.end method

.method public constructor <init>([C)V
    .locals 0
    .parameter "buf"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/database/CharArrayBuffer;->data:[C

    return-void
.end method
