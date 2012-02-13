.class public Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;
.super Ljava/lang/Object;
.source "SimAuthenticationManagerFactory.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String;

.field public static SERVICE_NAME:Ljava/lang/String;

.field static mInstance:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "SIMAuthMgrFactory"

    sput-object v0, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->LOG_TAG:Ljava/lang/String;

    const-string v0, "com.orange.authentication.simcard"

    sput-object v0, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->mInstance:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Ljava/lang/Object;
    .locals 7

    .prologue
    const-string v6, "Error loading "

    const-string v5, ": "

    :try_start_0
    const-string v2, "com.motorola.orange.simauth.OrangeAuthenticationManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, orangeClass:Ljava/lang/Class;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .end local v1           #orangeClass:Ljava/lang/Class;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not loaded - class not defined."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/InstantiationException;
    sget-object v2, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/motorola/android/simauth/SimAuthenticationManagerFactory;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
