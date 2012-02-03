.class public Landroid/accounts/AccountManagerService$AuthTokenKey;
.super Ljava/lang/Object;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/accounts/AccountManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthTokenKey"
.end annotation


# instance fields
.field public final mAccount:Landroid/accounts/Account;

.field public final mAuthTokenType:Ljava/lang/String;

.field private final mHashCode:I

.field final synthetic this$0:Landroid/accounts/AccountManagerService;


# direct methods
.method public constructor <init>(Landroid/accounts/AccountManagerService;Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "account"
    .parameter "authTokenType"

    .prologue
    .line 182
    iput-object p1, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->this$0:Landroid/accounts/AccountManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iput-object p2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAccount:Landroid/accounts/Account;

    .line 184
    iput-object p3, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Landroid/accounts/AccountManagerService$AuthTokenKey;->computeHashCode()I

    move-result v0

    iput v0, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mHashCode:I

    .line 186
    return-void
.end method

.method private computeHashCode()I
    .locals 3

    .prologue
    .line 205
    const/16 v0, 0x11

    .line 206
    .local v0, result:I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v1, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1}, Landroid/accounts/Account;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 207
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int v0, v1, v2

    .line 208
    return v0

    .line 207
    :cond_0
    iget-object v2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 189
    if-ne p1, p0, :cond_0

    move v2, v5

    .line 199
    :goto_0
    return v2

    .line 192
    :cond_0
    instance-of v2, p1, Landroid/accounts/AccountManagerService$AuthTokenKey;

    if-nez v2, :cond_1

    move v2, v4

    .line 193
    goto :goto_0

    .line 195
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/accounts/AccountManagerService$AuthTokenKey;

    move-object v1, v0

    .line 196
    .local v1, other:Landroid/accounts/AccountManagerService$AuthTokenKey;
    iget-object v2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAccount:Landroid/accounts/Account;

    iget-object v3, v1, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v4

    .line 197
    goto :goto_0

    .line 199
    :cond_2
    iget-object v2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, v1, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    if-nez v2, :cond_3

    move v2, v5

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    iget-object v3, v1, Landroid/accounts/AccountManagerService$AuthTokenKey;->mAuthTokenType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/accounts/AccountManagerService$AuthTokenKey;->mHashCode:I

    return v0
.end method
