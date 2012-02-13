.class public final enum Landroid/net/vpn/VpnState;
.super Ljava/lang/Enum;
.source "VpnState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/net/vpn/VpnState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/net/vpn/VpnState;

.field public static final enum CANCELLED:Landroid/net/vpn/VpnState;

.field public static final enum CONNECTED:Landroid/net/vpn/VpnState;

.field public static final enum CONNECTING:Landroid/net/vpn/VpnState;

.field public static final enum DISCONNECTING:Landroid/net/vpn/VpnState;

.field public static final enum IDLE:Landroid/net/vpn/VpnState;

.field public static final enum UNKNOWN:Landroid/net/vpn/VpnState;

.field public static final enum UNUSABLE:Landroid/net/vpn/VpnState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v3}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "DISCONNECTING"

    invoke-direct {v0, v1, v4}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "CANCELLED"

    invoke-direct {v0, v1, v5}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v7}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "UNUSABLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->UNUSABLE:Landroid/net/vpn/VpnState;

    new-instance v0, Landroid/net/vpn/VpnState;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/vpn/VpnState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/vpn/VpnState;->UNKNOWN:Landroid/net/vpn/VpnState;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/net/vpn/VpnState;

    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTING:Landroid/net/vpn/VpnState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/net/vpn/VpnState;->DISCONNECTING:Landroid/net/vpn/VpnState;

    aput-object v1, v0, v4

    sget-object v1, Landroid/net/vpn/VpnState;->CANCELLED:Landroid/net/vpn/VpnState;

    aput-object v1, v0, v5

    sget-object v1, Landroid/net/vpn/VpnState;->CONNECTED:Landroid/net/vpn/VpnState;

    aput-object v1, v0, v6

    sget-object v1, Landroid/net/vpn/VpnState;->IDLE:Landroid/net/vpn/VpnState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/net/vpn/VpnState;->UNUSABLE:Landroid/net/vpn/VpnState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/net/vpn/VpnState;->UNKNOWN:Landroid/net/vpn/VpnState;

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/vpn/VpnState;->$VALUES:[Landroid/net/vpn/VpnState;

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

.method public static valueOf(Ljava/lang/String;)Landroid/net/vpn/VpnState;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Landroid/net/vpn/VpnState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/net/vpn/VpnState;

    return-object p0
.end method

.method public static values()[Landroid/net/vpn/VpnState;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/vpn/VpnState;->$VALUES:[Landroid/net/vpn/VpnState;

    invoke-virtual {v0}, [Landroid/net/vpn/VpnState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/vpn/VpnState;

    return-object v0
.end method
