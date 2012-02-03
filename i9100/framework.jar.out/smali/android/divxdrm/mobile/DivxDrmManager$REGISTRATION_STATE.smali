.class public final enum Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
.super Ljava/lang/Enum;
.source "DivxDrmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/divxdrm/mobile/DivxDrmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "REGISTRATION_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum CORRUPTED_DRM_LIBRARY:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum DRM_NEVER_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum DRM_RENTAL_EXPIRED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum NOT_AUTHORIZED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum NOT_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

.field public static final enum REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v3}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "NOT_REGISTERED"

    invoke-direct {v0, v1, v4}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "NOT_AUTHORIZED"

    invoke-direct {v0, v1, v5}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_AUTHORIZED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "DRM_NEVER_REGISTERED"

    invoke-direct {v0, v1, v6}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_NEVER_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "DRM_RENTAL_EXPIRED"

    invoke-direct {v0, v1, v7}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_RENTAL_EXPIRED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    new-instance v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    const-string v1, "CORRUPTED_DRM_LIBRARY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->CORRUPTED_DRM_LIBRARY:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    sget-object v1, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v1, v0, v3

    sget-object v1, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v1, v0, v4

    sget-object v1, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->NOT_AUTHORIZED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v1, v0, v5

    sget-object v1, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_NEVER_REGISTERED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v1, v0, v6

    sget-object v1, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->DRM_RENTAL_EXPIRED:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->CORRUPTED_DRM_LIBRARY:Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    aput-object v2, v0, v1

    sput-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->$VALUES:[Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1
    .parameter "name"

    .prologue
    .line 18
    const-class v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    return-object p0
.end method

.method public static values()[Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->$VALUES:[Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    invoke-virtual {v0}, [Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/divxdrm/mobile/DivxDrmManager$REGISTRATION_STATE;

    return-object v0
.end method
