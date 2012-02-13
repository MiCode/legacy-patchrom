.class Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "GsmMmiCode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmMmiCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/gsm/GsmMmiCode;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 5
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v4, 0x1

    const-string v3, "GSM"

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poundString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    const-string v1, "number"

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, numberInList:Ljava/lang/String;
    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numberInList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "GSM"

    const-string v1, "poundString is null"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .end local v0           #numberInList:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-boolean v1, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    if-eqz v1, :cond_6

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v4, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .end local p2
    :cond_1
    :goto_1
    return-void

    .restart local v0       #numberInList:Ljava/lang/String;
    .restart local p2
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->poundString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    iput-boolean v4, v1, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mAllowUssdCallFwd:Z

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .end local v0           #numberInList:Ljava/lang/String;
    :cond_4
    const-string v1, "GSM"

    const-string v1, "GsmMmiCode.QueryHandler.onQueryComplete Cursor null/empty ...."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto :goto_1

    .restart local p2
    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmMmiCode$QueryHandler;->this$0:Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->displayFdnBlockError()V

    goto :goto_1
.end method
