.class public final enum Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
.super Ljava/lang/Enum;
.source "AppInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/stk/AppInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

.field public static final enum SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x12

    const/16 v7, 0x11

    const/16 v6, 0x10

    const/4 v5, 0x5

    const/4 v4, 0x1

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "DISPLAY_TEXT"

    const/4 v2, 0x0

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INKEY"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "GET_INPUT"

    const/4 v2, 0x2

    const/16 v3, 0x23

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "LAUNCH_BROWSER"

    const/4 v2, 0x3

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PLAY_TONE"

    const/4 v2, 0x4

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v5, v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SELECT_ITEM"

    const/4 v2, 0x6

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2, v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_USSD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v8}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_SMS"

    const/16 v2, 0x9

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_DTMF"

    const/16 v2, 0xa

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_EVENT_LIST"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_IDLE_MODE_TEXT"

    const/16 v2, 0xc

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_MENU"

    const/16 v2, 0xd

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "PROVIDE_LOCAL_INFO"

    const/16 v2, 0xe

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "LANGUAGE_NOTIFICATION"

    const/16 v2, 0xf

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SET_UP_CALL"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "OPEN_CHANNEL"

    const/16 v2, 0x40

    invoke-direct {v0, v1, v7, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "CLOSE_CHANNEL"

    const/16 v2, 0x41

    invoke-direct {v0, v1, v8, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "RECEIVE_DATA"

    const/16 v2, 0x13

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const-string v1, "SEND_DATA"

    const/16 v2, 0x14

    const/16 v3, 0x43

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const/16 v0, 0x15

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->REFRESH:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v5

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_USSD:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_SMS:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DTMF:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->PROVIDE_LOCAL_INFO:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->LANGUAGE_NOTIFICATION:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->CLOSE_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v1, v0, v8

    const/16 v1, 0x13

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->RECEIVE_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SEND_DATA:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

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

    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 5
    .parameter "value"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .local v1, e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :goto_1
    return-object v4

    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->mValue:I

    return v0
.end method
