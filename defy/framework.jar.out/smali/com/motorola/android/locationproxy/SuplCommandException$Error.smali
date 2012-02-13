.class public final enum Lcom/motorola/android/locationproxy/SuplCommandException$Error;
.super Ljava/lang/Enum;
.source "SuplCommandException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/locationproxy/SuplCommandException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Error"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/locationproxy/SuplCommandException$Error;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/locationproxy/SuplCommandException$Error;

.field public static final enum DB_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

.field public static final enum GENERIC_FAILURE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

.field public static final enum INVALID_RESPONSE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

.field public static final enum SOCKET_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

.field public static final enum SUPL_NOT_AVAILABLE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const-string v1, "INVALID_RESPONSE"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->INVALID_RESPONSE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const-string v1, "SUPL_NOT_AVAILABLE"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->SUPL_NOT_AVAILABLE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const-string v1, "GENERIC_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->GENERIC_FAILURE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const-string v1, "DB_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->DB_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    new-instance v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const-string v1, "SOCKET_ERROR"

    invoke-direct {v0, v1, v6}, Lcom/motorola/android/locationproxy/SuplCommandException$Error;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->SOCKET_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->INVALID_RESPONSE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->SUPL_NOT_AVAILABLE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->GENERIC_FAILURE:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->DB_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    aput-object v1, v0, v5

    sget-object v1, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->SOCKET_ERROR:Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    aput-object v1, v0, v6

    sput-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->$VALUES:[Lcom/motorola/android/locationproxy/SuplCommandException$Error;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/locationproxy/SuplCommandException$Error;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    return-object p0
.end method

.method public static values()[Lcom/motorola/android/locationproxy/SuplCommandException$Error;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/locationproxy/SuplCommandException$Error;->$VALUES:[Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    invoke-virtual {v0}, [Lcom/motorola/android/locationproxy/SuplCommandException$Error;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/locationproxy/SuplCommandException$Error;

    return-object v0
.end method
