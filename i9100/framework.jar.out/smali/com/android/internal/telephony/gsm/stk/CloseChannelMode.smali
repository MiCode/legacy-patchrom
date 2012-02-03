.class public final enum Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
.super Ljava/lang/Enum;
.source "CloseChannelMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

.field public static final enum CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

.field public static final enum CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    const-string v1, "CLOSE_TCP_AND_TCP_IN_CLOSED_STATE"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    .line 34
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    const-string v1, "CLOSE_TCP_AND_TCP_IN_LISTEN_STATE"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    .line 25
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 39
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->mValue:I

    .line 40
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    .locals 5
    .parameter "value"

    .prologue
    .line 47
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->values()[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 48
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .line 52
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    :goto_1
    return-object v4

    .line 47
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->mValue:I

    return v0
.end method
