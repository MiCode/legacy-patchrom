.class public final enum Lcom/google/android/util/AbstractMessageParser$Token$Type;
.super Ljava/lang/Enum;
.source "AbstractMessageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/util/AbstractMessageParser$Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/util/AbstractMessageParser$Token$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

.field public static final enum YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;


# instance fields
.field private stringRep:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "HTML"

    const-string v2, "html"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FORMAT"

    const-string v2, "format"

    invoke-direct {v0, v1, v5, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "LINK"

    const-string v2, "l"

    invoke-direct {v0, v1, v6, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "SMILEY"

    const-string v2, "e"

    invoke-direct {v0, v1, v7, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "ACRONYM"

    const-string v2, "a"

    invoke-direct {v0, v1, v8, v2}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "MUSIC"

    const/4 v2, 0x5

    const-string v3, "m"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "GOOGLE_VIDEO"

    const/4 v2, 0x6

    const-string v3, "v"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "YOUTUBE_VIDEO"

    const/4 v2, 0x7

    const-string v3, "yt"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "PHOTO"

    const/16 v2, 0x8

    const-string v3, "p"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    new-instance v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const-string v1, "FLICKR"

    const/16 v2, 0x9

    const-string v3, "f"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/util/AbstractMessageParser$Token$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->HTML:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FORMAT:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->LINK:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->SMILEY:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/util/AbstractMessageParser$Token$Type;->ACRONYM:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->MUSIC:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->GOOGLE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->YOUTUBE_VIDEO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->PHOTO:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/google/android/util/AbstractMessageParser$Token$Type;->FLICKR:Lcom/google/android/util/AbstractMessageParser$Token$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "stringRep"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object p0
.end method

.method public static values()[Lcom/google/android/util/AbstractMessageParser$Token$Type;
    .locals 1

    .prologue
    sget-object v0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->$VALUES:[Lcom/google/android/util/AbstractMessageParser$Token$Type;

    invoke-virtual {v0}, [Lcom/google/android/util/AbstractMessageParser$Token$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/util/AbstractMessageParser$Token$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/google/android/util/AbstractMessageParser$Token$Type;->stringRep:Ljava/lang/String;

    return-object v0
.end method
