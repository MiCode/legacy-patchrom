.class final enum Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;
.super Ljava/lang/Enum;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EMSGSMS_CBMSG_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field public static final enum eMSGSMS_CB_MSG_CBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field public static final enum eMSGSMS_CB_MSG_CBS41:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field public static final enum eMSGSMS_CB_MSG_INVALID:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field public static final enum eMSGSMS_CB_MSG_JAVACBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

.field public static final enum eMSGSMS_CB_MSG_SCHEDULE:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    const-string v1, "eMSGSMS_CB_MSG_CBS"

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_CBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    .line 51
    new-instance v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    const-string v1, "eMSGSMS_CB_MSG_SCHEDULE"

    invoke-direct {v0, v1, v3}, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_SCHEDULE:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    .line 52
    new-instance v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    const-string v1, "eMSGSMS_CB_MSG_CBS41"

    invoke-direct {v0, v1, v4}, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_CBS41:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    .line 53
    new-instance v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    const-string v1, "eMSGSMS_CB_MSG_JAVACBS"

    invoke-direct {v0, v1, v5}, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_JAVACBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    .line 54
    new-instance v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    const-string v1, "eMSGSMS_CB_MSG_INVALID"

    invoke-direct {v0, v1, v6}, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_INVALID:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_CBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_SCHEDULE:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_CBS41:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_JAVACBS:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->eMSGSMS_CB_MSG_INVALID:Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    aput-object v1, v0, v6

    sput-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    return-object p0
.end method

.method public static values()[Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    invoke-virtual {v0}, [Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/gsm/CbMessage$EMSGSMS_CBMSG_TYPE;

    return-object v0
.end method
