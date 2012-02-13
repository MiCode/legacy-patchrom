.class public Landroid/provider/BTMapBrowseUtils$Message;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field private datetime:J

.field private message:[Ljava/lang/String;

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;


# direct methods
.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$Message;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 8
    .parameter "obj"

    .prologue
    move-object v0, p1

    check-cast v0, Landroid/provider/BTMapBrowseUtils$Message;

    move-object v3, v0

    .local v3, tmp:Landroid/provider/BTMapBrowseUtils$Message;
    invoke-virtual {v3}, Landroid/provider/BTMapBrowseUtils$Message;->getDateTime()J

    move-result-wide v1

    .local v1, oDateTime:J
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "compare to date = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v4, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    cmp-long v4, v4, v1

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    iget-wide v4, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getDateTime()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    return-wide v0
.end method

.method public getField(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setDateTime(J)V
    .locals 0
    .parameter "value"

    .prologue
    iput-wide p1, p0, Landroid/provider/BTMapBrowseUtils$Message;->datetime:J

    return-void
.end method

.method public setField(ILjava/lang/String;)V
    .locals 2
    .parameter "position"
    .parameter "value"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$Message;->message:[Ljava/lang/String;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v0, p1

    :cond_0
    return-void
.end method
