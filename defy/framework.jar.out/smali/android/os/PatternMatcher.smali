.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter "pattern"
    .parameter "type"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    return-void
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 13
    .parameter "pattern"
    .parameter "match"
    .parameter "type"

    .prologue
    const/16 v12, 0x2a

    const/4 v11, 0x2

    const/16 v10, 0x2e

    const/4 v9, 0x1

    const/4 v8, 0x0

    if-nez p1, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_0

    :cond_1
    if-ne p2, v9, :cond_2

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    goto :goto_0

    :cond_2
    if-eq p2, v11, :cond_3

    move v7, v8

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, NP:I
    if-gtz v1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_4

    move v7, v9

    goto :goto_0

    :cond_4
    move v7, v8

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, NM:I
    const/4 v5, 0x0

    .local v5, ip:I
    const/4 v4, 0x0

    .local v4, im:I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .local v6, nextChar:C
    :goto_1
    if-ge v5, v1, :cond_15

    if-ge v4, v0, :cond_15

    move v2, v6

    .local v2, c:C
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :goto_2
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_8

    move v3, v9

    .local v3, escaped:Z
    :goto_3
    if-eqz v3, :cond_6

    move v2, v6

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_9

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :cond_6
    :goto_4
    if-ne v6, v12, :cond_13

    if-nez v3, :cond_10

    if-ne v2, v10, :cond_10

    sub-int v7, v1, v9

    if-lt v5, v7, :cond_a

    move v7, v9

    goto :goto_0

    .end local v3           #escaped:Z
    :cond_7
    move v6, v8

    goto :goto_2

    :cond_8
    move v3, v8

    goto :goto_3

    .restart local v3       #escaped:Z
    :cond_9
    move v6, v8

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_b

    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_c

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :cond_b
    :goto_5
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_d

    :goto_6
    if-ne v4, v0, :cond_e

    move v7, v8

    goto :goto_0

    :cond_c
    move v6, v8

    goto :goto_5

    :cond_d
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_b

    goto :goto_6

    :cond_e
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_f

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_f
    move v6, v8

    goto :goto_7

    :cond_10
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v2, :cond_11

    :goto_8
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v1, :cond_12

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :goto_9
    goto :goto_1

    :cond_11
    add-int/lit8 v4, v4, 0x1

    if-lt v4, v0, :cond_10

    goto :goto_8

    :cond_12
    move v6, v8

    goto :goto_9

    :cond_13
    if-eq v2, v10, :cond_14

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v2, :cond_14

    move v7, v8

    goto/16 :goto_0

    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .end local v2           #c:C
    .end local v3           #escaped:Z
    :cond_15
    if-lt v5, v1, :cond_16

    if-lt v4, v0, :cond_16

    move v7, v9

    goto/16 :goto_0

    :cond_16
    sub-int v7, v1, v11

    if-ne v5, v7, :cond_17

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_17

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_17

    move v7, v9

    goto/16 :goto_0

    :cond_17
    move v7, v8

    goto/16 :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 2
    .parameter "str"

    .prologue
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v0, "? "

    .local v0, type:Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :pswitch_0
    const-string v0, "LITERAL: "

    goto :goto_0

    :pswitch_1
    const-string v0, "PREFIX: "

    goto :goto_0

    :pswitch_2
    const-string v0, "GLOB: "

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
