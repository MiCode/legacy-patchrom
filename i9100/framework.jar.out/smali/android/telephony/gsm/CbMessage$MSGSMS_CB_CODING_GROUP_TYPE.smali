.class final enum Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;
.super Ljava/lang/Enum;
.source "CbMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/gsm/CbMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MSGSMS_CB_CODING_GROUP_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_ALPHA:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_GENERAL_LANG:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_RES1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_RES2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_CB_WAP:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_AUTO_DELETION:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_WAITING_DISCARD:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_WAITING_STORE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

.field public static final enum MSGSMS_CB_CODGRP_SM_WAITING_STORE_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_GENERAL_DCS"

    invoke-direct {v0, v1, v3}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 60
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_GENERAL_LANG"

    invoke-direct {v0, v1, v4}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_GENERAL_LANG:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 61
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_ALPHA"

    invoke-direct {v0, v1, v5}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_ALPHA:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 62
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_RES1"

    invoke-direct {v0, v1, v6}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_RES1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 63
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_RES2"

    invoke-direct {v0, v1, v7}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_RES2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 64
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_AUTO_DELETION"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_AUTO_DELETION:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 68
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_GENERAL_DCS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 69
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_WAITING_DISCARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_DISCARD:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 70
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_WAITING_STORE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_STORE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 71
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_WAITING_STORE_UCS2"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_STORE_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 72
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_WAP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_WAP:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 73
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_SM_CLASS_CODING"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 74
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_CB_CLASS_CODING"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 76
    new-instance v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    const-string v1, "MSGSMS_CB_CODGRP_MAX"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    .line 58
    const/16 v0, 0xe

    new-array v0, v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_GENERAL_LANG:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_ALPHA:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_RES1:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_RES2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_AUTO_DELETION:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_GENERAL_DCS:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_DISCARD:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_STORE:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_WAITING_STORE_UCS2:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_WAP:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_SM_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_CB_CLASS_CODING:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->MSGSMS_CB_CODGRP_MAX:Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    aput-object v2, v0, v1

    sput-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

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
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;
    .locals 1
    .parameter "name"

    .prologue
    .line 58
    const-class v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    return-object p0
.end method

.method public static values()[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->$VALUES:[Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    invoke-virtual {v0}, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/gsm/CbMessage$MSGSMS_CB_CODING_GROUP_TYPE;

    return-object v0
.end method
