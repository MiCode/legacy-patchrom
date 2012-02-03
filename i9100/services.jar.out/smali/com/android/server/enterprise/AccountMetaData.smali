.class Lcom/android/server/enterprise/AccountMetaData;
.super Ljava/lang/Object;
.source "AccountMetaData.java"


# instance fields
.field public mDisplayName:Ljava/lang/String;

.field public mEasDomain:Ljava/lang/String;

.field public mEasUser:Ljava/lang/String;

.field public mEmailAddress:Ljava/lang/String;

.field public mEmailNotificationVibrateAlways:B

.field public mEmailNotificationVibrateWhenSilent:B

.field public mInComingProtocol:Ljava/lang/String;

.field public mInComingServerAcceptAllCertificates:B

.field public mInComingServerAddress:Ljava/lang/String;

.field public mInComingServerLogin:Ljava/lang/String;

.field public mInComingServerPassword:Ljava/lang/String;

.field public mInComingServerPathPrefix:Ljava/lang/String;

.field public mInComingServerPort:I

.field public mInComingServerUseSSL:B

.field public mInComingServerUseTLS:B

.field public mIsDefault:B

.field public mOutGoingProtocol:Ljava/lang/String;

.field public mOutGoingServerAcceptAllCertificates:B

.field public mOutGoingServerAddress:Ljava/lang/String;

.field public mOutGoingServerLogin:Ljava/lang/String;

.field public mOutGoingServerPassword:Ljava/lang/String;

.field public mOutGoingServerPathPrefix:Ljava/lang/String;

.field public mOutGoingServerPort:I

.field public mOutGoingServerUseSSL:B

.field public mOutGoingServerUseTLS:B

.field public mProtocolVersion:Ljava/lang/String;

.field public mSenderName:Ljava/lang/String;

.field public mSignature:Ljava/lang/String;

.field public mSyncInterval:I

.field public mSyncLookback:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, -0x64

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 114
    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    iput v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 116
    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    iput-byte v1, p0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    .line 117
    return-void
.end method
