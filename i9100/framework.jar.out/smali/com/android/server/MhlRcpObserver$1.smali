.class Lcom/android/server/MhlRcpObserver$1;
.super Landroid/os/UEventObserver;
.source "MhlRcpObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MhlRcpObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MhlRcpObserver;


# direct methods
.method constructor <init>(Lcom/android/server/MhlRcpObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/server/MhlRcpObserver$1;->this$0:Lcom/android/server/MhlRcpObserver;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    const-string v4, "MhlRcpObserver"

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MhlRcpObserver$1;->this$0:Lcom/android/server/MhlRcpObserver;

    #calls: Lcom/android/server/MhlRcpObserver;->update(Landroid/os/UEventObserver$UEvent;)V
    invoke-static {v1, p1}, Lcom/android/server/MhlRcpObserver;->access$000(Lcom/android/server/MhlRcpObserver;Landroid/os/UEventObserver$UEvent;)V

    .line 153
    const-string v1, "MhlRcpObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MUEVENTOBSERVER.ONUEVENT: Udated is OK "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :goto_0
    return-void

    .line 154
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 155
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v1, "MhlRcpObserver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MUEVENTOBSERVER.ONUEVENT: Can not parse switch state form event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
