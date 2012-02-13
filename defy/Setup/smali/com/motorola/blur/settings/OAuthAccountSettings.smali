.class public Lcom/motorola/blur/settings/OAuthAccountSettings;
.super Lcom/motorola/blur/settings/SNAccountSettings;
.source "OAuthAccountSettings.java"


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private mGotUrl:Z

.field private mResponseUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string v0, "OAuthAccountSettings"

    sput-object v0, Lcom/motorola/blur/settings/OAuthAccountSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/blur/settings/SNAccountSettings;-><init>(Landroid/content/Context;J)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mGotUrl:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mResponseUrl:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public authenticateFromService(Ljava/lang/String;)Z
    .locals 6
    .parameter "oldPass"

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 34
    .local v1, requested:Z
    iget-object v3, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mResolver:Landroid/content/ContentResolver;

    iget-wide v4, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mProviderId:J

    invoke-static {v3, v4, v5}, Lcom/motorola/blur/provider/DeviceSetup;->getProviderName(Landroid/content/ContentResolver;J)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, providerName:Ljava/lang/String;
    new-instance v2, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;

    iget-object v3, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;-><init>(Landroid/content/Context;)V

    .line 37
    .local v2, wsClient:Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;
    iget-boolean v3, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mGotUrl:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mResponseUrl:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 38
    iget-object v3, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mResponseUrl:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v3, v4}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->invokeCallbackUrl(Ljava/lang/String;Ljava/lang/String;Z)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    .line 42
    :goto_0
    const/4 v1, 0x1

    .line 43
    return v1

    .line 40
    :cond_0
    invoke-virtual {v2, v0}, Lcom/motorola/blur/service/blur/oauth/client/ManageOAuthWSClient;->getOAuthUrl(Ljava/lang/String;)Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    goto :goto_0
.end method

.method public isAuthRequired()Z
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public setGotUrl(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "gotUrl"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mGotUrl:Z

    .line 53
    return-void
.end method

.method public setResponseUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "responseUrl"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/motorola/blur/settings/OAuthAccountSettings;->mResponseUrl:Ljava/lang/String;

    .line 57
    return-void
.end method
