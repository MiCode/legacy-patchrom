.class public Landroid/net/rtp/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field public static final AMR:Landroid/net/rtp/AudioCodec;

.field public static final GSM:Landroid/net/rtp/AudioCodec;

.field public static final GSM_EFR:Landroid/net/rtp/AudioCodec;

.field public static final PCMA:Landroid/net/rtp/AudioCodec;

.field public static final PCMU:Landroid/net/rtp/AudioCodec;

.field private static final sCodecs:[Landroid/net/rtp/AudioCodec;


# instance fields
.field public final fmtp:Ljava/lang/String;

.field public final rtpmap:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const-string v1, "PCMU/8000"

    invoke-direct {v0, v4, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x8

    const-string v2, "PCMA/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const-string v1, "GSM/8000"

    invoke-direct {v0, v5, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x60

    const-string v2, "GSM-EFR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x61

    const-string v2, "AMR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    const/4 v0, 0x5

    new-array v0, v0, [Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    aput-object v1, v0, v4

    const/4 v1, 0x1

    sget-object v2, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    sget-object v1, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    aput-object v1, v0, v5

    const/4 v1, 0x4

    sget-object v2, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "type"
    .parameter "rtpmap"
    .parameter "fmtp"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/rtp/AudioCodec;->type:I

    iput-object p2, p0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    return-void
.end method

.method public static getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;
    .locals 9
    .parameter "type"
    .parameter "rtpmap"
    .parameter "fmtp"

    .prologue
    const/4 v8, 0x0

    if-ltz p0, :cond_0

    const/16 v7, 0x7f

    if-le p0, v7, :cond_1

    :cond_0
    move-object v7, v8

    :goto_0
    return-object v7

    :cond_1
    const/4 v4, 0x0

    .local v4, hint:Landroid/net/rtp/AudioCodec;
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .local v2, clue:Ljava/lang/String;
    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    .local v0, arr$:[Landroid/net/rtp/AudioCodec;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .local v3, codec:Landroid/net/rtp/AudioCodec;
    iget-object v7, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .local v1, channels:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "/1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    move-object v4, v3

    .end local v0           #arr$:[Landroid/net/rtp/AudioCodec;
    .end local v1           #channels:Ljava/lang/String;
    .end local v2           #clue:Ljava/lang/String;
    .end local v3           #codec:Landroid/net/rtp/AudioCodec;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_3
    :goto_2
    if-nez v4, :cond_7

    move-object v7, v8

    goto :goto_0

    .restart local v0       #arr$:[Landroid/net/rtp/AudioCodec;
    .restart local v2       #clue:Ljava/lang/String;
    .restart local v3       #codec:Landroid/net/rtp/AudioCodec;
    .restart local v5       #i$:I
    .restart local v6       #len$:I
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .end local v0           #arr$:[Landroid/net/rtp/AudioCodec;
    .end local v2           #clue:Ljava/lang/String;
    .end local v3           #codec:Landroid/net/rtp/AudioCodec;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_5
    const/16 v7, 0x60

    if-ge p0, v7, :cond_3

    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    .restart local v0       #arr$:[Landroid/net/rtp/AudioCodec;
    array-length v6, v0

    .restart local v6       #len$:I
    const/4 v5, 0x0

    .restart local v5       #i$:I
    :goto_3
    if-ge v5, v6, :cond_3

    aget-object v3, v0, v5

    .restart local v3       #codec:Landroid/net/rtp/AudioCodec;
    iget v7, v3, Landroid/net/rtp/AudioCodec;->type:I

    if-ne p0, v7, :cond_6

    move-object v4, v3

    iget-object p1, v3, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    goto :goto_2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .end local v0           #arr$:[Landroid/net/rtp/AudioCodec;
    .end local v3           #codec:Landroid/net/rtp/AudioCodec;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_7
    sget-object v7, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    if-ne v4, v7, :cond_9

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .restart local v2       #clue:Ljava/lang/String;
    const-string v7, "crc=1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "robust-sorting=1"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v7, "interleaving="

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    :cond_8
    move-object v7, v8

    goto :goto_0

    .end local v2           #clue:Ljava/lang/String;
    :cond_9
    new-instance v7, Landroid/net/rtp/AudioCodec;

    invoke-direct {v7, p0, p1, p2}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getCodecs()[Landroid/net/rtp/AudioCodec;
    .locals 2

    .prologue
    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/rtp/AudioCodec;

    return-object v0
.end method
