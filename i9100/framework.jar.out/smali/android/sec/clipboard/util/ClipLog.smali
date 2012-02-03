.class public Landroid/sec/clipboard/util/ClipLog;
.super Ljava/lang/Object;
.source "ClipLog.java"


# static fields
.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/sec/clipboard/util/ClipLog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 42
    sget-boolean v0, Landroid/sec/clipboard/util/ClipLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 60
    sget-boolean v0, Landroid/sec/clipboard/util/ClipLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 61
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 48
    sget-boolean v0, Landroid/sec/clipboard/util/ClipLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "tag"
    .parameter "str"

    .prologue
    .line 54
    sget-boolean v0, Landroid/sec/clipboard/util/ClipLog;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 55
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method
