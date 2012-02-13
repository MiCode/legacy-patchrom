.class public abstract Lcom/motorola/blur/settings/AccountSettings;
.super Ljava/lang/Object;
.source "AccountSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/blur/settings/AccountSettings$AccountType;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field protected mAccountId:J

.field protected mAccountPrettyName:Ljava/lang/String;

.field protected mAuthRequired:Z

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mEmail:Ljava/lang/String;

.field protected mError:I

.field protected mIsRevertCandidate:Z

.field protected mPassword:Ljava/lang/String;

.field protected mProviderId:J

.field protected mProviderPrettyName:Ljava/lang/String;

.field protected mResolver:Landroid/content/ContentResolver;

.field protected mServicePrettyNames:[Ljava/lang/String;

.field protected mTypeOfAccount:I

.field protected mUri:Landroid/net/Uri;

.field protected mUserPrettyName:Ljava/lang/String;

.field protected mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-string v0, "AccountSettings"

    sput-object v0, Lcom/motorola/blur/settings/AccountSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "accountId"

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mContext:Landroid/content/Context;

    .line 29
    iput-wide v3, p0, Lcom/motorola/blur/settings/AccountSettings;->mAccountId:J

    .line 30
    iput-wide v3, p0, Lcom/motorola/blur/settings/AccountSettings;->mProviderId:J

    .line 31
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mUri:Landroid/net/Uri;

    .line 32
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mResolver:Landroid/content/ContentResolver;

    .line 33
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mCursor:Landroid/database/Cursor;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mTypeOfAccount:I

    .line 35
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mPassword:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mEmail:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mUsername:Ljava/lang/String;

    .line 38
    iput-boolean v2, p0, Lcom/motorola/blur/settings/AccountSettings;->mIsRevertCandidate:Z

    .line 39
    iput-boolean v2, p0, Lcom/motorola/blur/settings/AccountSettings;->mAuthRequired:Z

    .line 40
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mProviderPrettyName:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    .line 42
    iput v2, p0, Lcom/motorola/blur/settings/AccountSettings;->mError:I

    .line 43
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mAccountPrettyName:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/motorola/blur/settings/AccountSettings;->mUserPrettyName:Ljava/lang/String;

    .line 47
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountSettings;->mContext:Landroid/content/Context;

    .line 48
    iput-wide p2, p0, Lcom/motorola/blur/settings/AccountSettings;->mAccountId:J

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mResolver:Landroid/content/ContentResolver;

    .line 50
    sget-object v0, Lcom/motorola/blur/provider/DeviceSetup$ActiveServices;->BY_ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mUri:Landroid/net/Uri;

    .line 53
    return-void
.end method


# virtual methods
.method public abstract authenticateFromService(Ljava/lang/String;)Z
.end method

.method public getAccountId()J
    .locals 2

    .prologue
    .line 72
    iget-wide v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mAccountId:J

    return-wide v0
.end method

.method public abstract getAccountPrettyName()Ljava/lang/String;
.end method

.method public abstract getActivated(I)Z
.end method

.method public abstract getCapability(I)I
.end method

.method public getEmailAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getEmailRetentionPolicy()I
.end method

.method public final getError()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mError:I

    return v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getProviderId()J
    .locals 2

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mProviderId:J

    return-wide v0
.end method

.method public abstract getProviderPrettyName()Ljava/lang/String;
.end method

.method public abstract getSecure()Z
.end method

.method public abstract getServerAddress()Ljava/lang/String;
.end method

.method public getServiceCount()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mServicePrettyNames:[Ljava/lang/String;

    array-length v0, v0

    .line 90
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract getServicePrettyName(I)Ljava/lang/String;
.end method

.method public abstract getUserPrettyName()Ljava/lang/String;
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountSettings;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getVerifyCA()Z
.end method

.method public abstract initDataFromDB()V
.end method

.method public abstract isAuthRequired()Z
.end method

.method public abstract isResetRequired()Z
.end method

.method public abstract revertDataInDB()V
.end method

.method public abstract saveForAuthentication()Z
.end method

.method public abstract setAccountPrettyName(Ljava/lang/String;)V
.end method

.method public abstract setActivated(IZ)V
.end method

.method public abstract setCaptchaInfo(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setEmailAddress(Ljava/lang/String;)V
.end method

.method public abstract setEmailRetentionPolicy(I)V
.end method

.method public abstract setPassword(Ljava/lang/String;I)V
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setServerAddress(Ljava/lang/String;)V
.end method

.method public abstract setUserPrettyName(Ljava/lang/String;)V
.end method

.method public abstract setUsername(Ljava/lang/String;)V
.end method

.method public abstract setVerifyCA(Z)V
.end method

.method public abstract writeDataToDB(Z)Z
.end method
