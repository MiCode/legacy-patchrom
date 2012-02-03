.class public Lcom/android/phone/CallLogAsync;
.super Ljava/lang/Object;
.source "CallLogAsync.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallLogAsync$1;,
        Lcom/android/phone/CallLogAsync$AddCallTask;,
        Lcom/android/phone/CallLogAsync$AddCallArgs;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    return-void
.end method

.method private assertUiThread()V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not on the UI thread!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :cond_0
    return-void
.end method


# virtual methods
.method public addCall(Lcom/android/phone/CallLogAsync$AddCallArgs;)Landroid/os/AsyncTask;
    .locals 3
    .parameter "args"

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/android/phone/CallLogAsync;->assertUiThread()V

    .line 156
    new-instance v0, Lcom/android/phone/CallLogAsync$AddCallTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;-><init>(Lcom/android/phone/CallLogAsync;Lcom/android/phone/CallLogAsync$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/phone/CallLogAsync$AddCallArgs;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/CallLogAsync$AddCallTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    return-object v0
.end method
