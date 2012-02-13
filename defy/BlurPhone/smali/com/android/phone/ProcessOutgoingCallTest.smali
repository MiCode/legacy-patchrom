.class public Lcom/android/phone/ProcessOutgoingCallTest;
.super Landroid/content/BroadcastReceiver;
.source "ProcessOutgoingCallTest.java"


# static fields
.field private static final AREACODE:Ljava/lang/String; = "617"

.field private static final BLOCK_555:Z = true

.field private static final LOGV:Z = false

.field private static final POUND_POUND_SEARCH:Z = true

.field private static final REDIRECT_411_TO_GOOG411:Z = true

.field private static final SEVEN_DIGIT_DIALING:Z = true

.field private static final TAG:Ljava/lang/String; = "ProcessOutCallTest"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x7

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 47
    const-string v4, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, number:Ljava/lang/String;
    const-string v4, "411"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    const-string v4, "18004664411"

    invoke-virtual {p0, v4}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 55
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 56
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "617"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 60
    :cond_1
    const-string v4, "##"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEARCH"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v2, newIntent:Landroid/content/Intent;
    const-string v4, "query"

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {p0, v7}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 72
    .end local v2           #newIntent:Landroid/content/Intent;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 73
    .local v1, length:I
    if-lt v1, v6, :cond_3

    .line 74
    sub-int v4, v1, v6

    const/4 v5, 0x4

    sub-int v5, v1, v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, exchange:Ljava/lang/String;
    const-string v4, "ProcessOutCallTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exchange = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const-string v4, "555"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 77
    invoke-virtual {p0, v7}, Lcom/android/phone/ProcessOutgoingCallTest;->setResultData(Ljava/lang/String;)V

    .line 81
    .end local v0           #exchange:Ljava/lang/String;
    .end local v1           #length:I
    .end local v3           #number:Ljava/lang/String;
    :cond_3
    return-void
.end method
