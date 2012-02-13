.class public final enum Lcom/android/internal/telephony/gsm/stk/TextColor;
.super Ljava/lang/Enum;
.source "TextColor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/TextColor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BLACK:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum BRIGHT_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum DARK_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

.field public static final enum WHITE:Lcom/android/internal/telephony/gsm/stk/TextColor;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BLACK"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BLACK:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_GRAY"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_RED"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_YELLOW"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_GREEN"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_CYAN"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_BLUE"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "DARK_MAGENTA"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "GRAY"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "WHITE"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->WHITE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_RED"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_YELLOW"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_GREEN"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_CYAN"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_BLUE"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    const-string v1, "BRIGHT_MAGENTA"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/TextColor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/TextColor;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->BLACK:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->DARK_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->GRAY:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->WHITE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_RED:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_YELLOW:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_GREEN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_CYAN:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_BLUE:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/TextColor;->BRIGHT_MAGENTA:Lcom/android/internal/telephony/gsm/stk/TextColor;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/TextColor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/TextColor;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/TextColor;
    .locals 5
    .parameter "value"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/TextColor;->values()[Lcom/android/internal/telephony/gsm/stk/TextColor;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/TextColor;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, e:Lcom/android/internal/telephony/gsm/stk/TextColor;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/TextColor;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/TextColor;
    :goto_1
    return-object v4

    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/TextColor;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/TextColor;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/TextColor;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/TextColor;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/TextColor;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/TextColor;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/TextColor;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/TextColor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/TextColor;

    return-object v0
.end method
