.class public final enum Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;
.super Ljava/lang/Enum;
.source "SNPhotoProvidersInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ServiceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

.field public static final enum ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

.field public static final enum eProfilePhotoService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

.field public static final enum eShareBothService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

.field public static final enum eVideoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 468
    new-instance v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    const-string v1, "ePhotoShareService"

    invoke-direct {v0, v1, v2}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    new-instance v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    const-string v1, "eProfilePhotoService"

    invoke-direct {v0, v1, v3}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eProfilePhotoService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    new-instance v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    const-string v1, "eVideoShareService"

    invoke-direct {v0, v1, v4}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eVideoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    new-instance v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    const-string v1, "eShareBothService"

    invoke-direct {v0, v1, v5}, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eShareBothService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    sget-object v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->ePhotoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eProfilePhotoService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eVideoShareService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->eShareBothService:Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->$VALUES:[Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

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
    .line 468
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;
    .locals 1
    .parameter "name"

    .prologue
    .line 468
    const-class v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;
    .locals 1

    .prologue
    .line 468
    sget-object v0, Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->$VALUES:[Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    invoke-virtual {v0}, [Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/blur/socialshare/shared/SNPhotoProvidersInfo$ServiceType;

    return-object v0
.end method
