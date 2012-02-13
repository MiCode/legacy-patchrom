.class public final enum Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;
.super Ljava/lang/Enum;
.source "OemCdmaTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VZW_APN_MRU_Operation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

.field public static final enum CLEAR_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

.field public static final enum EDIT_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

.field public static final enum EDIT_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

.field public static final enum QUERY_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

.field public static final enum QUERY_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const-string v1, "EDIT_APN_TABLE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const-string v1, "QUERY_APN_TABLE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const-string v1, "EDIT_MRU_TABLE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const-string v1, "QUERY_MRU_TABLE"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    new-instance v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const-string v1, "CLEAR_MRU_TABLE"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->CLEAR_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_APN_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->EDIT_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->QUERY_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->CLEAR_MRU_TABLE:Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->$VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

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
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    return-object p0
.end method

.method public static values()[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->$VALUES:[Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    invoke-virtual {v0}, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/telephony/cdma/OemCdmaTelephonyManager$VZW_APN_MRU_Operation;

    return-object v0
.end method
