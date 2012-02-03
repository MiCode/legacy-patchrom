.class Lcom/android/server/am/BroadcastFilter;
.super Landroid/content/IntentFilter;
.source "BroadcastFilter.java"


# instance fields
.field final receiverList:Lcom/android/server/am/ReceiverList;

.field final requiredPermission:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/IntentFilter;Lcom/android/server/am/ReceiverList;Ljava/lang/String;)V
    .locals 0
    .parameter "_filter"
    .parameter "_receiverList"
    .parameter "_requiredPermission"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    .line 33
    iput-object p2, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    .line 34
    iput-object p3, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    .line 35
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 38
    new-instance v0, Landroid/util/PrintWriterPrinter;

    invoke-direct {v0, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/BroadcastFilter;->dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ReceiverList;->dumpLocal(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public dumpBrief(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "requiredPermission="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/BroadcastFilter;->requiredPermission:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method

.method public dumpInReceiverList(Ljava/io/PrintWriter;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 0
    .parameter "pw"
    .parameter "pr"
    .parameter "prefix"

    .prologue
    .line 47
    invoke-super {p0, p2, p3}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0, p1, p3}, Lcom/android/server/am/BroadcastFilter;->dumpBroadcastFilterState(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "BroadcastFilter{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    iget-object v1, p0, Lcom/android/server/am/BroadcastFilter;->receiverList:Lcom/android/server/am/ReceiverList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
