.class Landroid/net/Uri$PathSegmentsBuilder;
.super Ljava/lang/Object;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PathSegmentsBuilder"
.end annotation


# instance fields
.field segments:[Ljava/lang/String;

.field size:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 951
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    return-void
.end method


# virtual methods
.method add(Ljava/lang/String;)V
    .locals 4
    .parameter "segment"

    .prologue
    const/4 v3, 0x0

    .line 954
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    if-nez v1, :cond_1

    .line 955
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    .line 962
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    aput-object p1, v1, v2

    .line 963
    return-void

    .line 956
    :cond_1
    iget v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 957
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 958
    .local v0, expanded:[Ljava/lang/String;
    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget-object v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 959
    iput-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    goto :goto_0
.end method

.method build()Landroid/net/Uri$PathSegments;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 966
    iget-object v0, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 967
    sget-object v0, Landroid/net/Uri$PathSegments;->EMPTY:Landroid/net/Uri$PathSegments;

    .line 974
    :goto_0
    return-object v0

    .line 971
    :cond_0
    :try_start_0
    new-instance v0, Landroid/net/Uri$PathSegments;

    iget-object v1, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    iget v2, p0, Landroid/net/Uri$PathSegmentsBuilder;->size:I

    invoke-direct {v0, v1, v2}, Landroid/net/Uri$PathSegments;-><init>([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    iput-object v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v3, p0, Landroid/net/Uri$PathSegmentsBuilder;->segments:[Ljava/lang/String;

    throw v0
.end method
