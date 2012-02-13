.class public Landroid/content/pm/Signature;
.super Ljava/lang/Object;
.source "Signature.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHashCode:I

.field private mHaveHashCode:Z

.field private final mSignature:[B

.field private mStringRef:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/content/pm/Signature$1;

    invoke-direct {v0}, Landroid/content/pm/Signature$1;-><init>()V

    sput-object v0, Landroid/content/pm/Signature;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "source"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/Signature$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/pm/Signature;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .parameter "text"

    .prologue
    const/16 v7, 0x30

    const/16 v6, 0x61

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    .local v0, N:I
    new-array v4, v0, [B

    .local v4, sig:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_2

    mul-int/lit8 v5, v3, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .local v2, c:C
    if-lt v2, v6, :cond_0

    sub-int v5, v2, v6

    add-int/lit8 v5, v5, 0xa

    :goto_1
    shl-int/lit8 v5, v5, 0x4

    int-to-byte v1, v5

    .local v1, b:B
    mul-int/lit8 v5, v3, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-lt v2, v6, :cond_1

    sub-int v5, v2, v6

    add-int/lit8 v5, v5, 0xa

    :goto_2
    int-to-byte v5, v5

    or-int/2addr v5, v1

    int-to-byte v1, v5

    aput-byte v1, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v1           #b:B
    :cond_0
    sub-int v5, v2, v7

    goto :goto_1

    .restart local v1       #b:B
    :cond_1
    sub-int v5, v2, v7

    goto :goto_2

    .end local v1           #b:B
    .end local v2           #c:C
    :cond_2
    iput-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "signature"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/content/pm/Signature;

    move-object v1, v0

    .local v1, other:Landroid/content/pm/Signature;
    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v3, v1, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v1           #other:Landroid/content/pm/Signature;
    :goto_0
    return v2

    :catch_0
    move-exception v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/Signature;->mHaveHashCode:Z

    iget v0, p0, Landroid/content/pm/Signature;->mHashCode:I

    goto :goto_0
.end method

.method public toByteArray()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v1, v1

    new-array v0, v1, [B

    .local v0, bytes:[B
    iget-object v1, p0, Landroid/content/pm/Signature;->mSignature:[B

    iget-object v2, p0, Landroid/content/pm/Signature;->mSignature:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public toChars()[C
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/pm/Signature;->toChars([C[I)[C

    move-result-object v0

    return-object v0
.end method

.method public toChars([C[I)[C
    .locals 10
    .parameter "existingArray"
    .parameter "outLen"

    .prologue
    const/16 v9, 0xa

    iget-object v4, p0, Landroid/content/pm/Signature;->mSignature:[B

    .local v4, sig:[B
    array-length v0, v4

    .local v0, N:I
    mul-int/lit8 v1, v0, 0x2

    .local v1, N2:I
    if-eqz p1, :cond_0

    array-length v7, p1

    if-le v1, v7, :cond_1

    :cond_0
    new-array v7, v1, [C

    move-object v5, v7

    .local v5, text:[C
    :goto_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_4

    aget-byte v6, v4, v3

    .local v6, v:B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .local v2, d:I
    mul-int/lit8 v7, v3, 0x2

    if-lt v2, v9, :cond_2

    add-int/lit8 v8, v2, 0x61

    sub-int/2addr v8, v9

    :goto_2
    int-to-char v8, v8

    aput-char v8, v5, v7

    and-int/lit8 v2, v6, 0xf

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    if-lt v2, v9, :cond_3

    add-int/lit8 v8, v2, 0x61

    sub-int/2addr v8, v9

    :goto_3
    int-to-char v8, v8

    aput-char v8, v5, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v2           #d:I
    .end local v3           #j:I
    .end local v5           #text:[C
    .end local v6           #v:B
    :cond_1
    move-object v5, p1

    goto :goto_0

    .restart local v2       #d:I
    .restart local v3       #j:I
    .restart local v5       #text:[C
    .restart local v6       #v:B
    :cond_2
    add-int/lit8 v8, v2, 0x30

    goto :goto_2

    :cond_3
    add-int/lit8 v8, v2, 0x30

    goto :goto_3

    .end local v2           #d:I
    .end local v6           #v:B
    :cond_4
    if-eqz p2, :cond_5

    const/4 v7, 0x0

    aput v0, p2, v7

    :cond_5
    return-object v5
.end method

.method public toCharsString()Ljava/lang/String;
    .locals 3

    .prologue
    iget-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .local v0, str:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0           #str:Ljava/lang/String;
    .local v1, str:Ljava/lang/Object;
    :goto_1
    return-object v1

    .end local v1           #str:Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .restart local v0       #str:Ljava/lang/String;
    :cond_1
    new-instance v0, Ljava/lang/String;

    .end local v0           #str:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/Signature;->toChars()[C

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    .restart local v0       #str:Ljava/lang/String;
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Landroid/content/pm/Signature;->mStringRef:Ljava/lang/ref/SoftReference;

    move-object v1, v0

    .restart local v1       #str:Ljava/lang/Object;
    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "parcelableFlags"

    .prologue
    iget-object v0, p0, Landroid/content/pm/Signature;->mSignature:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
