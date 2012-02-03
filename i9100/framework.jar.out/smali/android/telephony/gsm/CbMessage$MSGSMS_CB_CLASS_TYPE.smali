.class final enum Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;
.super Ljava/lang/Enum;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MSGSMS_CB_CLASS_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_0:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_3:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

.field public static final enum MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 80
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_0"

    invoke-direct {v0, v1, v4, v4}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_0:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 81
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_1"

    invoke-direct {v0, v1, v5, v5}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 82
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_2"

    invoke-direct {v0, v1, v6, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 83
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_3"

    invoke-direct {v0, v1, v7, v7}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_3:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 84
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_NONE"

    invoke-direct {v0, v1, v8, v8}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 86
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    const-string v1, "MSGSMS_CB_CLASS_MAX"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    .line 79
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_0:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_3:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_NONE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->MSGSMS_CB_CLASS_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "EnumValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 79
    const-class v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    return-object p0
.end method

.method public static values()[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    invoke-virtual {v0}, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;

    return-object v0
.end method


# virtual methods
.method public setClassType(I)V
    .locals 0
    .parameter "EnumValue"

    .prologue
    .line 93
    iput p1, p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CLASS_TYPE;->value:I

    return-void
.end method
