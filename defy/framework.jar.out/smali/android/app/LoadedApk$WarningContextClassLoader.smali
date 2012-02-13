.class Landroid/app/LoadedApk$WarningContextClassLoader;
.super Ljava/lang/ClassLoader;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WarningContextClassLoader"
.end annotation


# static fields
.field private static warned:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/ClassLoader;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/LoadedApk$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;-><init>()V

    return-void
.end method

.method private warn(Ljava/lang/String;)V
    .locals 3
    .parameter "methodName"

    .prologue
    sget-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Landroid/app/LoadedApk$WarningContextClassLoader;->warned:Z

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ClassLoader."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "The class loader returned by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.getContextClassLoader() may fail for processes "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "that host multiple applications. You should explicitly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "specify a context class loader. For example: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Thread.setContextClassLoader(getClass().getClassLoader());"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearAssertionStatus()V
    .locals 1

    .prologue
    const-string v0, "clearAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->clearAssertionStatus()V

    return-void
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .parameter "resName"

    .prologue
    const-string v0, "getResource"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .parameter "resName"

    .prologue
    const-string v0, "getResourceAsStream"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
    .parameter "resName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "getResources"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const-string v0, "loadClass"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setClassAssertionStatus(Ljava/lang/String;Z)V
    .locals 1
    .parameter "cname"
    .parameter "enable"

    .prologue
    const-string v0, "setClassAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setClassAssertionStatus(Ljava/lang/String;Z)V

    return-void
.end method

.method public setDefaultAssertionStatus(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    const-string v0, "setDefaultAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->setDefaultAssertionStatus(Z)V

    return-void
.end method

.method public setPackageAssertionStatus(Ljava/lang/String;Z)V
    .locals 1
    .parameter "pname"
    .parameter "enable"

    .prologue
    const-string v0, "setPackageAssertionStatus"

    invoke-direct {p0, v0}, Landroid/app/LoadedApk$WarningContextClassLoader;->warn(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/LoadedApk$WarningContextClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/ClassLoader;->setPackageAssertionStatus(Ljava/lang/String;Z)V

    return-void
.end method
