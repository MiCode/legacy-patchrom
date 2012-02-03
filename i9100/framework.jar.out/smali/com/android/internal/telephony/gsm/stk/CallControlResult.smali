.class final enum Lcom/android/internal/telephony/gsm/stk/CallControlResult;
.super Ljava/lang/Enum;
.source "StkService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/gsm/stk/CallControlResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/gsm/stk/CallControlResult;

.field public static final enum CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

.field public static final enum CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

.field public static final enum CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

.field public static final enum CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/gsm/stk/CallControlResult;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    const-string v1, "CALL_CONTROL_NO_CONTROL"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    const-string v1, "CALL_CONTROL_ALLOWED_NO_MOD"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    const-string v1, "CALL_CONTROL_NOT_ALLOWED"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    .line 96
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    const-string v1, "CALL_CONTROL_ALLOWED_WITH_MOD"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    .line 92
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NO_CONTROL:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_NO_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_NOT_ALLOWED:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->CALL_CONTROL_ALLOWED_WITH_MOD:Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CallControlResult;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 101
    iput p3, p0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->mValue:I

    .line 102
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    .locals 5
    .parameter "value"

    .prologue
    .line 114
    invoke-static {}, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->values()[Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    move-result-object v0

    .local v0, arr$:[Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 115
    .local v1, e:Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->mValue:I

    if-ne v4, p0, :cond_0

    move-object v4, v1

    .line 119
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    :goto_1
    return-object v4

    .line 114
    .restart local v1       #e:Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .end local v1           #e:Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 92
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/gsm/stk/CallControlResult;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->$VALUES:[Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/gsm/stk/CallControlResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/gsm/stk/CallControlResult;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/android/internal/telephony/gsm/stk/CallControlResult;->mValue:I

    return v0
.end method
