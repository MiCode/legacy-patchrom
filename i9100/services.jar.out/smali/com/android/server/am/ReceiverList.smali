.class Lcom/android/server/am/ReceiverList;
.super Ljava/util/ArrayList;
.source "ReceiverList.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/server/am/BroadcastFilter;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field public final app:Lcom/android/server/am/ProcessRecord;

.field curBroadcast:Lcom/android/server/am/BroadcastRecord;

.field linkedToDeath:Z

.field final owner:Lcom/android/server/am/ActivityManagerService;

.field public final pid:I

.field public final receiver:Landroid/content/IIntentReceiver;

.field stringName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;IILandroid/content/IIntentReceiver;)V
    .locals 1
    .parameter "_owner"
    .parameter "_app"
    .parameter "_pid"
    .parameter "_uid"
    .parameter "_receiver"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 49
    iput-object p1, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    .line 50
    iput-object p5, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    .line 51
    iput-object p2, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    .line 52
    iput p3, p0, Lcom/android/server/am/ReceiverList;->pid:I

    .line 53
    iput p4, p0, Lcom/android/server/am/ReceiverList;->uid:I

    .line 54
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .prologue
    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    .line 66
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->owner:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterReceiver(Landroid/content/IIntentReceiver;)V

    .line 67
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 7
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 79
    new-instance v4, Landroid/util/PrintWriterPrinter;

    invoke-direct {v4, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 80
    .local v4, pr:Landroid/util/Printer;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 81
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 82
    .local v3, p2:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/am/ReceiverList;->size()I

    move-result v0

    .line 83
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/server/am/ReceiverList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BroadcastFilter;

    .line 85
    .local v1, bf:Lcom/android/server/am/BroadcastFilter;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Filter #"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 86
    const-string v5, ": BroadcastFilter{"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 87
    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 88
    const/16 v5, 0x7d

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(C)V

    .line 89
    invoke-virtual {v1, p1, v4, v3}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 91
    .end local v1           #bf:Lcom/android/server/am/BroadcastFilter;
    :cond_0
    return-void
.end method

.method dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "app="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 71
    const-string v0, " pid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 72
    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    if-eqz v0, :cond_1

    .line 73
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curBroadcast="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ReceiverList;->curBroadcast:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 74
    const-string v0, " linkedToDeath="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ReceiverList;->linkedToDeath:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 76
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 58
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 61
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 94
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    .line 109
    :goto_0
    return-object v1

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 98
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ReceiverList{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 101
    iget v1, p0, Lcom/android/server/am/ReceiverList;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 103
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 105
    iget v1, p0, Lcom/android/server/am/ReceiverList;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 106
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    instance-of v1, v1, Landroid/os/Binder;

    if-eqz v1, :cond_2

    const-string v1, " local:"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    iget-object v1, p0, Lcom/android/server/am/ReceiverList;->receiver:Landroid/content/IIntentReceiver;

    invoke-interface {v1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ReceiverList;->stringName:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_1
    const-string v1, "(unknown name)"

    goto :goto_1

    .line 106
    :cond_2
    const-string v1, " remote:"

    goto :goto_2
.end method
