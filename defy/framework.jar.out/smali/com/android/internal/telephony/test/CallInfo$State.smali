.class final enum Lcom/android/internal/telephony/test/CallInfo$State;
.super Ljava/lang/Enum;
.source "SimulatedGsmCallState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/test/CallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/test/CallInfo$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

.field public static final enum WAITING:Lcom/android/internal/telephony/test/CallInfo$State;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    new-instance v0, Lcom/android/internal/telephony/test/CallInfo$State;

    const-string v1, "WAITING"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/test/CallInfo$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/internal/telephony/test/CallInfo$State;

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ACTIVE:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->HOLDING:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->DIALING:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->ALERTING:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/test/CallInfo$State;->INCOMING:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/test/CallInfo$State;->WAITING:Lcom/android/internal/telephony/test/CallInfo$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

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

    iput p3, p0, Lcom/android/internal/telephony/test/CallInfo$State;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/test/CallInfo$State;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/test/CallInfo$State;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/test/CallInfo$State;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/test/CallInfo$State;->$VALUES:[Lcom/android/internal/telephony/test/CallInfo$State;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/test/CallInfo$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/test/CallInfo$State;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/test/CallInfo$State;->value:I

    return v0
.end method
