.class public Lcom/android/internal/logging/AndroidConfig;
.super Ljava/lang/Object;
.source "AndroidConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v2, ""

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    .local v1, rootLogger:Ljava/util/logging/Logger;
    new-instance v2, Lcom/android/internal/logging/AndroidHandler;

    invoke-direct {v2}, Lcom/android/internal/logging/AndroidHandler;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->addHandler(Ljava/util/logging/Handler;)V

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V

    const-string v2, "org.apache"

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->setLevel(Ljava/util/logging/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #rootLogger:Ljava/util/logging/Logger;
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
