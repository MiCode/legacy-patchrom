.class public Landroid/provider/BTMapBrowseUtils$MessageListingParams;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/BTMapBrowseUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MessageListingParams"
.end annotation


# instance fields
.field private filterMessageType:B

.field private filterOriginator:Ljava/lang/String;

.field private filterPeriodBegin:Ljava/lang/String;

.field private filterPeriodEnd:Ljava/lang/String;

.field private filterPriority:B

.field private filterReadStatus:B

.field private filterRecipient:Ljava/lang/String;

.field private listStartOffset:S

.field private maxListCount:S

.field private parameterMask:S

.field private subjectLength:B

.field final synthetic this$0:Landroid/provider/BTMapBrowseUtils;


# direct methods
.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7fff

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterMessageType:B

    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    iput-byte v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    iput-short v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    const/4 v0, -0x1

    iput-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterOriginator:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterRecipient:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    iput-object v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/provider/BTMapBrowseUtils;BBBBSSLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "priority"
    .parameter "readStatus"
    .parameter "messageType"
    .parameter "subject"
    .parameter "parameter_mask"
    .parameter "listStart"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "recipient"
    .parameter "originator"

    .prologue
    iput-object p1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->this$0:Landroid/provider/BTMapBrowseUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x7fff

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    const/4 v0, 0x0

    iput-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    const-string v0, "BTMapBrowseUtils"

    const-string v1, "MessageListingParams "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-byte p2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    iput-byte p3, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    iput-byte p4, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterMessageType:B

    iput-byte p5, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    iput-short p6, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    iput-short p7, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    iput-object p8, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    iput-object p9, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    iput-object p10, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterRecipient:Ljava/lang/String;

    iput-object p11, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterOriginator:Ljava/lang/String;

    return-void
.end method

.method private getLongFromDateString(Ljava/lang/String;)J
    .locals 9
    .parameter "date"

    .prologue
    const/4 v0, 0x0

    .local v0, cal:Ljava/util/GregorianCalendar;
    const/4 v7, 0x0

    const/4 v8, 0x3

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, year:I
    const/4 v7, 0x4

    const/4 v8, 0x5

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, month:I
    const/4 v7, 0x6

    const/4 v8, 0x7

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, day:I
    const/16 v7, 0x9

    const/16 v8, 0xa

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .local v4, hour:I
    const/16 v7, 0xb

    const/16 v8, 0xc

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, minute:I
    const/16 v7, 0xd

    const/16 v8, 0xe

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .local v6, second:I
    new-instance v0, Ljava/util/GregorianCalendar;

    .end local v0           #cal:Ljava/util/GregorianCalendar;
    invoke-direct/range {v0 .. v6}, Ljava/util/GregorianCalendar;-><init>(IIIIII)V

    .restart local v0       #cal:Ljava/util/GregorianCalendar;
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v7

    return-wide v7
.end method


# virtual methods
.method public getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "type"

    .prologue
    const-string v1, "priority"

    .local v1, priority:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, normal_priority:I
    const-string v2, "MMS"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "pri"

    const/16 v0, 0x81

    :cond_0
    :goto_0
    iget-byte v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPriority:B

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_1
    const-string v2, "EMAIL"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " > "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilterForReadStatus()Ljava/lang/String;
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "read = 0"

    goto :goto_0

    :pswitch_1
    const-string v0, "read = 1"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "date"

    .prologue
    const/16 v3, 0xf

    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, filterPeriod:Ljava/lang/String;
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    const-string v0, "("

    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getLongFromDateString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodBegin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterPeriodEnd:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getLongFromDateString(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_5
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-object v1, v0

    goto/16 :goto_0
.end method

.method public getListStartOffset()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->listStartOffset:S

    return v0
.end method

.method public getMaxListCount()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->maxListCount:S

    return v0
.end method

.method public getSubjectLength()B
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->subjectLength:B

    return v0
.end method

.method public isFieldRequired(B)Z
    .locals 3
    .parameter "fieldId"

    .prologue
    const/4 v2, 0x1

    iget-short v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->parameterMask:S

    shl-int v1, v2, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readStatusFilter()I
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->filterReadStatus:B

    return v0
.end method
