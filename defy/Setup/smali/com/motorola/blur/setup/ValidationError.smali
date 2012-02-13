.class public final enum Lcom/motorola/blur/setup/ValidationError;
.super Ljava/lang/Enum;
.source "ValidationError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/setup/ValidationError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/setup/ValidationError;

.field public static final enum BAD_FORMAT:Lcom/motorola/blur/setup/ValidationError;

.field public static final enum EXCEEDS_MAX_LENGTH:Lcom/motorola/blur/setup/ValidationError;

.field public static final enum NOT_MIN_LENGTH:Lcom/motorola/blur/setup/ValidationError;

.field public static final enum ORIGINAL_INCORRECT:Lcom/motorola/blur/setup/ValidationError;

.field public static final enum VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

.field public static final enum VALUES_DONT_MATCH:Lcom/motorola/blur/setup/ValidationError;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "VALID_VALUE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    .line 12
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "NOT_MIN_LENGTH"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->NOT_MIN_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    .line 13
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "EXCEEDS_MAX_LENGTH"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->EXCEEDS_MAX_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    .line 14
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "BAD_FORMAT"

    invoke-direct {v0, v1, v6}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->BAD_FORMAT:Lcom/motorola/blur/setup/ValidationError;

    .line 15
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "VALUES_DONT_MATCH"

    invoke-direct {v0, v1, v7}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->VALUES_DONT_MATCH:Lcom/motorola/blur/setup/ValidationError;

    .line 16
    new-instance v0, Lcom/motorola/blur/setup/ValidationError;

    const-string v1, "ORIGINAL_INCORRECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/setup/ValidationError;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->ORIGINAL_INCORRECT:Lcom/motorola/blur/setup/ValidationError;

    .line 10
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/motorola/blur/setup/ValidationError;

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALID_VALUE:Lcom/motorola/blur/setup/ValidationError;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->NOT_MIN_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->EXCEEDS_MAX_LENGTH:Lcom/motorola/blur/setup/ValidationError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->BAD_FORMAT:Lcom/motorola/blur/setup/ValidationError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/motorola/blur/setup/ValidationError;->VALUES_DONT_MATCH:Lcom/motorola/blur/setup/ValidationError;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/motorola/blur/setup/ValidationError;->ORIGINAL_INCORRECT:Lcom/motorola/blur/setup/ValidationError;

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/ValidationError;->$VALUES:[Lcom/motorola/blur/setup/ValidationError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/setup/ValidationError;
    .locals 1
    .parameter "name"

    .prologue
    .line 10
    const-class v0, Lcom/motorola/blur/setup/ValidationError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/setup/ValidationError;

    return-object p0
.end method

.method public static values()[Lcom/motorola/blur/setup/ValidationError;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/motorola/blur/setup/ValidationError;->$VALUES:[Lcom/motorola/blur/setup/ValidationError;

    invoke-virtual {v0}, [Lcom/motorola/blur/setup/ValidationError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/setup/ValidationError;

    return-object v0
.end method
