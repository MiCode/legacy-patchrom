.class Landroid/content/IntentSender$FinishedDispatcher;
.super Landroid/content/IIntentReceiver$Stub;
.source "IntentSender.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/IntentSender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FinishedDispatcher"
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private final mIntentSender:Landroid/content/IntentSender;

.field private mResultCode:I

.field private mResultData:Ljava/lang/String;

.field private mResultExtras:Landroid/os/Bundle;

.field private final mWho:Landroid/content/IntentSender$OnFinished;


# direct methods
.method constructor <init>(Landroid/content/IntentSender;Landroid/content/IntentSender$OnFinished;Landroid/os/Handler;)V
    .locals 0
    .parameter "pi"
    .parameter "who"
    .parameter "handler"

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    .line 112
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    .line 113
    iput-object p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    .line 114
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    .line 115
    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZ)V
    .locals 1
    .parameter "intent"
    .parameter "resultCode"
    .parameter "data"
    .parameter "extras"
    .parameter "serialized"
    .parameter "sticky"

    .prologue
    .line 118
    iput-object p1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    .line 119
    iput p2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    .line 120
    iput-object p3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    .line 121
    iput-object p4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    .line 122
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/content/IntentSender$FinishedDispatcher;->run()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 129
    iget-object v0, p0, Landroid/content/IntentSender$FinishedDispatcher;->mWho:Landroid/content/IntentSender$OnFinished;

    iget-object v1, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntentSender:Landroid/content/IntentSender;

    iget-object v2, p0, Landroid/content/IntentSender$FinishedDispatcher;->mIntent:Landroid/content/Intent;

    iget v3, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultCode:I

    iget-object v4, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultData:Ljava/lang/String;

    iget-object v5, p0, Landroid/content/IntentSender$FinishedDispatcher;->mResultExtras:Landroid/os/Bundle;

    invoke-interface/range {v0 .. v5}, Landroid/content/IntentSender$OnFinished;->onSendFinished(Landroid/content/IntentSender;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 131
    return-void
.end method
