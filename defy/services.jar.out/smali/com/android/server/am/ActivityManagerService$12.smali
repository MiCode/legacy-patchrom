.class Lcom/android/server/am/ActivityManagerService$12;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/ProcessRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$12;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-eq v0, v1, :cond_1

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setAdj:I

    if-le v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-eq v0, v1, :cond_3

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-le v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->keeping:Z

    iget-boolean v1, p2, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-eq v0, v1, :cond_5

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0

    :cond_5
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-eq v0, v1, :cond_7

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-le v0, v1, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v3

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1
    check-cast p2, Lcom/android/server/am/ProcessRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/ActivityManagerService$12;->compare(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    return v0
.end method
