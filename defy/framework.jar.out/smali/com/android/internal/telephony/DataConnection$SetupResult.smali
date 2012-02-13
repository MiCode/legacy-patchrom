.class public final enum Lcom/android/internal/telephony/DataConnection$SetupResult;
.super Ljava/lang/Enum;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "SetupResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/DataConnection$SetupResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

.field public static final enum SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;


# instance fields
.field public mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_BadCommand"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_BadDns"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_Other"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "ERR_Stale"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    new-instance v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/DataConnection$SetupResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/internal/telephony/DataConnection$SetupResult;

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/DataConnection$SetupResult;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnection$SetupResult;->$VALUES:[Lcom/android/internal/telephony/DataConnection$SetupResult;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/DataConnection$SetupResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/DataConnection$SetupResult;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnection$1;->$SwitchMap$com$android$internal$telephony$DataConnection$SetupResult:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection$SetupResult;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "Bad Command"

    goto :goto_0

    :pswitch_1
    const-string v0, "Bad DNS"

    goto :goto_0

    :pswitch_2
    const-string v0, "Other error"

    goto :goto_0

    :pswitch_3
    const-string v0, "Stale command"

    goto :goto_0

    :pswitch_4
    const-string v0, "SUCCESS"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
