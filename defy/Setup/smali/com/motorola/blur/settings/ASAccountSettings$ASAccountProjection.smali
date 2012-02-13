.class public final Lcom/motorola/blur/settings/ASAccountSettings$ASAccountProjection;
.super Ljava/lang/Object;
.source "ASAccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/ASAccountSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ASAccountProjection"
.end annotation


# static fields
.field public static final ACCOUNT_PRETTY_NAME:I = 0xc

.field public static final ACTIVE_SERVICE_ID:I = 0x5

.field public static final CAPABILITY:I = 0x8

.field public static final EMAIL_ADDRESS:I = 0xa

.field public static final ERROR:I = 0xe

.field public static final PASSWORD:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String; = null

.field public static final PROVIDERS_ID:I = 0x4

.field public static final PROVIDER_PRETTY_NAME:I = 0x6

.field public static final RETENTION_POLICY:I = 0xb

.field public static final SECURE:I = 0x7

.field public static final SERVER_ADDRESS:I = 0x3

.field public static final SERVER_PORT:I = 0x9

.field public static final SERVICE_ID:I = 0x0

.field public static final USERNAME:I = 0x1

.field public static final VERIFY_CA:I = 0xd


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 20
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "service_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "username"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "password"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "server_address"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "providers_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "active_services._id AS _id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "providers.pretty_name AS pretty_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "secure"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "capability"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "server_port"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "email_address"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "retention_policy"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_pretty_name"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "verify_ca"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "error"

    aput-object v2, v0, v1

    sput-object v0, Lcom/motorola/blur/settings/ASAccountSettings$ASAccountProjection;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
