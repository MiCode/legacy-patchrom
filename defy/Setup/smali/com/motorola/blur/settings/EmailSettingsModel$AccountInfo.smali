.class Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;
.super Ljava/lang/Object;
.source "EmailSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/EmailSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccountInfo"
.end annotation


# instance fields
.field activeServiceId:J

.field authentication_type:I

.field capability:I

.field password:Ljava/lang/String;

.field port:I

.field retention_policy:I

.field secure:I

.field security_policy:I

.field server:Ljava/lang/String;

.field serviceId:J

.field username:Ljava/lang/String;

.field verify_ca:I


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->server:Ljava/lang/String;

    .line 119
    iput-object v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->username:Ljava/lang/String;

    .line 120
    iput-object v2, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->password:Ljava/lang/String;

    .line 121
    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->port:I

    .line 122
    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->secure:I

    .line 123
    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->capability:I

    .line 124
    iput-wide v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->serviceId:J

    .line 125
    iput-wide v3, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->activeServiceId:J

    .line 126
    iput v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->retention_policy:I

    .line 127
    iput v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->authentication_type:I

    .line 128
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->verify_ca:I

    .line 129
    iput v1, p0, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;->security_policy:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/blur/settings/EmailSettingsModel$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/motorola/blur/settings/EmailSettingsModel$AccountInfo;-><init>()V

    return-void
.end method
