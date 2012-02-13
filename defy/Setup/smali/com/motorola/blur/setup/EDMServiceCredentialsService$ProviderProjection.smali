.class final Lcom/motorola/blur/setup/EDMServiceCredentialsService$ProviderProjection;
.super Ljava/lang/Object;
.source "EDMServiceCredentialsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/EDMServiceCredentialsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderProjection"
.end annotation


# static fields
.field public static final CAPABILITY:I = 0x4

.field public static final LOGIN_LABEL:I = 0x3

.field public static final PRETTY_NAME:I = 0x0

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROVIDER:I = 0x1

.field public static final PWD_STORAGE_POLICY:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "provider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "pwd_storage_policy"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "login_label"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "capability"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/setup/EDMServiceCredentialsService$ProviderProjection;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
