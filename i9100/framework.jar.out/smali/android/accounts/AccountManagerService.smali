.class public Landroid/accounts/AccountManagerService;
.super Landroid/accounts/IAccountManager$Stub;
.source "AccountManagerService.java"

# interfaces
.implements Landroid/content/pm/RegisteredServicesCacheListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountManagerService$DatabaseHelper;,
        Landroid/accounts/AccountManagerService$MessageHandler;,
        Landroid/accounts/AccountManagerService$Session;,
        Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;,
        Landroid/accounts/AccountManagerService$RemoveAccountSession;,
        Landroid/accounts/AccountManagerService$TestFeaturesSession;,
        Landroid/accounts/AccountManagerService$AuthTokenKey;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/accounts/IAccountManager$Stub;",
        "Landroid/content/pm/RegisteredServicesCacheListener",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent; = null

.field private static final ACCOUNTS_ID:Ljava/lang/String; = "_id"

.field private static final ACCOUNTS_NAME:Ljava/lang/String; = "name"

.field private static final ACCOUNTS_PASSWORD:Ljava/lang/String; = "password"

.field private static final ACCOUNTS_TYPE:Ljava/lang/String; = "type"

.field private static final ACCOUNTS_TYPE_COUNT:Ljava/lang/String; = "count(type)"

.field private static final ACCOUNT_NAME_TYPE_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final AUTHTOKENS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final AUTHTOKENS_AUTHTOKEN:Ljava/lang/String; = "authtoken"

.field private static final AUTHTOKENS_ID:Ljava/lang/String; = "_id"

.field private static final AUTHTOKENS_TYPE:Ljava/lang/String; = "type"

.field private static final COUNT_OF_MATCHING_GRANTS:Ljava/lang/String; = "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

.field private static final DATABASE_NAME:Ljava/lang/String; = "accounts.db"

.field private static final DATABASE_VERSION:I = 0x4

.field private static final EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account; = null

.field private static final EXTRAS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final EXTRAS_ID:Ljava/lang/String; = "_id"

.field private static final EXTRAS_KEY:Ljava/lang/String; = "key"

.field private static final EXTRAS_VALUE:Ljava/lang/String; = "value"

.field private static final GOOGLE_ACCOUNT_TYPE:Ljava/lang/String; = "com.google"

.field private static final GRANTS_ACCOUNTS_ID:Ljava/lang/String; = "accounts_id"

.field private static final GRANTS_AUTH_TOKEN_TYPE:Ljava/lang/String; = "auth_token_type"

.field private static final GRANTS_GRANTEE_UID:Ljava/lang/String; = "uid"

.field private static final MESSAGE_TIMED_OUT:I = 0x3

.field private static final META_KEY:Ljava/lang/String; = "key"

.field private static final META_VALUE:Ljava/lang/String; = "value"

.field private static final NO_BROADCAST_FLAG:Ljava/lang/String; = "nobroadcast"

.field private static final TABLE_ACCOUNTS:Ljava/lang/String; = "accounts"

.field private static final TABLE_AUTHTOKENS:Ljava/lang/String; = "authtokens"

.field private static final TABLE_EXTRAS:Ljava/lang/String; = "extras"

.field private static final TABLE_GRANTS:Ljava/lang/String; = "grants"

.field private static final TABLE_META:Ljava/lang/String; = "meta"

.field private static final TAG:Ljava/lang/String; = "AccountManagerService"

.field private static final TIMEOUT_DELAY_MS:I = 0xea60

.field private static final isDebuggableMonkeyBuild:Z

.field private static sThis:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Landroid/accounts/AccountManagerService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

.field private final mContext:Landroid/content/Context;

.field private final mCredentialsPermissionNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/util/Pair",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

.field private mMessageThread:Landroid/os/HandlerThread;

.field private final mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mSessions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AccountManagerService$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mSigninRequiredNotificationIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v5, "type"

    .line 133
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "type"

    aput-object v5, v0, v4

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNT_NAME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 135
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "type"

    aput-object v5, v0, v2

    const-string v1, "count(type)"

    aput-object v1, v0, v3

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    .line 155
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    .line 158
    const-string/jumbo v0, "ro.monkey"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/accounts/AccountManagerService;->isDebuggableMonkeyBuild:Z

    .line 160
    new-array v0, v2, [Landroid/accounts/Account;

    sput-object v0, Landroid/accounts/AccountManagerService;->EMPTY_ACCOUNT_ARRAY:[Landroid/accounts/Account;

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    .line 164
    sget-object v0, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 165
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 216
    invoke-direct {p0}, Landroid/accounts/IAccountManager$Stub;-><init>()V

    .line 147
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    .line 148
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    .line 217
    iput-object p1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 220
    new-instance v0, Landroid/accounts/AccountManagerService$DatabaseHelper;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;-><init>(Landroid/accounts/AccountManagerService;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    .line 222
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AccountManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    .line 223
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 224
    new-instance v0, Landroid/accounts/AccountManagerService$MessageHandler;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mMessageThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/accounts/AccountManagerService$MessageHandler;-><init>(Landroid/accounts/AccountManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    .line 226
    new-instance v0, Landroid/accounts/AccountAuthenticatorCache;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/accounts/AccountAuthenticatorCache;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    .line 227
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/accounts/AccountAuthenticatorCache;->setListener(Landroid/content/pm/RegisteredServicesCacheListener;Landroid/os/Handler;)V

    .line 229
    sget-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->validateAccounts()V

    .line 232
    return-void
.end method

.method static synthetic access$000(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->removeAccount(Landroid/accounts/Account;)V

    return-void
.end method

.method static synthetic access$100(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 79
    invoke-direct/range {p0 .. p5}, Landroid/accounts/AccountManagerService;->newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    invoke-static {}, Landroid/accounts/AccountManagerService;->getDatabaseName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->doNotification(Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Landroid/accounts/AccountManagerService;)Ljava/util/LinkedHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/accounts/AccountManagerService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountManagerService$MessageHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mMessageHandler:Landroid/accounts/AccountManagerService$MessageHandler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Landroid/accounts/AccountManagerService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    return-void
.end method

.method static synthetic access$900(Landroid/accounts/AccountManagerService;)Landroid/accounts/AccountAuthenticatorCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    return-object v0
.end method

.method private cancelNotification(I)V
    .locals 4
    .parameter "id"

    .prologue
    .line 1784
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1786
    .local v0, identityToken:J
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1789
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1791
    return-void

    .line 1789
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V
    .locals 3
    .parameter "account"

    .prologue
    .line 1887
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.AUTHENTICATE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1888
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V

    .line 1889
    return-void
.end method

.method private varargs checkBinderPermission([Ljava/lang/String;)V
    .locals 10
    .parameter "permissions"

    .prologue
    const-string v9, "caller uid "

    const-string v8, "AccountManagerService"

    .line 1795
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1797
    .local v5, uid:I
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 1798
    .local v4, perm:Ljava/lang/String;
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 1799
    const-string v6, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v8, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1800
    const-string v6, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1802
    :cond_0
    return-void

    .line 1797
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1806
    .end local v4           #perm:Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "caller uid "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " lacks any of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1807
    .local v3, msg:Ljava/lang/String;
    const-string v6, "AccountManagerService"

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1808
    new-instance v6, Ljava/lang/SecurityException;

    invoke-direct {v6, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private checkCallingUidAgainstAuthenticator(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    const-string v5, "caller uid "

    const-string v4, "AccountManagerService"

    .line 1875
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1876
    .local v1, uid:I
    if-eqz p1, :cond_0

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1877
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different than the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1878
    .local v0, msg:Ljava/lang/String;
    const-string v2, "AccountManagerService"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1881
    .end local v0           #msg:Ljava/lang/String;
    :cond_1
    const-string v2, "AccountManagerService"

    const/4 v2, 0x2

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1882
    const-string v2, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "caller uid "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is the same as the authenticator\'s uid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    :cond_2
    return-void
.end method

.method private checkManageAccountsOrUseCredentialsPermissions()V
    .locals 3

    .prologue
    .line 1900
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.USE_CREDENTIALS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1902
    return-void
.end method

.method private checkManageAccountsPermission()V
    .locals 3

    .prologue
    .line 1896
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.MANAGE_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1897
    return-void
.end method

.method private checkReadAccountsPermission()V
    .locals 3

    .prologue
    .line 1892
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.GET_ACCOUNTS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 1893
    return-void
.end method

.method private createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    .locals 13
    .parameter "account"
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 976
    const-string/jumbo v8, "uid"

    const/4 v9, -0x1

    invoke-virtual {p2, v8, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 978
    .local v7, uid:I
    const-string v8, "authTokenType"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 980
    .local v1, authTokenType:Ljava/lang/String;
    const-string v8, "authTokenLabel"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 983
    .local v0, authTokenLabel:Ljava/lang/String;
    new-instance v3, Landroid/app/Notification;

    const v8, 0x108008a

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    invoke-direct {v3, v8, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 985
    .local v3, n:Landroid/app/Notification;
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v9, 0x1040430

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v11, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 988
    .local v6, titleAndSubtitle:Ljava/lang/String;
    const/16 v8, 0xa

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 989
    .local v2, index:I
    invoke-virtual {v6, v12, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 990
    .local v5, title:Ljava/lang/String;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v6, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 991
    .local v4, subtitle:Ljava/lang/String;
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object v9, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/high16 v10, 0x1000

    invoke-static {v9, v12, p2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v3, v8, v5, v4, v9}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 994
    iget-object v8, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "notification"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/NotificationManager;

    invoke-direct {p0, p1, v1, v7}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v8, v9, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 996
    return-void
.end method

.method private doNotification(Landroid/accounts/Account;Ljava/lang/CharSequence;Landroid/content/Intent;)V
    .locals 10
    .parameter "account"
    .parameter "message"
    .parameter "intent"

    .prologue
    const-string v5, "AccountManagerService"

    .line 1754
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1756
    .local v0, identityToken:J
    :try_start_0
    const-string v5, "AccountManagerService"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1757
    const-string v5, "AccountManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doNotification: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " intent:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    :cond_0
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    const-class v5, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1763
    invoke-direct {p0, p1, p3}, Landroid/accounts/AccountManagerService;->createNoCredentialsPermissionNotification(Landroid/accounts/Account;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1779
    .end local p0
    :goto_0
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1781
    return-void

    .line 1765
    .restart local p0
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v3

    .line 1766
    .local v3, notificationId:Ljava/lang/Integer;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1767
    new-instance v2, Landroid/app/Notification;

    const v5, 0x108008a

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-direct {v2, v5, v6, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1769
    .local v2, n:Landroid/app/Notification;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const v6, 0x104013d

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1771
    .local v4, notificationTitleFormat:Ljava/lang/String;
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/high16 v9, 0x1000

    invoke-static {v7, v8, p3, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v5, v6, p2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1775
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "notification"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0, v5, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1779
    .end local v2           #n:Landroid/app/Notification;
    .end local v3           #notificationId:Ljava/lang/Integer;
    .end local v4           #notificationTitleFormat:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method private getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    .locals 9
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1292
    const-string v1, "accounts"

    new-array v2, v7, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p2, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v0, v4, v6

    iget-object v0, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v0, v4, v7

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1295
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1300
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1298
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1300
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 5
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 1038
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    monitor-enter v2

    .line 1039
    :try_start_0
    new-instance v1, Landroid/util/Pair;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1042
    .local v1, key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1043
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1044
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1045
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    :cond_0
    monitor-exit v2

    .line 1048
    return-object v0

    .line 1047
    .end local v0           #id:Ljava/lang/Integer;
    .end local v1           #key:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getDatabaseName()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "accounts.db"

    .line 1573
    invoke-static {}, Landroid/os/Environment;->isEncryptedFilesystemEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1575
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getSystemSecureDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "accounts.db"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1578
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "accounts.db"

    move-object v0, v2

    goto :goto_0
.end method

.method private getExtrasId(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J
    .locals 9
    .parameter "db"
    .parameter "accountId"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1305
    const-string v1, "extras"

    new-array v2, v4, [Ljava/lang/String;

    const-string v0, "_id"

    aput-object v0, v2, v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "accounts_id="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "key"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "=?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/String;

    aput-object p4, v4, v6

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1309
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1310
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1314
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1312
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 1314
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMetaValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1680
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string/jumbo v1, "meta"

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v6

    const-string v3, "key=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1683
    .local v8, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1684
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1688
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1686
    :goto_0
    return-object v0

    .line 1688
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v5

    .line 1686
    goto :goto_0

    .line 1688
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;
    .locals 3
    .parameter "account"

    .prologue
    .line 1053
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    monitor-enter v1

    .line 1054
    :try_start_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1055
    .local v0, id:Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1056
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mNotificationIds:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1057
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mSigninRequiredNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1059
    :cond_0
    monitor-exit v1

    .line 1060
    return-object v0

    .line 1059
    .end local v0           #id:Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getSingleton()Landroid/accounts/AccountManagerService;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Landroid/accounts/AccountManagerService;->sThis:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManagerService;

    return-object v0
.end method

.method private hasAuthenticatorUid(Ljava/lang/String;I)Z
    .locals 5
    .parameter "accountType"
    .parameter "callingUid"

    .prologue
    const/4 v4, 0x0

    .line 1844
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    invoke-virtual {v2}, Landroid/accounts/AccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 1845
    .local v1, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast v2, Landroid/accounts/AuthenticatorDescription;

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1846
    iget v2, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    if-eq v2, p2, :cond_1

    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v3, v1, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->uid:I

    invoke-virtual {v2, v3, p2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    .line 1851
    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :goto_0
    return v2

    .restart local v1       #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_2
    move v2, v4

    .line 1846
    goto :goto_0

    .end local v1           #serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    :cond_3
    move v2, v4

    .line 1851
    goto :goto_0
.end method

.method private hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 9
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1855
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v4, 0x3e8

    if-ne v3, v4, :cond_0

    move v3, v7

    .line 1871
    :goto_0
    return v3

    .line 1858
    :cond_0
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1859
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v3, 0x4

    new-array v0, v3, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v8

    aput-object p2, v0, v7

    const/4 v3, 0x2

    iget-object v4, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v4, v0, v3

    const/4 v3, 0x3

    iget-object v4, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v4, v0, v3

    .line 1861
    .local v0, args:[Ljava/lang/String;
    const-string v3, "SELECT COUNT(*) FROM grants, accounts WHERE accounts_id=_id AND uid=? AND auth_token_type=? AND name=? AND type=?"

    invoke-static {v1, v3, v0}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    move v2, v7

    .line 1863
    .local v2, permissionGranted:Z
    :goto_1
    if-nez v2, :cond_2

    sget-boolean v3, Landroid/accounts/AccountManagerService;->isDebuggableMonkeyBuild:Z

    if-eqz v3, :cond_2

    .line 1866
    const-string v3, "AccountManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no credentials permission for usage of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but ignoring since this is a monkey build"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 1869
    goto :goto_0

    .end local v2           #permissionGranted:Z
    :cond_1
    move v2, v8

    .line 1861
    goto :goto_1

    .restart local v2       #permissionGranted:Z
    :cond_2
    move v3, v2

    .line 1871
    goto :goto_0
.end method

.method private inSystemImage(I)Z
    .locals 10
    .parameter "callerUid"

    .prologue
    const/4 v9, 0x0

    .line 1812
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v6

    .line 1813
    .local v6, packages:[Ljava/lang/String;
    move-object v0, v6

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 1815
    .local v4, name:Ljava/lang/String;
    :try_start_0
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1816
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 1818
    const/4 v7, 0x1

    .line 1824
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :goto_1
    return v7

    .line 1820
    .restart local v4       #name:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v7, v9

    .line 1821
    goto :goto_1

    .line 1813
    .end local v1           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v5       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #name:Ljava/lang/String;
    .end local v5           #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_1
    move v7, v9

    .line 1824
    goto :goto_1
.end method

.method private insertAccountIntoDatabase(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 18
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 403
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 405
    if-nez p1, :cond_0

    .line 406
    const/4 v3, 0x0

    .line 445
    :goto_0
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 443
    return v3

    .line 408
    :cond_0
    const/4 v10, 0x0

    .line 409
    .local v10, noBroadcast:Z
    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v3, v0

    const-string v5, "com.google"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 412
    const-string/jumbo v3, "nobroadcast"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    move-object v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 413
    const-string/jumbo v3, "nobroadcast"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 416
    :cond_1
    const-string/jumbo v3, "select count(*) from accounts WHERE name=? AND type=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    invoke-static {v4, v3, v5}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v11

    .line 420
    .local v11, numMatches:J
    const-wide/16 v14, 0x0

    cmp-long v3, v11, v14

    if-lez v3, :cond_2

    .line 421
    const/4 v3, 0x0

    goto :goto_0

    .line 423
    :cond_2
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 424
    .local v13, values:Landroid/content/ContentValues;
    const-string/jumbo v3, "name"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v13, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string/jumbo v3, "type"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v13, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string/jumbo v3, "password"

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v3, "accounts"

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v3, v5, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5

    .line 428
    .local v5, accountId:J
    const-wide/16 v14, 0x0

    cmp-long v3, v5, v14

    if-gez v3, :cond_3

    .line 429
    const/4 v3, 0x0

    goto :goto_0

    .line 431
    :cond_3
    if-eqz p3, :cond_5

    .line 432
    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 433
    .local v7, key:Ljava/lang/String;
    move-object/from16 v0, p3

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, value:Ljava/lang/String;
    move-object/from16 v3, p0

    .line 434
    invoke-direct/range {v3 .. v8}, Landroid/accounts/AccountManagerService;->insertExtra(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v3, v14, v16

    if-gez v3, :cond_4

    .line 435
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 439
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #value:Ljava/lang/String;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_5
    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 440
    if-nez v10, :cond_6

    .line 441
    invoke-direct/range {p0 .. p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_6
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 445
    .end local v5           #accountId:J
    .end local v11           #numMatches:J
    .end local v13           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v3

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method private insertExtra(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J
    .locals 4
    .parameter "db"
    .parameter "accountId"
    .parameter "key"
    .parameter "value"

    .prologue
    const-string v3, "key"

    .line 450
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 451
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const-string v1, "accounts_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 453
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v1, "extras"

    const-string v2, "key"

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    return-wide v1
.end method

.method private invalidateAuthToken(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "db"
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 609
    if-eqz p3, :cond_0

    if-nez p2, :cond_1

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 612
    :cond_1
    const-string v5, "SELECT authtokens._id, accounts.name, authtokens.type FROM accounts JOIN authtokens ON accounts._id = accounts_id WHERE authtoken = ? AND accounts.type = ?"

    new-array v6, v6, [Ljava/lang/String;

    aput-object p3, v6, v7

    aput-object p2, v6, v8

    invoke-virtual {p1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 624
    .local v4, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 625
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 626
    .local v1, authTokenId:J
    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 627
    .local v0, accountName:Ljava/lang/String;
    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 628
    .local v3, authTokenType:Ljava/lang/String;
    const-string v5, "authtokens"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 631
    .end local v0           #accountName:Ljava/lang/String;
    .end local v1           #authTokenId:J
    .end local v3           #authTokenType:Ljava/lang/String;
    :catchall_0
    move-exception v5

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private newGrantCredentialsPermissionIntent(Landroid/accounts/Account;ILandroid/accounts/AccountAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "account"
    .parameter "uid"
    .parameter "response"
    .parameter "authTokenType"
    .parameter "authTokenLabel"

    .prologue
    .line 1019
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/accounts/GrantCredentialsPermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1023
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1024
    invoke-direct {p0, p1, p4, p2}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1027
    const-string v1, "account"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1028
    const-string v1, "authTokenType"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1029
    const-string/jumbo v1, "response"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1030
    const-string/jumbo v1, "uid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    return-object v0
.end method

.method private onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    .locals 3
    .parameter "response"
    .parameter "result"

    .prologue
    const-string v2, "AccountManagerService"

    .line 808
    :try_start_0
    invoke-interface {p1, p2}, Landroid/accounts/IAccountManagerResponse;->onResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :cond_0
    :goto_0
    return-void

    .line 809
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccountManagerService"

    const/4 v1, 0x2

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 813
    const-string v1, "AccountManagerService"

    const-string v1, "failure while notifying response"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z
    .locals 8
    .parameter "account"
    .parameter "authTokenType"
    .parameter "callerUid"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "AccountManagerService"

    .line 1828
    invoke-direct {p0, p3}, Landroid/accounts/AccountManagerService;->inSystemImage(I)Z

    move-result v2

    .line 1829
    .local v2, inSystemImage:Z
    if-eqz p1, :cond_2

    iget-object v3, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-direct {p0, v3, p3}, Landroid/accounts/AccountManagerService;->hasAuthenticatorUid(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v6

    .line 1831
    .local v0, fromAuthenticator:Z
    :goto_0
    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->hasExplicitlyGrantedPermission(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v6

    .line 1833
    .local v1, hasExplicitGrants:Z
    :goto_1
    const-string v3, "AccountManagerService"

    const/4 v3, 0x2

    invoke-static {v7, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1834
    const-string v3, "AccountManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGrantsOrCallingUidAgainstAuthenticator: caller uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": is authenticator? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", has explicit permission? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_4

    :cond_1
    move v3, v6

    :goto_2
    return v3

    .end local v0           #fromAuthenticator:Z
    .end local v1           #hasExplicitGrants:Z
    :cond_2
    move v0, v5

    .line 1829
    goto :goto_0

    .restart local v0       #fromAuthenticator:Z
    :cond_3
    move v1, v5

    .line 1831
    goto :goto_1

    .restart local v1       #hasExplicitGrants:Z
    :cond_4
    move v3, v5

    .line 1839
    goto :goto_2
.end method

.method private readPasswordFromDatabase(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 10
    .parameter "account"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 298
    if-nez p1, :cond_0

    move-object v1, v5

    .line 310
    :goto_0
    return-object v1

    .line 302
    :cond_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 303
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "password"

    aput-object v3, v2, v7

    const-string/jumbo v3, "name=? AND type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v7

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v9

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 307
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 308
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 312
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 310
    goto :goto_0

    .line 312
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private readUserDataFromDatabase(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "account"
    .parameter "key"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 329
    if-nez p1, :cond_0

    move-object v1, v5

    .line 343
    :goto_0
    return-object v1

    .line 333
    :cond_0
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 334
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "extras"

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "value"

    aput-object v3, v2, v7

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?) AND key=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v7

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v9

    const/4 v6, 0x2

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 340
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 341
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 345
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 343
    goto :goto_0

    .line 345
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method private removeAccount(Landroid/accounts/Account;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 583
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 584
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const-string/jumbo v2, "name=? AND type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 586
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 587
    return-void
.end method

.method private saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .parameter "account"
    .parameter "type"
    .parameter "authToken"

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "authtokens"

    const-string v4, "authtoken"

    .line 636
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move v4, v8

    .line 658
    :goto_0
    return v4

    .line 639
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 640
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 641
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 643
    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 644
    .local v0, accountId:J
    cmp-long v4, v0, v10

    if-gez v4, :cond_2

    .line 660
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v8

    .line 645
    goto :goto_0

    .line 647
    :cond_2
    :try_start_1
    const-string v4, "authtokens"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "accounts_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "type"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-virtual {v2, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 650
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 651
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 652
    const-string/jumbo v4, "type"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    const-string v4, "authtoken"

    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v4, "authtokens"

    const-string v5, "authtoken"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    cmp-long v4, v4, v10

    if-ltz v4, :cond_3

    .line 655
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v9

    .line 656
    goto :goto_0

    .line 660
    :cond_3
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    move v4, v8

    .line 658
    goto/16 :goto_0

    .line 660
    .end local v0           #accountId:J
    .end local v3           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "args"
    .parameter "value"

    .prologue
    .line 1703
    if-eqz p0, :cond_1

    .line 1704
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 1705
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1706
    const/4 v4, 0x1

    .line 1710
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 1704
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1710
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private sendAccountsChangedBroadcast()V
    .locals 2

    .prologue
    .line 742
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/accounts/AccountManagerService;->ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 743
    return-void
.end method

.method private setMetaValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "key"
    .parameter "value"

    .prologue
    const-string v4, "key"

    .line 1673
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1674
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "key"

    invoke-virtual {v0, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1675
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v2, "meta"

    const-string v3, "key"

    invoke-virtual {v1, v2, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1677
    return-void
.end method

.method private setPasswordInDB(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 7
    .parameter "account"
    .parameter "password"

    .prologue
    .line 720
    if-nez p1, :cond_0

    .line 739
    :goto_0
    return-void

    .line 723
    :cond_0
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 724
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 726
    :try_start_0
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 727
    .local v4, values:Landroid/content/ContentValues;
    const-string/jumbo v5, "password"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    invoke-direct {p0, v3, p1}, Landroid/accounts/AccountManagerService;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 729
    .local v0, accountId:J
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-ltz v5, :cond_1

    .line 730
    const/4 v5, 0x1

    new-array v2, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 731
    .local v2, argsAccountId:[Ljava/lang/String;
    const-string v5, "accounts"

    const-string v6, "_id=?"

    invoke-virtual {v3, v5, v4, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 732
    const-string v5, "authtokens"

    const-string v6, "accounts_id=?"

    invoke-virtual {v3, v5, v6, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 733
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 736
    .end local v2           #argsAccountId:[Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 738
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    goto :goto_0

    .line 736
    .end local v0           #accountId:J
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method private validateAccounts()V
    .locals 14

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v1, "accounts"

    .line 235
    const/4 v8, 0x0

    .line 236
    .local v8, accountDeleted:Z
    iget-object v2, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "accounts"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    aput-object v4, v2, v6

    const-string/jumbo v4, "name"

    aput-object v4, v2, v7

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 241
    .local v13, cursor:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 242
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 243
    .local v9, accountId:J
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 244
    .local v12, accountType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 245
    .local v11, accountName:Ljava/lang/String;
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    invoke-static {v12}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/accounts/AccountAuthenticatorCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v1

    if-nez v1, :cond_0

    .line 247
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer has a registered authenticator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v1, "accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    const/4 v8, 0x1

    goto :goto_0

    .line 254
    .end local v9           #accountId:J
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 255
    if-eqz v8, :cond_1

    .line 256
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 254
    :cond_1
    throw v1

    :cond_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 255
    if-eqz v8, :cond_3

    .line 256
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 259
    :cond_3
    return-void
.end method

.method private writeUserdataIntoDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    const-wide/16 v9, 0x0

    .line 776
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 804
    :cond_0
    :goto_0
    return-void

    .line 779
    :cond_1
    iget-object v0, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 780
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 782
    :try_start_0
    invoke-direct {p0, v1, p1}, Landroid/accounts/AccountManagerService;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 783
    .local v2, accountId:J
    cmp-long v0, v2, v9

    if-gez v0, :cond_3

    .line 802
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 786
    :cond_3
    :try_start_1
    invoke-direct {p0, v1, v2, v3, p2}, Landroid/accounts/AccountManagerService;->getExtrasId(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;)J

    move-result-wide v6

    .line 787
    .local v6, extrasId:J
    cmp-long v0, v6, v9

    if-gez v0, :cond_5

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    .line 788
    invoke-direct/range {v0 .. v5}, Landroid/accounts/AccountManagerService;->insertExtra(Landroid/database/sqlite/SQLiteDatabase;JLjava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 789
    cmp-long v0, v6, v9

    if-ltz v0, :cond_2

    .line 800
    :cond_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 802
    .end local v2           #accountId:J
    .end local v6           #extrasId:J
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0

    .line 793
    .restart local v2       #accountId:J
    .restart local v6       #extrasId:J
    :cond_5
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v8, values:Landroid/content/ContentValues;
    const-string/jumbo v0, "value"

    invoke-virtual {v8, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x1

    const-string v4, "extras"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-virtual {v1, v4, v8, v5, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eq v0, v4, :cond_4

    goto :goto_1
.end method


# virtual methods
.method public addAccount(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 4
    .parameter "account"
    .parameter "password"
    .parameter "extras"

    .prologue
    .line 389
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 390
    :cond_0
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 393
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 395
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->insertAccountIntoDatabase(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 397
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 395
    return v2

    .line 397
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public addAcount(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 12
    .parameter "response"
    .parameter "accountType"
    .parameter "authTokenType"
    .parameter "requiredFeatures"
    .parameter "expectActivityLaunch"
    .parameter "options"

    .prologue
    .line 1067
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1068
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1069
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1070
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v10

    .line 1072
    .local v10, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$3;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p5

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p6

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, Landroid/accounts/AccountManagerService$3;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$3;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1089
    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1091
    return-void

    .line 1089
    :catchall_0
    move-exception v0

    invoke-static {v10, v11}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public clearPassword(Landroid/accounts/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 746
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 747
    :cond_0
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 748
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 750
    .local v0, identityToken:J
    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1, v2}, Landroid/accounts/AccountManagerService;->setPasswordInDB(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 752
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 754
    return-void

    .line 752
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public confirmCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Landroid/os/Bundle;Z)V
    .locals 10
    .parameter "response"
    .parameter "account"
    .parameter "options"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1095
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1096
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1097
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1098
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 1100
    .local v8, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$4;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$4;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$4;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1111
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1113
    return-void

    .line 1111
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 22
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    .line 1714
    const-string v5, "--checkin"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "-c"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    move/from16 v17, v5

    .line 1716
    .local v17, isCheckinRequest:Z
    :goto_0
    if-eqz v17, :cond_3

    .line 1718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 1720
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v5, "accounts"

    sget-object v6, Landroid/accounts/AccountManagerService;->ACCOUNT_TYPE_COUNT_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string/jumbo v9, "type"

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 1723
    .local v15, cursor:Landroid/database/Cursor;
    :goto_1
    :try_start_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1725
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x0

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v15, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1728
    :catchall_0
    move-exception v5

    if-eqz v15, :cond_1

    .line 1729
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 1728
    :cond_1
    throw v5

    .line 1714
    .end local v4           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v15           #cursor:Landroid/database/Cursor;
    .end local v17           #isCheckinRequest:Z
    :cond_2
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_0

    .line 1733
    .restart local v17       #isCheckinRequest:Z
    :cond_3
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManagerService;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v13

    .line 1734
    .local v13, accounts:[Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accounts: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v13

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    move-object v14, v13

    .local v14, arr$:[Landroid/accounts/Account;
    move-object v0, v14

    array-length v0, v0

    move/from16 v18, v0

    .local v18, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    aget-object v12, v14, v16

    .line 1736
    .local v12, account:Landroid/accounts/Account;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1735
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1739
    .end local v12           #account:Landroid/accounts/Account;
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v5, v0

    monitor-enter v5

    .line 1741
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    .line 1742
    .local v19, now:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Active Sessions: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mSessions:Ljava/util/LinkedHashMap;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/accounts/AccountManagerService$Session;

    .line 1744
    .local v21, session:Landroid/accounts/AccountManagerService$Session;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService$Session;->toDebugString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1746
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #now:J
    .end local v21           #session:Landroid/accounts/AccountManagerService$Session;
    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .restart local v16       #i$:Ljava/util/Iterator;
    .restart local v19       #now:J
    :cond_5
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1748
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/accounts/AccountAuthenticatorCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1751
    .end local v13           #accounts:[Landroid/accounts/Account;
    .end local v14           #arr$:[Landroid/accounts/Account;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v18           #len$:I
    .end local v19           #now:J
    :cond_6
    :goto_4
    return-void

    .line 1728
    .restart local v4       #db:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v15       #cursor:Landroid/database/Cursor;
    :cond_7
    if-eqz v15, :cond_6

    .line 1729
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_4
.end method

.method public editProperties(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;Z)V
    .locals 9
    .parameter "response"
    .parameter "accountType"
    .parameter "expectActivityLaunch"

    .prologue
    .line 1144
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1145
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "accountType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1146
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1147
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v7

    .line 1149
    .local v7, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$6;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Landroid/accounts/AccountManagerService$6;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLjava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$6;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1160
    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1162
    return-void

    .line 1160
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method getAccountLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "accountType"

    .prologue
    const-string/jumbo v6, "unknown account type: "

    .line 999
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    invoke-static {p1}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/accounts/AccountAuthenticatorCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v2

    .line 1002
    .local v2, serviceInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-nez v2, :cond_0

    .line 1003
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1008
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mContext:Landroid/content/Context;

    iget-object p0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    iget-object v4, p0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1013
    .local v0, authContext:Landroid/content/Context;
    iget-object p0, v2, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    iget v3, p0, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1010
    .end local v0           #authContext:Landroid/content/Context;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1011
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unknown account type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public getAccounts(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 3
    .parameter "type"

    .prologue
    .line 1252
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1253
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 1255
    .local v0, identityToken:J
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/accounts/AccountManagerService;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1257
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1255
    return-object v2

    .line 1257
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getAccountsByFeatures(Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "response"
    .parameter "type"
    .parameter "features"

    .prologue
    .line 1263
    if-nez p1, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1264
    :cond_0
    if-nez p2, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "accountType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1265
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 1266
    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    .line 1267
    if-eqz p1, :cond_2

    .line 1269
    const/4 v4, 0x7

    :try_start_0
    const-string/jumbo v5, "type is null"

    invoke-interface {p1, v4, v5}, Landroid/accounts/IAccountManagerResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1289
    :cond_2
    :goto_0
    return-void

    .line 1276
    :cond_3
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 1278
    .local v1, identityToken:J
    if-eqz p3, :cond_4

    :try_start_1
    array-length v4, p3

    if-nez v4, :cond_5

    .line 1279
    :cond_4
    invoke-virtual {p0, p2}, Landroid/accounts/AccountManagerService;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 1280
    .local v0, accounts:[Landroid/accounts/Account;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1281
    .local v3, result:Landroid/os/Bundle;
    const-string v4, "accounts"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 1282
    invoke-direct {p0, p1, v3}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1287
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v3           #result:Landroid/os/Bundle;
    :goto_1
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 1285
    :cond_5
    :try_start_2
    new-instance v4, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;

    invoke-direct {v4, p0, p1, p2, p3}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$GetAccountsByTypeAndFeatureSession;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1287
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4

    .line 1270
    .end local v1           #identityToken:J
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;
    .locals 11
    .parameter "accountType"

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 369
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 371
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p1, :cond_0

    move-object v3, v5

    .line 372
    .local v3, selection:Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_1

    move-object v4, v5

    .line 373
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    const-string v1, "accounts"

    sget-object v2, Landroid/accounts/AccountManagerService;->ACCOUNT_NAME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 376
    .local v9, cursor:Landroid/database/Cursor;
    const/4 v10, 0x0

    .line 377
    .local v10, i:I
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v1

    new-array v8, v1, [Landroid/accounts/Account;

    .line 378
    .local v8, accounts:[Landroid/accounts/Account;
    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 379
    new-instance v1, Landroid/accounts/Account;

    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    invoke-interface {v9, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v8, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 371
    .end local v3           #selection:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #accounts:[Landroid/accounts/Account;
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v10           #i:I
    :cond_0
    const-string/jumbo v1, "type=?"

    move-object v3, v1

    goto :goto_0

    .line 372
    .restart local v3       #selection:Ljava/lang/String;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    move-object v4, v1

    goto :goto_1

    .line 384
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v10       #i:I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v8       #accounts:[Landroid/accounts/Account;
    :cond_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 382
    return-object v8
.end method

.method public getAuthToken(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZZLandroid/os/Bundle;)V
    .locals 23
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "notifyOnAuthFailure"
    .parameter "expectActivityLaunch"
    .parameter "loginOptionsIn"

    .prologue
    .line 859
    const-string v4, "AccountManagerService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 860
    const-string v4, "AccountManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAuthToken: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", response "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", authTokenType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", notifyOnAuthFailure "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", expectActivityLaunch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", caller\'s uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_0
    if-nez p1, :cond_1

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "response is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 869
    :cond_1
    if-nez p2, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "account is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 870
    :cond_2
    if-nez p3, :cond_3

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "authTokenType is null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 871
    :cond_3
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "android.permission.USE_CREDENTIALS"

    aput-object v6, v4, v5

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 872
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 873
    .local v15, callerUid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v19

    .line 875
    .local v19, callerPid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/accounts/AuthenticatorDescription;->newKey(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/accounts/AccountAuthenticatorCache;->getServiceInfo(Ljava/lang/Object;)Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    move-result-object v18

    .line 878
    .local v18, authenticatorInfo:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Landroid/accounts/AuthenticatorDescription;

    iget-boolean v4, v4, Landroid/accounts/AuthenticatorDescription;->customTokens:Z

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move/from16 v16, v4

    .line 882
    .local v16, customTokens:Z
    :goto_0
    if-nez v16, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/accounts/AccountManagerService;->permissionIsGranted(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_4
    const/4 v4, 0x1

    move v14, v4

    .line 885
    .local v14, permissionGranted:Z
    :goto_1
    if-nez p6, :cond_8

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    move-object v10, v4

    .line 887
    .local v10, loginOptions:Landroid/os/Bundle;
    :goto_2
    if-eqz v16, :cond_5

    .line 889
    const-string v4, "callerUid"

    invoke-virtual {v10, v4, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v4, "callerPid"

    move-object v0, v10

    move-object v1, v4

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 891
    if-eqz p4, :cond_5

    .line 892
    const-string/jumbo v4, "notifyOnAuthFailure"

    const/4 v5, 0x1

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 896
    :cond_5
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v20

    .line 900
    .local v20, identityToken:J
    if-nez v16, :cond_9

    if-eqz v14, :cond_9

    .line 901
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/accounts/AccountManagerService;->readAuthTokenFromDatabase(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 902
    .local v17, authToken:Ljava/lang/String;
    if-eqz v17, :cond_9

    .line 903
    new-instance v22, Landroid/os/Bundle;

    invoke-direct/range {v22 .. v22}, Landroid/os/Bundle;-><init>()V

    .line 904
    .local v22, result:Landroid/os/Bundle;
    const-string v4, "authtoken"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    const-string v4, "authAccount"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    const-string v4, "accountType"

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/accounts/AccountManagerService;->onResult(Landroid/accounts/IAccountManagerResponse;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    .end local v17           #authToken:Ljava/lang/String;
    .end local v22           #result:Landroid/os/Bundle;
    :goto_3
    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 973
    return-void

    .line 878
    .end local v10           #loginOptions:Landroid/os/Bundle;
    .end local v14           #permissionGranted:Z
    .end local v16           #customTokens:Z
    .end local v20           #identityToken:J
    :cond_6
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_0

    .line 882
    .restart local v16       #customTokens:Z
    :cond_7
    const/4 v4, 0x0

    move v14, v4

    goto :goto_1

    .restart local v14       #permissionGranted:Z
    :cond_8
    move-object/from16 v10, p6

    .line 885
    goto :goto_2

    .line 912
    .restart local v10       #loginOptions:Landroid/os/Bundle;
    .restart local v20       #identityToken:J
    :cond_9
    :try_start_1
    new-instance v4, Landroid/accounts/AccountManagerService$2;

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p5

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    invoke-direct/range {v4 .. v16}, Landroid/accounts/AccountManagerService$2;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/os/Bundle;Landroid/accounts/Account;Ljava/lang/String;ZZIZ)V

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$2;->bind()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 971
    :catchall_0
    move-exception v4

    invoke-static/range {v20 .. v21}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v4
.end method

.method getAuthTokenLabel(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 10
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v2, 0x0

    .line 820
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 821
    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_1
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.USE_CREDENTIALS"

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Landroid/accounts/AccountManagerService;->checkBinderPermission([Ljava/lang/String;)V

    .line 825
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v8

    .line 827
    .local v8, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$1;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Landroid/accounts/AccountManagerService$1;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$1;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 852
    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 854
    return-void

    .line 852
    :catchall_0
    move-exception v0

    invoke-static {v8, v9}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;
    .locals 8

    .prologue
    .line 350
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v4

    .line 353
    .local v4, identityToken:J
    :try_start_0
    iget-object v7, p0, Landroid/accounts/AccountManagerService;->mAuthenticatorCache:Landroid/accounts/AccountAuthenticatorCache;

    invoke-virtual {v7}, Landroid/accounts/AccountAuthenticatorCache;->getAllServices()Ljava/util/Collection;

    move-result-object v1

    .line 354
    .local v1, authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v7

    new-array v6, v7, [Landroid/accounts/AuthenticatorDescription;

    .line 356
    .local v6, types:[Landroid/accounts/AuthenticatorDescription;
    const/4 v2, 0x0

    .line 358
    .local v2, i:I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;

    .line 359
    .local v0, authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    iget-object p0, v0, Landroid/content/pm/RegisteredServicesCache$ServiceInfo;->type:Ljava/lang/Object;

    check-cast p0, Landroid/accounts/AuthenticatorDescription;

    aput-object p0, v6, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 364
    .end local v0           #authenticator:Landroid/content/pm/RegisteredServicesCache$ServiceInfo;,"Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;"
    .end local v1           #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v6           #types:[Landroid/accounts/AuthenticatorDescription;
    :catchall_0
    move-exception v7

    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v7

    .restart local v1       #authenticatorCollection:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/content/pm/RegisteredServicesCache$ServiceInfo<Landroid/accounts/AuthenticatorDescription;>;>;"
    .restart local v2       #i:I
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v6       #types:[Landroid/accounts/AuthenticatorDescription;
    :cond_0
    invoke-static {v4, v5}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 362
    return-object v6
.end method

.method public getPassword(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 4
    .parameter "account"

    .prologue
    .line 286
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 287
    :cond_0
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 289
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 291
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->readPasswordFromDatabase(Landroid/accounts/Account;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 293
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 291
    return-object v2

    .line 293
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"
    .parameter "key"

    .prologue
    .line 317
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 318
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 319
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 320
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 322
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readUserDataFromDatabase(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 324
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 322
    return-object v2

    .line 324
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public grantAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 7
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    const-string v4, "accounts_id"

    .line 1912
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1913
    :cond_0
    const-string v4, "AccountManagerService"

    const-string v5, "grantAppPermission: called with invalid arguments"

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1932
    :goto_0
    return-void

    .line 1916
    :cond_1
    iget-object v4, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v4}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1917
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1919
    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 1920
    .local v0, accountId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    .line 1921
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1922
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "accounts_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1923
    const-string v4, "auth_token_type"

    invoke-virtual {v3, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1924
    const-string/jumbo v4, "uid"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1925
    const-string v4, "grants"

    const-string v5, "accounts_id"

    invoke-virtual {v2, v4, v5, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 1926
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1929
    .end local v3           #values:Landroid/content/ContentValues;
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1931
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {p0, v4}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    goto :goto_0

    .line 1929
    .end local v0           #accountId:J
    :catchall_0
    move-exception v4

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v4
.end method

.method public hasFeatures(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V
    .locals 4
    .parameter "response"
    .parameter "account"
    .parameter "features"

    .prologue
    .line 459
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "response is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 460
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 461
    :cond_1
    if-nez p3, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "features is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 462
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkReadAccountsPermission()V

    .line 463
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 465
    .local v0, identityToken:J
    :try_start_0
    new-instance v2, Landroid/accounts/AccountManagerService$TestFeaturesSession;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/accounts/AccountManagerService$TestFeaturesSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;[Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/accounts/AccountManagerService$TestFeaturesSession;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 469
    return-void

    .line 467
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "accountType"
    .parameter "authToken"

    .prologue
    .line 590
    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "accountType is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 591
    :cond_0
    if-nez p2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "authToken is null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 592
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsOrUseCredentialsPermissions()V

    .line 593
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v1

    .line 595
    .local v1, identityToken:J
    :try_start_0
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 596
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 598
    :try_start_1
    invoke-direct {p0, v0, p1, p2}, Landroid/accounts/AccountManagerService;->invalidateAuthToken(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 606
    return-void

    .line 601
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 604
    .end local v0           #db:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_1
    move-exception v3

    invoke-static {v1, v2}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 1693
    invoke-virtual {p0}, Landroid/accounts/AccountManagerService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V
    .locals 14
    .parameter "desc"
    .parameter "removed"

    .prologue
    .line 262
    const/4 v8, 0x0

    .line 263
    .local v8, accountDeleted:Z
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 264
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "accounts"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "name"

    aput-object v4, v2, v3

    const-string/jumbo v3, "type=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 268
    .local v13, cursor:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 269
    const/4 v1, 0x0

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 270
    .local v9, accountId:J
    const/4 v1, 0x1

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 271
    .local v12, accountType:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v13, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, accountName:Ljava/lang/String;
    const-string v1, "AccountManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting account "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " because type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " no longer has a registered authenticator"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const-string v1, "accounts"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    const/4 v8, 0x1

    .line 276
    goto :goto_0

    .line 278
    .end local v9           #accountId:J
    .end local v11           #accountName:Ljava/lang/String;
    .end local v12           #accountType:Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 279
    if-eqz v8, :cond_0

    .line 280
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 278
    :cond_0
    throw v1

    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 279
    if-eqz v8, :cond_2

    .line 280
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    .line 283
    :cond_2
    return-void
.end method

.method public bridge synthetic onServiceChanged(Ljava/lang/Object;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    check-cast p1, Landroid/accounts/AuthenticatorDescription;

    .end local p1
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->onServiceChanged(Landroid/accounts/AuthenticatorDescription;Z)V

    return-void
.end method

.method public peekAuthToken(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 685
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 687
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 688
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 690
    .local v0, identityToken:J
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/accounts/AccountManagerService;->readAuthTokenFromDatabase(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 692
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 690
    return-object v2

    .line 692
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public readAuthTokenFromDatabase(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    const/4 v9, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 665
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v1, v5

    .line 678
    :goto_0
    return-object v1

    .line 668
    :cond_1
    iget-object v1, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v1}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 669
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "authtokens"

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "authtoken"

    aput-object v3, v2, v7

    const-string v3, "accounts_id=(select _id FROM accounts WHERE name=? AND type=?) AND type=?"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v6, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v7

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v6, v4, v9

    const/4 v6, 0x2

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 675
    .local v8, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 676
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 680
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    .line 678
    goto :goto_0

    .line 680
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public removeAccount(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V
    .locals 7
    .parameter "response"
    .parameter "account"

    .prologue
    .line 520
    if-nez p1, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "response is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 521
    :cond_0
    if-nez p2, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "account is null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 522
    :cond_1
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 523
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v2

    .line 525
    .local v2, identityToken:J
    invoke-direct {p0, p2}, Landroid/accounts/AccountManagerService;->getSigninRequiredNotificationId(Landroid/accounts/Account;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    .line 526
    iget-object v6, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    monitor-enter v6

    .line 528
    :try_start_0
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 529
    .local v4, pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p2, v5}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 530
    iget-object v5, p0, Landroid/accounts/AccountManagerService;->mCredentialsPermissionNotificationIds:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 531
    .local v1, id:I
    invoke-direct {p0, v1}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    goto :goto_0

    .line 534
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #id:I
    .end local v4           #pair:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/util/Pair<Landroid/accounts/Account;Ljava/lang/String;>;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 537
    :try_start_2
    new-instance v5, Landroid/accounts/AccountManagerService$RemoveAccountSession;

    invoke-direct {v5, p0, p1, p2}, Landroid/accounts/AccountManagerService$RemoveAccountSession;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;)V

    invoke-virtual {v5}, Landroid/accounts/AccountManagerService$RemoveAccountSession;->bind()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 539
    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 541
    return-void

    .line 539
    :catchall_1
    move-exception v5

    invoke-static {v2, v3}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public revokeAppPermission(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 8
    .parameter "account"
    .parameter "authTokenType"
    .parameter "uid"

    .prologue
    .line 1943
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1944
    :cond_0
    const-string v3, "AccountManagerService"

    const-string/jumbo v4, "revokeAppPermission: called with invalid arguments"

    new-instance v5, Ljava/lang/Exception;

    invoke-direct {v5}, Ljava/lang/Exception;-><init>()V

    invoke-static {v3, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1963
    :goto_0
    return-void

    .line 1947
    :cond_1
    iget-object v3, p0, Landroid/accounts/AccountManagerService;->mOpenHelper:Landroid/accounts/AccountManagerService$DatabaseHelper;

    invoke-virtual {v3}, Landroid/accounts/AccountManagerService$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1948
    .local v2, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 1950
    :try_start_0
    invoke-direct {p0, v2, p1}, Landroid/accounts/AccountManagerService;->getAccountId(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)J

    move-result-wide v0

    .line 1951
    .local v0, accountId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-ltz v3, :cond_2

    .line 1952
    const-string v3, "grants"

    const-string v4, "accounts_id=? AND auth_token_type=? AND uid=?"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1957
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1960
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1962
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->getCredentialPermissionNotificationId(Landroid/accounts/Account;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/accounts/AccountManagerService;->cancelNotification(I)V

    goto :goto_0

    .line 1960
    .end local v0           #accountId:J
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v3
.end method

.method public setAuthToken(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "authTokenType"
    .parameter "authToken"

    .prologue
    .line 697
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 698
    :cond_0
    if-nez p2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "authTokenType is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 699
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 700
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 702
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->saveAuthTokenToDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 704
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 706
    return-void

    .line 704
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setPassword(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "password"

    .prologue
    .line 709
    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 710
    :cond_0
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 711
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 713
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/accounts/AccountManagerService;->setPasswordInDB(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 715
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 717
    return-void

    .line 715
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setUserData(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 757
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "key is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 758
    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "account is null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 759
    :cond_1
    invoke-direct {p0, p1}, Landroid/accounts/AccountManagerService;->checkAuthenticateAccountsPermission(Landroid/accounts/Account;)V

    .line 760
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v0

    .line 761
    .local v0, identityToken:J
    if-nez p1, :cond_2

    .line 773
    :goto_0
    return-void

    .line 764
    :cond_2
    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.google"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "broadcast"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 765
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->sendAccountsChangedBroadcast()V

    goto :goto_0

    .line 769
    :cond_3
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Landroid/accounts/AccountManagerService;->writeUserdataIntoDatabase(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public updateCredentials(Landroid/accounts/IAccountManagerResponse;Landroid/accounts/Account;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 11
    .parameter "response"
    .parameter "account"
    .parameter "authTokenType"
    .parameter "expectActivityLaunch"
    .parameter "loginOptions"

    .prologue
    .line 1118
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "response is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1119
    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "account is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1120
    :cond_1
    if-nez p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "authTokenType is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1121
    :cond_2
    invoke-direct {p0}, Landroid/accounts/AccountManagerService;->checkManageAccountsPermission()V

    .line 1122
    invoke-static {}, Landroid/accounts/AccountManagerService;->clearCallingIdentity()J

    move-result-wide v9

    .line 1124
    .local v9, identityToken:J
    :try_start_0
    new-instance v0, Landroid/accounts/AccountManagerService$5;

    iget-object v3, p2, Landroid/accounts/Account;->type:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p4

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    invoke-direct/range {v0 .. v8}, Landroid/accounts/AccountManagerService$5;-><init>(Landroid/accounts/AccountManagerService;Landroid/accounts/IAccountManagerResponse;Ljava/lang/String;ZZLandroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Landroid/accounts/AccountManagerService$5;->bind()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    .line 1140
    return-void

    .line 1138
    :catchall_0
    move-exception v0

    invoke-static {v9, v10}, Landroid/accounts/AccountManagerService;->restoreCallingIdentity(J)V

    throw v0
.end method
