.class public final enum Lcom/motorola/android/provider/Checkin$Properties$Tag;
.super Ljava/lang/Enum;
.source "Checkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/provider/Checkin$Properties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Tag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/android/provider/Checkin$Properties$Tag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

.field public static final enum LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "DESIRED_BUILD"

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "EVENT_LIMIT"

    invoke-direct {v0, v1, v3}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    new-instance v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const-string v1, "LOG_LEVEL"

    invoke-direct {v0, v1, v4}, Lcom/motorola/android/provider/Checkin$Properties$Tag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/motorola/android/provider/Checkin$Properties$Tag;

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->DESIRED_BUILD:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->EVENT_LIMIT:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/android/provider/Checkin$Properties$Tag;->LOG_LEVEL:Lcom/motorola/android/provider/Checkin$Properties$Tag;

    aput-object v1, v0, v4

    sput-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

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

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/android/provider/Checkin$Properties$Tag;
    .locals 1
    .parameter "name"

    .prologue
    const-class v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/provider/Checkin$Properties$Tag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/android/provider/Checkin$Properties$Tag;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/provider/Checkin$Properties$Tag;->$VALUES:[Lcom/motorola/android/provider/Checkin$Properties$Tag;

    invoke-virtual {v0}, [Lcom/motorola/android/provider/Checkin$Properties$Tag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/android/provider/Checkin$Properties$Tag;

    return-object v0
.end method
