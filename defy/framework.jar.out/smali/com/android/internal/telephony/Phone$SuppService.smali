.class public final enum Lcom/android/internal/telephony/Phone$SuppService;
.super Ljava/lang/Enum;
.source "Phone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SuppService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/Phone$SuppService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum REJECT:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "SWITCH"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "SEPARATE"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "TRANSFER"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "CONFERENCE"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "REJECT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    new-instance v0, Lcom/android/internal/telephony/Phone$SuppService;

    const-string v1, "HANGUP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/Phone$SuppService;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/internal/telephony/Phone$SuppService;

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->TRANSFER:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->CONFERENCE:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/Phone$SuppService;->$VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/Phone$SuppService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/Phone$SuppService;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/Phone$SuppService;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/Phone$SuppService;->$VALUES:[Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/Phone$SuppService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/Phone$SuppService;

    return-object v0
.end method
