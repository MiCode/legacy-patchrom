.class Lcom/android/internal/util/WithFramework;
.super Ljava/lang/Object;
.source "WithFramework.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 8
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 31
    array-length v3, p0

    if-nez v3, :cond_0

    .line 32
    invoke-static {}, Lcom/android/internal/util/WithFramework;->printUsage()V

    .line 47
    :goto_0
    return-void

    .line 36
    :cond_0
    aget-object v3, p0, v6

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 38
    .local v0, mainClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string v3, "android_runtime"

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/android/internal/util/WithFramework;->registerNatives()I

    move-result v3

    if-gez v3, :cond_1

    .line 40
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Error registering natives."

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 43
    :cond_1
    array-length v3, p0

    sub-int/2addr v3, v7

    new-array v2, v3, [Ljava/lang/String;

    .line 44
    .local v2, newArgs:[Ljava/lang/String;
    array-length v3, v2

    invoke-static {p0, v7, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 45
    const-string/jumbo v3, "main"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, [Ljava/lang/String;

    aput-object v5, v4, v6

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 46
    .local v1, mainMethod:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static printUsage()V
    .locals 3

    .prologue
    .line 50
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usage: dalvikvm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/android/internal/util/WithFramework;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [main class] [args]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method static native registerNatives()I
.end method
