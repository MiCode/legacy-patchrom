.class public Lcom/motorola/android/locationproxy/SuplHttpClient;
.super Lorg/apache/http/impl/client/DefaultHttpClient;
.source "SuplHttpClient.java"


# instance fields
.field private mHttpsPort:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpClient;->mHttpsPort:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "conman"
    .parameter "params"

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpClient;->mHttpsPort:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    const/16 v0, 0x1bb

    iput v0, p0, Lcom/motorola/android/locationproxy/SuplHttpClient;->mHttpsPort:I

    return-void
.end method


# virtual methods
.method protected createClientConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 11

    .prologue
    new-instance v6, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v6}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .local v6, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v9

    const/16 v10, 0x50

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    new-instance v7, Lorg/apache/http/conn/scheme/Scheme;

    const-string v8, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v9

    iget v10, p0, Lcom/motorola/android/locationproxy/SuplHttpClient;->mHttpsPort:I

    invoke-direct {v7, v8, v9, v10}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v6, v7}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    const/4 v2, 0x0

    .local v2, connManager:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v5

    .local v5, params:Lorg/apache/http/params/HttpParams;
    const/4 v4, 0x0

    .local v4, factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    const-string v7, "http.connection-manager.factory-object"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;

    .restart local v4       #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    if-nez v4, :cond_0

    const-string v7, "http.connection-manager.factory-class-name"

    invoke-interface {v5, v7}, Lorg/apache/http/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, className:Ljava/lang/String;
    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .local v1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    check-cast v4, Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v0           #className:Ljava/lang/String;
    .end local v1           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v4, v5, v6}, Lorg/apache/http/conn/ClientConnectionManagerFactory;->newInstance(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v2

    :goto_0
    return-object v2

    .end local v4           #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    .restart local v0       #className:Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v3, v7

    .local v3, ex:Ljava/lang/ClassNotFoundException;
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid class name: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v7

    move-object v3, v7

    .local v3, ex:Ljava/lang/IllegalAccessException;
    new-instance v7, Ljava/lang/IllegalAccessError;

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v3           #ex:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v7

    move-object v3, v7

    .local v3, ex:Ljava/lang/InstantiationException;
    new-instance v7, Ljava/lang/InstantiationError;

    invoke-virtual {v3}, Ljava/lang/InstantiationException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/InstantiationError;-><init>(Ljava/lang/String;)V

    throw v7

    .end local v0           #className:Ljava/lang/String;
    .end local v3           #ex:Ljava/lang/InstantiationException;
    .restart local v4       #factory:Lorg/apache/http/conn/ClientConnectionManagerFactory;
    :cond_1
    new-instance v2, Lorg/apache/http/impl/conn/SingleClientConnManager;

    .end local v2           #connManager:Lorg/apache/http/conn/ClientConnectionManager;
    invoke-virtual {p0}, Lcom/motorola/android/locationproxy/SuplHttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v7

    invoke-direct {v2, v7, v6}, Lorg/apache/http/impl/conn/SingleClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .restart local v2       #connManager:Lorg/apache/http/conn/ClientConnectionManager;
    goto :goto_0
.end method

.method public setHttpsPort(I)V
    .locals 0
    .parameter "port"

    .prologue
    iput p1, p0, Lcom/motorola/android/locationproxy/SuplHttpClient;->mHttpsPort:I

    return-void
.end method
