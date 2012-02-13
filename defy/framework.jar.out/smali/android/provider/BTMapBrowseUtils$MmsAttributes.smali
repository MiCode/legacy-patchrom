.class public Landroid/provider/BTMapBrowseUtils$MmsAttributes;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MmsAttributes"
.end annotation


# instance fields
.field body:Ljava/lang/String;

.field box:Ljava/lang/String;

.field date:J

.field msg_type:I

.field priority:I

.field read_status:I

.field subject:Ljava/lang/String;

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;

.field to:[Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/provider/BTMapBrowseUtils;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter "c_to"
    .parameter "c_subject"
    .parameter "c_body"
    .parameter "c_msg_type"
    .parameter "c_priority"
    .parameter "c_read_status"
    .parameter "c_date"
    .parameter "c_box"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    iput v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    iput-object v2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    iput-object p2, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    iput p6, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    iput-object p3, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    iput p5, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    iput p7, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    iput-wide p8, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    iput-object p10, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->body:Ljava/lang/String;

    return-object v0
.end method

.method public getBox()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->box:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->date:J

    return-wide v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->msg_type:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->priority:I

    return v0
.end method

.method public getReadStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->read_status:I

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->subject:Ljava/lang/String;

    return-object v0
.end method

.method public getTo()[Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/BTMapBrowseUtils$MmsAttributes;->to:[Ljava/lang/String;

    return-object v0
.end method
