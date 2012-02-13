.class Landroid/accounts/AccountAuthenticatorCache;
.super Landroid/content/pm/RegisteredServicesCache;
.source "AccountAuthenticatorCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/accounts/AccountAuthenticatorCache$1;,
        Landroid/accounts/AccountAuthenticatorCache$MySerializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/RegisteredServicesCache",
        "<",
        "Landroid/accounts/AuthenticatorDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Account"

.field private static final sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/accounts/AccountAuthenticatorCache$MySerializer;-><init>(Landroid/accounts/AccountAuthenticatorCache$1;)V

    sput-object v0, Landroid/accounts/AccountAuthenticatorCache;->sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const-string v2, "android.accounts.AccountAuthenticator"

    const-string v0, "android.accounts.AccountAuthenticator"

    const-string v0, "android.accounts.AccountAuthenticator"

    const-string v4, "account-authenticator"

    sget-object v5, Landroid/accounts/AccountAuthenticatorCache;->sSerializer:Landroid/accounts/AccountAuthenticatorCache$MySerializer;

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/RegisteredServicesCache;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/pm/XmlSerializerAndParser;)V

    return-void
.end method


# virtual methods
.method public parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;
    .locals 19
    .parameter "res"
    .parameter "packageName"
    .parameter "attrs"

    .prologue
    sget-object v3, Lcom/android/internal/R$styleable;->AccountAuthenticator:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .local v16, sa:Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    :try_start_0
    move-object/from16 v0, v16

    move v1, v3

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .local v4, accountType:Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .local v6, labelId:I
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .local v7, iconId:I
    const/4 v3, 0x3

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .local v8, smallIconId:I
    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .local v9, prefId:I
    const/4 v10, 0x0

    .local v10, customTokens:Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/RegisteredServicesCache;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .local v13, pm:Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.accounts.AccountAuthenticator"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x80

    invoke-virtual {v13, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v15

    .local v15, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    .local v14, resolveInfo:Landroid/content/pm/ResolveInfo;
    move-object v0, v14

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    move-object/from16 v17, v0

    .local v17, si:Landroid/content/pm/ServiceInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p2

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object v3, v0

    const-string v5, "android.accounts.AccountAuthenticator.customTokens"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .local v11, ctString:Ljava/lang/Object;
    if-eqz v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    .end local v11           #ctString:Ljava/lang/Object;
    .end local v12           #i$:Ljava/util/Iterator;
    .end local v13           #pm:Landroid/content/pm/PackageManager;
    .end local v14           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v15           #resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v17           #si:Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v3

    move-object/from16 v18, v3

    .local v18, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v3, "Account"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error getting customTokens metadata "

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v18           #t:Ljava/lang/Throwable;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    return-object v3

    :cond_2
    :try_start_3
    new-instance v3, Landroid/accounts/AuthenticatorDescription;

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v10}, Landroid/accounts/AuthenticatorDescription;-><init>(Ljava/lang/String;Ljava/lang/String;IIIIZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v4           #accountType:Ljava/lang/String;
    .end local v6           #labelId:I
    .end local v7           #iconId:I
    .end local v8           #smallIconId:I
    .end local v9           #prefId:I
    .end local v10           #customTokens:Z
    :catchall_0
    move-exception v3

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    throw v3
.end method

.method public bridge synthetic parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-virtual {p0, p1, p2, p3}, Landroid/accounts/AccountAuthenticatorCache;->parseServiceAttributes(Landroid/content/res/Resources;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    return-object v0
.end method
