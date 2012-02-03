.class final enum Lcom/android/server/enterprise/DeviceShell$OUTPUT;
.super Ljava/lang/Enum;
.source "DeviceShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/DeviceShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OUTPUT"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/enterprise/DeviceShell$OUTPUT;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/DeviceShell$OUTPUT;

.field public static final enum BOTH:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

.field public static final enum STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

.field public static final enum STDOUT:Lcom/android/server/enterprise/DeviceShell$OUTPUT;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    new-instance v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    const-string v1, "STDOUT"

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/DeviceShell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDOUT:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    new-instance v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    const-string v1, "STDERR"

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/DeviceShell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    new-instance v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    const-string v1, "BOTH"

    invoke-direct {v0, v1, v4}, Lcom/android/server/enterprise/DeviceShell$OUTPUT;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->BOTH:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDOUT:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->STDERR:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->BOTH:Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->$VALUES:[Lcom/android/server/enterprise/DeviceShell$OUTPUT;

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
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/DeviceShell$OUTPUT;
    .locals 1
    .parameter "name"

    .prologue
    .line 43
    const-class v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/DeviceShell$OUTPUT;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/android/server/enterprise/DeviceShell$OUTPUT;->$VALUES:[Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/DeviceShell$OUTPUT;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/DeviceShell$OUTPUT;

    return-object v0
.end method
