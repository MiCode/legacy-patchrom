.class public Lcom/android/internal/os/HandlerCaller;
.super Ljava/lang/Object;
.source "HandlerCaller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/HandlerCaller$Callback;,
        Lcom/android/internal/os/HandlerCaller$MyHandler;,
        Lcom/android/internal/os/HandlerCaller$SomeArgs;
    }
.end annotation


# static fields
.field static final ARGS_POOL_MAX_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "HandlerCaller"


# instance fields
.field mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

.field mArgsPoolSize:I

.field final mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

.field public final mContext:Landroid/content/Context;

.field final mH:Landroid/os/Handler;

.field final mMainLooper:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/os/HandlerCaller$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "looper"
    .parameter "callback"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 79
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 80
    iput-object p3, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    .line 72
    new-instance v0, Lcom/android/internal/os/HandlerCaller$MyHandler;

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/os/HandlerCaller$MyHandler;-><init>(Lcom/android/internal/os/HandlerCaller;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    .line 73
    iput-object p2, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    .line 74
    return-void
.end method


# virtual methods
.method public executeOrSendMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mMainLooper:Landroid/os/Looper;

    if-ne v0, v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mCallback:Lcom/android/internal/os/HandlerCaller$Callback;

    invoke-interface {v0, p1}, Lcom/android/internal/os/HandlerCaller$Callback;->executeMessage(Landroid/os/Message;)V

    .line 112
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public hasMessages(I)Z
    .locals 1
    .parameter "what"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    monitor-enter v1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 86
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    if-eqz v0, :cond_0

    .line 87
    iget-object v2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    iput-object v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 88
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 89
    iget v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    .line 90
    monitor-exit v1

    move-object v1, v0

    .line 93
    :goto_0
    return-object v1

    .line 92
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    new-instance v1, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    invoke-direct {v1}, Lcom/android/internal/os/HandlerCaller$SomeArgs;-><init>()V

    goto :goto_0

    .line 92
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public obtainMessage(I)Landroid/os/Message;
    .locals 1
    .parameter "what"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageBO(IZLjava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 140
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public obtainMessageBOO(IZLjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 4
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v3, 0x0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 145
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 146
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method public obtainMessageI(II)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageII(III)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIIII(IIIII)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 213
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 214
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 215
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 216
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 217
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIII(IIIIIII)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"
    .parameter "arg6"

    .prologue
    const/4 v2, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 223
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 224
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 225
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 226
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 227
    iput p6, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi5:I

    .line 228
    iput p7, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi6:I

    .line 229
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIIIO(IIIIILjava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"
    .parameter "arg5"

    .prologue
    const/4 v2, 0x0

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 235
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p6, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 236
    iput p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi1:I

    .line 237
    iput p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi2:I

    .line 238
    iput p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi3:I

    .line 239
    iput p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->argi4:I

    .line 240
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIIO(IIILjava/lang/Object;)Landroid/os/Message;
    .locals 1
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIIOO(IIILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 173
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 174
    iput-object p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 175
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageIOO(IILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 180
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 181
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 182
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;
    .locals 2
    .parameter "what"
    .parameter "arg1"

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    const/4 v2, 0x0

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 187
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 188
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 189
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    const/4 v2, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 194
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 195
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 196
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    .line 197
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .parameter "arg4"

    .prologue
    const/4 v2, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/os/HandlerCaller;->obtainArgs()Lcom/android/internal/os/HandlerCaller$SomeArgs;

    move-result-object v0

    .line 203
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iput-object p2, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .line 204
    iput-object p3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .line 205
    iput-object p4, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    .line 206
    iput-object p5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    .line 207
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v1, p1, v2, v2, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    return-object v1
.end method

.method public recycleArgs(Lcom/android/internal/os/HandlerCaller$SomeArgs;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    monitor-enter v0

    .line 98
    :try_start_0
    iget v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    iput-object v1, p1, Lcom/android/internal/os/HandlerCaller$SomeArgs;->next:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 100
    iput-object p1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPool:Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 101
    iget v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/os/HandlerCaller;->mArgsPoolSize:I

    .line 103
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    return-void
.end method

.method public removeMessages(ILjava/lang/Object;)V
    .locals 1
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 129
    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/internal/os/HandlerCaller;->mH:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
