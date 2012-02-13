.class public abstract Lcom/motorola/blur/authenticators/BlurAuthenticator;
.super Ljava/lang/Object;
.source "BlurAuthenticator.java"


# static fields
.field public static final AUTHENTICATION_FAILURE:I = 0x2

.field private static final AUTH_HANDLER:Ljava/lang/String; = "AuthHandler"

.field public static final NEEDS_USER_INTERACTION:I = 0x5

.field public static final PROGRESS_MESSAGE:I = 0x3

.field public static final PROGRESS_SETUP:I = 0x6

.field public static final SUCCESSFUL_FINISH:I = 0x4

.field protected static final TAG:Ljava/lang/String; = "BlurAuthenticator"

.field public static final VALIDATION_FAILURE:I = 0x1


# instance fields
.field protected mBackHandler:Landroid/os/Handler;

.field protected mCallbackUrl:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/AlertDialog;

.field private mErrorBuilder:Ljava/lang/StringBuilder;

.field protected mIntent:Landroid/content/Intent;

.field protected mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

.field private mListenerHandler:Landroid/os/Handler;

.field protected mPendingRequest:Z

.field private mThread:Landroid/os/HandlerThread;

.field protected mUrl:Ljava/lang/String;

.field protected mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 2
    .parameter "context"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    .line 32
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    .line 33
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mPendingRequest:Z

    .line 35
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 36
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    .line 37
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    .line 38
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    .line 40
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mIntent:Landroid/content/Intent;

    .line 41
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUrl:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mCallbackUrl:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p2}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setUpListenerHandler(Lcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJLcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 2
    .parameter "context"
    .parameter "username"
    .parameter "password"
    .parameter "accountId"
    .parameter "providerId"
    .parameter "listener"

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    .line 32
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    .line 33
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mPendingRequest:Z

    .line 35
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 36
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    .line 37
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    .line 38
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    .line 39
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    .line 40
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mIntent:Landroid/content/Intent;

    .line 41
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUrl:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mCallbackUrl:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Lcom/motorola/blur/authenticators/UserInfo;

    invoke-direct {v0}, Lcom/motorola/blur/authenticators/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    .line 52
    invoke-virtual {p0, p2, p3}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->initVariables(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0, p4, p5}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setAccountId(J)V

    .line 54
    invoke-virtual {p0, p6, p7}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setProviderId(J)V

    .line 55
    invoke-direct {p0, p8}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setUpListenerHandler(Lcom/motorola/blur/authenticators/BlurAuthenticationListener;)V

    .line 56
    return-void
.end method

.method private cleanUpResources()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 372
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->unregisterReceivers()V

    .line 374
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 375
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    .line 376
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    .line 378
    :cond_0
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mDialog:Landroid/app/AlertDialog;

    .line 379
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->resetError()V

    .line 380
    return-void
.end method

.method private createSimpleAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;
    .locals 6
    .parameter "message"

    .prologue
    .line 168
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    .line 169
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 170
    .local v2, res:Landroid/content/res/Resources;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c008f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c007f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 175
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private static final getMessage(Landroid/os/Handler;)Landroid/os/Message;
    .locals 1
    .parameter "handler"

    .prologue
    .line 257
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method

.method private handleForegroundIssues(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 155
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mDialog:Landroid/app/AlertDialog;

    invoke-interface {v1, v2}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onFinished(Landroid/app/AlertDialog;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mIntent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mIntent:Landroid/content/Intent;

    invoke-interface {v1, v2}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onCaptchaRecieved(Landroid/content/Intent;)V

    goto :goto_0

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    .line 160
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->createSimpleAlertDialog(Ljava/lang/String;)Landroid/app/AlertDialog;

    move-result-object v0

    .line 161
    .local v0, dialog:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    invoke-interface {v1, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onFinished(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 162
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_3
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 163
    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    iget-object v2, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mCallbackUrl:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/motorola/blur/authenticators/BlurAuthenticationListener;->onUrlRecieved(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initBackgroundThread()V
    .locals 4

    .prologue
    .line 179
    iget-object v3, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    if-nez v3, :cond_0

    .line 180
    new-instance v0, Landroid/os/HandlerThread;

    const-string v3, "AuthHandler"

    invoke-direct {v0, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, hThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 182
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .line 183
    .local v2, looper:Landroid/os/Looper;
    new-instance v1, Lcom/motorola/blur/authenticators/BlurAuthenticator$2;

    invoke-direct {v1, p0, v2}, Lcom/motorola/blur/authenticators/BlurAuthenticator$2;-><init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;Landroid/os/Looper;)V

    .line 189
    .local v1, handler:Landroid/os/Handler;
    iput-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    .line 190
    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mThread:Landroid/os/HandlerThread;

    .line 192
    .end local v0           #hThread:Landroid/os/HandlerThread;
    .end local v1           #handler:Landroid/os/Handler;
    .end local v2           #looper:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method private static sendMessage(Landroid/os/Handler;I)Z
    .locals 1
    .parameter "handler"
    .parameter "what"

    .prologue
    .line 261
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method private static sendMessage(Landroid/os/Handler;Landroid/os/Message;)Z
    .locals 1
    .parameter "handler"
    .parameter "msg"

    .prologue
    .line 265
    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 267
    const/4 v0, 0x1

    .line 269
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setUpListenerHandler(Lcom/motorola/blur/authenticators/BlurAuthenticationListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListener:Lcom/motorola/blur/authenticators/BlurAuthenticationListener;

    .line 90
    new-instance v0, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;

    invoke-direct {v0, p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator$1;-><init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;)V

    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    .line 121
    return-void
.end method


# virtual methods
.method protected final appendError(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->appendError(Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method protected final appendError(Ljava/lang/String;)V
    .locals 2
    .parameter "error"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    .line 287
    .local v0, errorBuilder:Ljava/lang/StringBuilder;
    if-nez v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #errorBuilder:Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .restart local v0       #errorBuilder:Ljava/lang/StringBuilder;
    :cond_0
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iput-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    .line 294
    return-void

    .line 289
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 290
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method protected abstract authenticate()V
.end method

.method public cleanUp()V
    .locals 0

    .prologue
    .line 360
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->cleanUpResources()V

    .line 361
    return-void
.end method

.method public final getAccountId()J
    .locals 2

    .prologue
    .line 309
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-wide v0, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    return-wide v0
.end method

.method protected final getBackgroundMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->getMessage(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method protected final getForegroundMessage()Landroid/os/Message;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->getMessage(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public getProgressString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    const v1, 0x7f0c00ab

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleAuthenticationFailure(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 128
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleForegroundIssues(Landroid/os/Message;)V

    .line 129
    return-void
.end method

.method protected handleNeedingUserInteraction(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleForegroundIssues(Landroid/os/Message;)V

    .line 145
    return-void
.end method

.method protected handleValidationFailure(Landroid/os/Message;)V
    .locals 0
    .parameter "msg"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->handleForegroundIssues(Landroid/os/Message;)V

    .line 137
    return-void
.end method

.method protected initVariables(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 63
    invoke-virtual {p0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setUsername(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0, p2}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->setPassword(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method protected abstract processBackgroundMessage(Landroid/os/Message;)V
.end method

.method protected abstract registerReceivers()V
.end method

.method protected final resetError()V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mErrorBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 277
    :cond_0
    return-void
.end method

.method protected final runInBackground(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "runnable"

    .prologue
    .line 214
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    return-void
.end method

.method protected final sendBackgroundMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 226
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendMessage(Landroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method protected final sendBackgroundMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 222
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mBackHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method protected final sendForegroundMessage(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendMessage(Landroid/os/Handler;I)Z

    move-result v0

    return v0
.end method

.method protected final sendForegroundMessage(Landroid/os/Message;)Z
    .locals 1
    .parameter "msg"

    .prologue
    .line 234
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mListenerHandler:Landroid/os/Handler;

    invoke-static {v0, p1}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendMessage(Landroid/os/Handler;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public setAccountId(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-wide p1, v0, Lcom/motorola/blur/authenticators/UserInfo;->accountId:J

    .line 77
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .parameter "password"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-object p1, v0, Lcom/motorola/blur/authenticators/UserInfo;->password:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setProviderId(J)V
    .locals 1
    .parameter "providerId"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-wide p1, v0, Lcom/motorola/blur/authenticators/UserInfo;->providerId:J

    .line 81
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .parameter "username"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iput-object p1, v0, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    .line 69
    return-void
.end method

.method protected startAuth()V
    .locals 1

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendForegroundMessage(I)Z

    .line 250
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->authenticate()V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendForegroundMessage(I)Z

    goto :goto_0
.end method

.method public final startAuthentication()V
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->sendForegroundMessage(I)Z

    .line 200
    invoke-direct {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->initBackgroundThread()V

    .line 201
    new-instance v0, Lcom/motorola/blur/authenticators/BlurAuthenticator$3;

    invoke-direct {v0, p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator$3;-><init>(Lcom/motorola/blur/authenticators/BlurAuthenticator;)V

    invoke-virtual {p0, v0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->runInBackground(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method protected abstract unregisterReceivers()V
.end method

.method public updateAuthenticator(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "username"
    .parameter "password"

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->initVariables(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method protected validate()Z
    .locals 1

    .prologue
    .line 317
    invoke-virtual {p0}, Lcom/motorola/blur/authenticators/BlurAuthenticator;->resetError()V

    .line 318
    const/4 v0, 0x1

    return v0
.end method

.method protected verifyBlurAccount()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/motorola/blur/authenticators/BlurAuthenticator;->mUserInfo:Lcom/motorola/blur/authenticators/UserInfo;

    iget-object v1, v1, Lcom/motorola/blur/authenticators/UserInfo;->username:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/motorola/blur/settings/BlurAcntVerificationUtility;->verifyBlurEmailWithNewAccount(Landroid/content/Context;Ljava/lang/String;)Z

    .line 353
    return-void
.end method
