.class final enum Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
.super Ljava/lang/Enum;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/SetUpEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum BROWSER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum CALL_CONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum CALL_DISCONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum LOCATION_STATUS:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum MT_CALL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

.field public static final enum USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;


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

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "MT_CALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->MT_CALL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "CALL_CONNECTED"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->CALL_CONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "CALL_DISCONNECTED"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->CALL_DISCONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "LOCATION_STATUS"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LOCATION_STATUS:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "USER_ACTIVITY"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "IDLE_SCREEN_AVAIL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "LANGUAGE_SELECTION"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const-string v1, "BROWSER_TERMINATION"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->BROWSER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->MT_CALL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->CALL_CONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->CALL_DISCONNECTED:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LOCATION_STATUS:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->BROWSER_TERMINATION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

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

    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    .locals 5
    .parameter "value"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->values()[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .local v3, r:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    iget v4, v3, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v3

    .end local v3           #r:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    :goto_1
    return-object v4

    .restart local v3       #r:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3           #r:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->mValue:I

    return v0
.end method
